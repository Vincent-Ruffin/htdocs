<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>title</title>
    <link rel="stylesheet" href="style.css">
    <script src="script.js"></script>
  </head>
  <body>
    <nav>
    <a href="promos_tableau.php">Liste des promos</a> - <a href="salles_tableau.php">Liste des salles</a> - <a href="etudiants_tableau.php">Liste des étudiants</a>
    </nav>

<br/>
<br/>

<?php 
// DEBUG
error_reporting(E_ERROR);
ini_set("display_errors",true);

$connexion = mysqli_connect(
    "localhost", // serveur
    "root",      // login mysql sur serveur
    "root",      // mot de passe mysql
    "ekod"       // nom base de données
);
$requete = "SELECT * FROM promos";
$resultat = $connexion->query($requete);

while($row = $resultat->fetch_assoc()) {
    print "Nom : ".$row["nom"]."<br/>";
}
?>
 </body>
</html>