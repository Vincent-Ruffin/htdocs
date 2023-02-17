<?php

$ch = curl_init("https://swapi.dev/api/planets/?page=1");
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
$result = curl_exec($ch);
var_dump($result);
die();
//$planetes = json_decode($result, true);
//var_dump($planetes);
/*
foreach($planetes["results"] as $planete) {
    print $planete["name"]."<br/>;
}