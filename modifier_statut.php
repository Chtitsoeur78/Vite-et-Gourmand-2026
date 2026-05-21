<?php
require_once 'connexion.php';

if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    header('Location: espace_employe.php');
    exit;
}

$id_commande = $_POST['id_commande'] ?? null;
$statut_commande = $_POST['statut_commande'] ?? '';

$statuts_autorises = [
    "En attente d'acceptation",
    "Acceptée",
    "En préparation",
    "En cours de livraison",
    "Livrée",
    "En attente du retour du matériel",
    "Terminée",
    "Annulée"
];

if (
    !$id_commande ||
    !in_array($statut_commande, $statuts_autorises, true)
) {
    header('Location: espace_employe.php');
    exit;
}

$sql = "
    UPDATE commandes
    SET statut_commande = :statut_commande
    WHERE id_commande = :id_commande
";

$stmt = $pdo->prepare($sql);
$stmt->execute([
    ':statut_commande' => $statut_commande,
    ':id_commande' => $id_commande
]);

header('Location: espace_employe.php');
exit;

