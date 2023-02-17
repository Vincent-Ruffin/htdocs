<?php

$connexion = mysqli_connect(
    "localhost",
    "root",
    "root",
    "starwars"
);

$resultat = $connexion->query("DELETE FROM films");

for ($i = 1; $i <= 6; $i++) {
}
$ch = curl_init("https://swapi.dev/api/films/?page=1");
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
$result = curl_exec($ch);

$films = json_decode($result, true);
foreach ($films["results"] as $film) {
    print $film["name"] . "<br/>";
    $titre =



        $requete = "INSERT INTO films (name, episode_id, created) 
    VALUES ('" . $film["name"] . "'," . $episode["episode_id"] . "'," . $episode["created"] . ")";
    $resultat = $connexion->query($requete);
}
