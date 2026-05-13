<?php
header('Content-Type: application/json');

// Datos de conexión (Cuando Kevin te pase los de Hostinger, los cambias aquí)
$host = 'localhost';
$db   = 'nombre_de_tu_bd';
$user = 'usuario_bd';
$pass = 'contraseña_bd';

try {
    $pdo = new PDO("mysql:host=$host;dbname=$db;charset=utf8", $user, $pass);
    
    // Obtenemos los equipos (Aquí podrías filtrar por el ID del cliente logueado)
    $stmt = $pdo->query("SELECT * FROM equipos");
    $equipos = $stmt->fetchAll(PDO::FETCH_ASSOC);

    echo json_encode($equipos);
} catch (PDOException $e) {
    echo json_encode(['error' => $e->getMessage()]);
}
?>