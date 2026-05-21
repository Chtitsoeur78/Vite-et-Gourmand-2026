<?php
session_start();
?>

<!doctype html>
<html lang="fr">
  <head>
    <!-- balises meta indispensables -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta
      name="description"
      content="Vite et Gourmand est une plate-forme de commande de repas utilisable dans la région de Bordeaux."
    />
    <!-- liaison avec la feuille de style externe de CSS -->
    <link rel="stylesheet" href="css/styles.css"/>
    <link rel="stylesheet" href="css/details_menus.css"/>
    <link rel="stylesheet" href="css/menu_burger.css"/>
         <!-- Titre de la Page -->
    <title>Vite et Gourmand - Détails du menu charentais</title>
  </head>
  <body>
  <?php if (isset($_SESSION['id_utilisateur'])): ?>
  <a href="formulaire_commande.php" class="bouton_commande">COMMANDE</a>
  <?php else: ?>
  <a href="connexion.php" class="bouton_commande">SE CONNECTER POUR COMMANDER</a>
  <?php endif; ?>
    <!-- header : l'en-tête de la page d'accueil --> 
    <header class="header_conteneur">
        <section>
                <?php include "menu_burger.php"; ?>
        </section>
        <section class="centre">
            <h1>Détails du menu Sud_Ouest</h1>
        </section>
        <section class="logo"> 
            <img src="images/logo1.png" alt="Logo de Vite et Gourmand, la plate-forme pour manger vite et bien" >
        </section>
    </header>    
    <main>
        <section class="details_menu_charentes">
              <h2> Menu "Charentes !" </h2>
              <p>galerie de photos</p>
              <img src="images/mouclade.png" alt="la mouclade charentaise, plat typiquement du coin composé de moules">
              <p>Thème : Repas régional du Sud - Ouest</p>
              <p>La liste des plats du menu : 
                <p>Entrées </p>
                <div>+ Huitres de Marennes / Oléron</div>
                <div>+ Grattons charentais</div>
                <p>Plat du Jour</p>
                <div>+ Mouclade charentaise</div>
                <p>Desserts</p>
                <div>+ Galette charentaise</div>
                <div>+ Millas charentais</div>
              </p>
              <p>Nombre minimal de personnes : 4</p>
              <p>Prix pour le nombre minimal : 200 euros</p>
              <p>Les allergènes : mollusques - gluten (farine de blé) - oeuf - lait </p>
              <p>Conditions particulières : Le fait-tout dans lequel est livré la mouclade doit être rendu</p>
              <p>Régime : Classique</p>
              <p>Stock disponible : dans la mesure du possible, les plats sont cuisinés à la demande</p>
        <a href="formulaire_commande.php?menu=menu_charentes" class="bouton_commande">COMMANDE</a>  
        </section>
    </main>
  <!-- liaison avec la page externe de Javascript -->
    <script src="javascript/menu_burger.js"></script> 
  </body>
</html>
