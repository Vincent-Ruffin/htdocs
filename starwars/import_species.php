<?php

$connexion = mysqli_connect(
    "localhost",
    "root",
    "root",
    "starwars"
);

$resultat = $connexion->query("DELETE FROM species");

for ($i = 1; $i <= 6; $i++) {
}
$ch = curl_init("https://swapi.dev/api/species/?page=1");
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
$result = curl_exec($ch);

$species = json_decode($result, true);
foreach ($species["results"] as $specie) {
    print "Insertion des données de ..." . $specie["name"] . "<br/>";
    $requete = "INSERT INTO species (name, classification, designation) 
    VALUES ('" . $specie["name"] . "'," . $specie["classification"] . "'," . $specie["designation"] . ")";
    $resultat = $connexion->query($requete);
}
