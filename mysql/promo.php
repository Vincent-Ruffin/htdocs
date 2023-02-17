<PRE>
<?php

$connexion = mysqli_connect(
    "localhost", //serveur
    "root", // login mysql sur serveur
    "root", //mot de passe mysql
    "ekod" //nom de base de données
);
$requete = "SELECT*FROM promo";
$resultat = $connexion->query($requete);


var_dump($resultat->fetch_all());
?>
</PRE>