# Vite-et-Gourmand-2026      
Le projet "Vite et Gourmand - 2026" propose l'Evaluation en Cours de Formation (E.C.F.) donné par Studi dans le cadre de sa formation "Graduate Développeur Angular.
Il consiste à créer le site internet et l'application mobile de la société "Vite et Gourmand", entreprise de Traiteur Livreur de José et Julie à Bordeaux en Gironde.
Les langages utilisés sont HTML/CSS/JAVASCRIPT pour le front-end, PHP pour le back-end, le SQL pour les bases de données relationnelles. 
Les logiciels et sites internet utilisés sont : Figma et Trello pour le travail pré-codage - Visual Studio Code, Xampp, Mongo DB (pour les bases de donénes non relationnelles) pour le codage, github pour la gestion de version et le suivi du développemt et gandi.net pour le déploiement. 

La démarche pour déployer mon application en local : 
+ Installer XAMPP https://www.apachefriends.org/fr/download     
+ Se connecter à Github pour me trouver : https://github.com/Chtitsoeur78/Vite-et-Gourmand-2026
  puis cloner (dupliquer) mon projet avec                                                                           git clone https://github.com/Chtitsoeur78/Vite-et-Gourmand-2026.git
  git va créer un dossier "Vite-et-gourmand-2026 dans lequel sera mis le projet
+ Mettre le projet importé de github dans dossier htdocs C:\xampp\htdocs
+  Lancer Xampp en ouvrant Apache et MySQL (boutons apparaissant en vert sur les deux lignes) soit en cliquant sur Start (premier bouton à gauche sur chaque ligne) soit en configurant l'ouverture automatique en cliquant sur le bouton Config en haut à droite.
+  Importer la base de données : ouvrir le phpmyadmin avec http://localhost/phpmyadmin
Créer une nouvelle base de données dans la colonne de gauche en la nommant par exemple vite_et_gourmand.sql
Importer le fichier .sql de Github en cliquant en haut au centre sur importer
+ Ouvrir le site sur http://localhost/ecf

information de configuration : Les paramètres de connexion à la base sont dans : le fichier connexion.php
