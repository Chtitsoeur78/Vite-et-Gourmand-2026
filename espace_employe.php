<?php
require_once 'connexion.php';
$sql = "
    SELECT 
        commandes.id_commande,
        commandes.date_livraison,
        commandes.id_commune,
        commandes.nom_menu,
        commandes.nb_personnes,
        commandes.prix_total,
        statut_commande.libelle_statut AS statut_commande,
        utilisateurs.nom AS nom_client
    FROM commandes
    
    INNER JOIN utilisateurs 
        ON commandes.id_utilisateur = utilisateurs.id_utilisateur
    INNER JOIN commune_gironde
        ON commandes.id_commune = commune_gironde.id_commune
    INNER JOIN statut_commande
        ON commandes.id_statut_commande = statut_commande.id_statut_commande
    
    WHERE commandes.id_statut_commande NOT IN ('Terminée', 'Annulée')
    ORDER BY commandes.date_livraison ASC 
   ";

$stmt = $pdo->prepare($sql);
$stmt->execute();
$commandes = $stmt->fetchAll(PDO::FETCH_ASSOC);

$sql_menus = "
    SELECT 
        menus.id_menus,
        menus.titre_menus,
        menus.nb_personnes_minimum,
        menus.prix_par_personne_euros,
        menus.description,
        plat.titre_plat AS nom_plat,
        regime.libelle_regime AS nom_regime
    FROM menus
    INNER JOIN plat
        ON menus.id_plat = plat.id_plat
    INNER JOIN regime
        ON menus.id_regime = regime.id_regime
    ";
