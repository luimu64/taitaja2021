<?php 
header('Content-Type: application/json');
$dsn = "mysql:host=localhost;dbname=taitaja";
$user = "root";
$passwd = "";

$pdo = new PDO($dsn, $user, $passwd);

$sql = "SELECT * FROM chart";
$stm = $pdo->query($sql);
$results = $stm->fetchAll(PDO::FETCH_ASSOC);
echo json_encode($results);
