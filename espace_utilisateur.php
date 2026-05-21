<?php
session_start();
require_once "connexion.php";

if(!isset($_SESSION["id_utilisateur"])) {
    header("Location: connexion_utilisateur.php");
    exit;
}

$id_utilisateur = $_SESSION["id_utilisateur"];

$requete = $pdo->prepare("SELECT * FROM utilisateurs WHERE id_utilisateur = ?");
$requete->execute([$id_utilisateur]);
$utilisateur = $requete->fetch(PDO::FETCH_ASSOC);
?>
<!doctype html>
<html lang="fr">
  <head>
    <!-- balises meta indispensables -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- liaison avec la page externe de css -->
   
    <link rel="stylesheet" href="css/styles.css"/>
    <link rel="stylesheet" href="css/menu_burger.css"/>
    <link rel="stylesheet" href="css/espace_utilisateur.css"/>
    <title>
      Vite & Gourmand - Espace Utilisateur 
    </title>
  </head>
  <!-- body : Contenu de la page -->
  <body>
  <header class="header_conteneur">
      <section>
          <?php include "menu_burger.php"; ?>
      </section>
      <section class="titre_header">    
          <h1>Espace Utilisateur</h1>
      </section> 
      <section class="logo">
        <img src="images/logo1.png" alt="Logo de Vite et Gourmand, la plate-forme pour manger vite et bien"/>
      </section>
    </header>
<main>
    <section class="espace_utilisateur">
        <section class="espace_utilisateur_contenu">
            <h2>Données personnelles</h2>
        <section class="donnees_personnelles">
            <p>Raison sociale : <?= htmlspecialchars($utilisateur["raison_sociale"] ?? "")?></p>
            <p>Pseudo :         <?= htmlspecialchars($utilisateur["pseudo"] ?? "")?></p>
            <p>Civilité :       <?= htmlspecialchars($utilisateur["civilite"] ?? "")?></p>
            <p>Prénom :         <?= htmlspecialchars($utilisateur["prenom"] ?? "")?></p>
            <p>Nom :             <?= htmlspecialchars($utilisateur["nom"] ?? "")?></p>
            <p>EMail : <?= htmlspecialchars($utilisateur["email"] ?? "") ?></p>
            <p>Complément d'adresse : <?= htmlspecialchars($utilisateur["livraison_adresse_complement"] ?? "")?></p>
            <p>Numéro + Nom de voie : <?= htmlspecialchars($utilisateur["livraison_adresse"] ?? "")?></p>
            <p>Code Postal : <?= htmlspecialchars($utilisateur["livraison_code_postal"] ?? "")?></p>
            <p>VILLE : <?= htmlspecialchars($utilisateur["livraison_ville"] ?? "")?></p>
            <a href="modifier_utilisateur.php" class="bouton">
            Modifier vos Données Personnelles       
            </a>
        </section>
        <section> 
       <h2>Les Commandes chez Vite et Gourmand</h2>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
        </section> 
        </section>  
    </main>
    <?php include "footer.php"; ?>  
    <!-- liaison avec la page externe de Javascript -->
<script src="javascript/menu_burger.js"></script>
</body>
</html>

 