$stmt = $pdo->prepare($sql_menus);
$stmt->execute();
$menus = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<!doctype html>
<html lang="fr">
  <head>
    <!-- balises meta indispensables -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta
      name="description"
      content="Vite et Gourmand est une plate-forme de commande de repas utilisable dans la région de Bordeaux."/>
    <!-- liaison avec la feuille de style externe de CSS -->
    <link rel="stylesheet" href="css/styles.css"/>
    <link rel="stylesheet" href="css/espace_employe.css"/>
    <link rel="stylesheet" href="css/menu_burger.css"/>
    <!-- Titre de la Page -->
    <title>Vite et Gourmand - Espace Employé</title>
  </head>
  <body>
 <!-- header : l'en-tête de la page d'accueil -->
    <header class="header_conteneur">
      <section>
      <?php include "menu_burger.php"; ?>
      </section>
      <section>
        <h1>Espace Employé</h1>
      </section>
      <section class="logo">
        <img src="images/logo1.png" alt="Logo de Vite et Gourmand, la plate-forme pour manger vite et bien" >
      </section>
    </header>
    <main>
        <section class="espace_employe">
            <h2>Commandes en cours</h2>
        <section class="commandes_en_cours">
            <table border="1">
            <thead>
                <tr>
                <th>ID</th>
                <th>Client</th>
                <th>Date livraison</th>
                <th>Ville</th>
                <th>Menu</th>
                <th>Personnes</th>
                <th>Prix total</th>
                <th>Statut</th>
                </tr>
            </thead>
            <tbody>
            <?php if (!empty($commandes)): ?>
            <?php foreach($commandes as $commande): ?>
                <tr>
                <td><?= htmlspecialchars($commande["id_commande"] ?? '', ENT_QUOTES, 'UTF-8') ?></td>
                <td><?= htmlspecialchars($commande["nom_client"] ?? "", ENT_QUOTES, 'UTF-8') ?></td>
                <td><?= htmlspecialchars($commande["date_livraison"] ?? "", ENT_QUOTES, 'UTF-8') ?></td>
                <td><?= htmlspecialchars($commande["ville_livraison"] ?? "", ENT_QUOTES, 'UTF-8') ?></td>
                <td><?= htmlspecialchars($commande["nom_menu"] ?? "", ENT_QUOTES, 'UTF-8') ?></td>
                <td><?= htmlspecialchars($commande["nombre_personnes"] ?? "", ENT_QUOTES, 'UTF-8') ?></td>
                <td><?= number_format((float)($commande["prix_total"] ?? 0), 2, ',', ' ') ?> €</td>          
                <td>
        <form method="POST" action="modifier_statut.php">
                <input type="hidden" name="id_commande"
                    value="<?= htmlspecialchars($commande['id_commande'] ?? '', ENT_QUOTES, 'UTF-8') ?>"
                <select name="statut_commande">
                    <option value="En attente d'acceptation"
                <?= $commande['statut_commande'] === "En attente d'acceptation" ? 'selected' : '' ?>>
                En attente d'acceptation
                    </option>
                    <option value="Acceptée"
                <?= $commande['statut_commande'] === 'Acceptée' ? 'selected' : '' ?>>
                Acceptée
                    </option>
                    <option value="En préparation"
                <?= $commande['statut_commande'] === 'En préparation' ? 'selected' : '' ?>>
                En préparation 
                    </option>
                    <option value="En cours de livraison"
                <?= $commande['statut_commande'] === 'En cours de livraison' ? 'selected' : '' ?>>
                En cours de livraison  
                    </option>
                    <option value="Livrée"
                <?= $commande['statut_commande'] === 'Livrée' ? 'selected' : '' ?>>
                Livrée
                    </option>
                    <option value="En attente du retour du matériel"
                <?= $commande['statut_commande'] === 'En attente du retour du matériel' ? 'selected' : '' ?>>
                En attente du retour du matériel
                    </option>
                    <option value="Terminée"
                <?= $commande['statut_commande'] === 'Terminée' ? 'selected' : '' ?>>
                Terminée
                    </option>
                    <option value="Annulée"
                <?= $commande['statut_commande'] === 'Annulée' ? 'selected' : '' ?>>
                Annulée
                    </option>
                </select>
            <button type="submit">Modifier</button>
        </form>
                </td>
                </tr>
            <?php endforeach; ?>
            <?php else: ?>
                <tr>
                <td colspan="8">Aucune commande en cours actuellement.</td>
                </tr>
            <?php endif; ?>
            </tbody>
            </table>
        </section>
        <section>
            <h2>Espace "menus"</h2>
        <section class="menus">
            <table border="1">
            <thead>
                <tr>
                <th>ID</th>
                <th>Titre Menu</th>
                <th>Nb personnes minimum</th>
                <th>Prix par personne en euro</th>
                <th>Nom des plats</th>
                <th>Nom du régime</th>
                <th>Description</th>
                </tr>
            </thead>
            <tbody>
            <?php foreach($menus as $menu): ?>
                <tr>
                <td><?= htmlspecialchars($menu["id_menus"] ?? '', ENT_QUOTES, 'UTF-8') ?></td>
                <td><?= htmlspecialchars($menu["titre_menus"] ?? "", ENT_QUOTES, 'UTF-8') ?></td>
                <td><?= htmlspecialchars($menu["nb_personnes_minimum"] ?? "", ENT_QUOTES, 'UTF-8') ?></td>
                <td><?= htmlspecialchars($menu["prix_par_personne_euros"] ?? "", ENT_QUOTES, 'UTF-8') ?></td>
                <td><?= htmlspecialchars($menu["nom_plat"] ?? "", ENT_QUOTES, 'UTF-8') ?></td>
                <td><?= htmlspecialchars($menu["nom_regime"] ?? "", ENT_QUOTES, 'UTF-8') ?></td>
                <td><?= htmlspecialchars($menu["description"] ?? "", ENT_QUOTES, 'UTF-8') ?></td>
                </tr>
            <?php endforeach; ?>
            </tbody>
            </table>
        </section>
 <h2>ESPACE VALIDATION DES AVIS CLIENT</h2>
            <div class="commandes_passees"></div>   
        </section>
        </section>      
    </main>
    <!-- liaison avec la page externe de Javascript -->
<script src="javascript/menu_burger.js"></script>
</body>
</html>
