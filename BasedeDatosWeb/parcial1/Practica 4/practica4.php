<?php

    $aciertos = 0;
    $pregunta1 = $_POST["pregunta1"];
    $pregunta2 = $_POST["pregunta2"];
    $pregunta3 = $_POST["pregunta3"];
    $pregunta4 = $_POST["pregunta4"];
    $pregunta5 = $_POST["pregunta5"];

    //valida pregunta 1 1. ¿Lenguaje de programación que manipula direcciones arbitarias?
    echo "<h3> ¿Lenguaje de programación que manipula direcciones arbitarias? </h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta1." ---- Correcta = Derek y Meredith</h5>";
    echo "<h4>Calificacion EXAMEN </h4>";
    if($pregunta1 == "derekymeredith"){
        $aciertos++;
        echo "<img src='tailsthumbup.jpg' width='100px'><hr>";
    } else {
        echo "<img src='tails.jpg' width='100px'><hr>";
    }

    //Valido pregunta 2. es una plataforma informática de servicios de transferencia de archivos informaticos basada en internet de Bending Spoon fundada en 2009.
    echo "<h3>2. _______ es la especialidad de Derek Shepard.</h3>";
    echo "<h5>Respuesta escrita ".$pregunta2." ------ Correcta = wetransfer</h5>";
    if(strtolower($pregunta2) == "neurologia" || strtoupper($pregunta2) == "NEUROLOGIA"){
        $aciertos++;
        echo "<img src='tailsthumbup.jpg' width='100px'><hr>";
    } else {
        echo "<img src='tails.jpg' width='100px'><hr>";
    }

    //Pregunta 3 - se deben validar 2 opciones html y css
    echo "<h3> ¿Cual personaje esta vivo? </h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta3." ---- Correcta = Alex Karev</h5>";
    echo "<h4>Calificacion EXAMEN </h4>";
    if($pregunta3 == "alexkarev"){
        $aciertos++;
        echo "<img src='tailsthumbup.jpg' width='100px'><hr>";
    } else {
        echo "<img src='tails.jpg' width='100px'><hr>";
    }

    echo "<h3>2. _______ es la especialidad de Derek Shepard.</h3>";
    echo "<h5>Respuesta escrita ".$pregunta4." ------ Correcta = cirugia plastica</h5>";
    if(strtolower($pregunta4) == "cirugia plastica" || strtoupper($pregunta4) == "CRIUGIA PLASTICA"){
        $aciertos++;
        echo "<img src='tailsthumbup.jpg' width='100px'><hr>";
    } else {
        echo "<img src='tails.jpg' width='100px'><hr>";
    }

    echo "<h3> ¿Que personaje es el mas odiado? </h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta5." ---- Correcta = Owen Hunt</h5>";
    echo "<h4>Calificacion EXAMEN </h4>";
    if($pregunta5 == "owenhunt"){
        $aciertos++;
        echo "<img src='tailsthumbup.jpg' width='100px'><hr>";
    } else {
        echo "<img src='tails.jpg' width='100px'><hr>";
    }
    
    echo "CALIFICACIÓN FINAL = " . ($aciertos * 20) . "%";

?>