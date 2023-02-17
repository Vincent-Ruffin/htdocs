<?php

$user = 'root';
$pass = 'root';

try {
    $db = new PDO('mysql:host=localhost;dbname=tutorial', $user, $pass);
    foreach ($db->query('SELECT*FROM articles') as $ROW) {
        print_r($row);
    }
} catch (PDOException $e) {
    print "Erreur" . $e->getMessage() . "<br/>";
    die;
}
