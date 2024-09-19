<?php

$jugador1 = $_POST["jugador1"];
$jugador2 = $_POST["jugador2"];

$gato = $_POST["gato"]; // Array con las posiciones del tablero

// Validar ¿Quién es el ganador?

// Función para verificar ganador
function verificarGanador($gato, $jugador)
{
    // Combinaciones ganadoras
    $combinaciones = [
        // Filas
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8],
        // Columnas
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8],
        // Diagonales
        [0, 4, 8],
        [2, 4, 6]
    ];

    foreach ($combinaciones as $combinacion) {
        if ($gato[$combinacion[0]] === $jugador && $gato[$combinacion[1]] === $jugador && $gato[$combinacion[2]] === $jugador) {
            return true;
        }
    }
    return false;
}

// Verificar ganador para X
if (verificarGanador($gato, "X")) {
    echo "<h1>Ganador: " . $jugador1 . " (X)</h1>";
    return;
}

// Verificar ganador para O
if (verificarGanador($gato, "O")) {
    echo "<h1>Ganador: " . $jugador2 . " (O)</h1>";
    return;
}

// Si no hay ganador
echo "<h1>Empate o juego en progreso</h1>";
