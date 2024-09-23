<?php

    $aciertos = 0;
    $pregunta1 = $_POST["pregunta1"];
    $pregunta2 = $_POST["pregunta2"];
    $pregunta3 = $_POST["pregunta3"];
    $pregunta4 = $_POST["pregunta4"];
    $pregunta5 = $_POST["pregunta5"];
    $pregunta6 = $_POST["pregunta6"];
    $pregunta7 = $_POST["pregunta7"];
    $pregunta8 = $_POST["pregunta8"];
    $pregunta9 = $_POST["pregunta9"];
    $pregunta10 = $_POST["pregunta10"];


    //Validar pregunta 1. Cual es tu pareja favorita? 
    echo "<h3>Cual es tu pareja favorita de grey's?</h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta1." ---- Correcta = Derek y Meredith</h5>";
    $p1_respuestas_correctas = 0;

    if(count($pregunta1) == 1){
        for($i=0; $i<count($pregunta1); $i++){
            if($pregunta1[$i] == "Derek y Meredith"){
                $p1_respuestas_correctas ++;
            }
        }
        if($p1_respuestas_correctas == 1){
            $aciertos++;
            echo "<img src='goodans' width='50px'><hr>";
        } else {
            echo "<img src='wrongans' width='50px'><hr>";
        } else {
        echo "<img src='iwringans' width='50px'><hr>"; }
    }
    
    echo "<h3>_________ es la especialidad de Derek Shepard.</h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta2." ---- Correcta = Neurologia</h5>";
    if(strtoupper($pregunta2) == "neurologia"){
        $aciertos++;
        echo "<img src='goodans' width='50px'><hr>";
    } else {
        echo "<img src='wrongans' width='50px'><hr>";
    }

    echo "<h3>question </h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta3." ---- Correcta = Alex Karev</h5>";
    if($pregunta3 == "Alex Karev"){
        $aciertos++;
        echo "<img src='goodans' width='50px'><hr>";
    } else {
        echo "<img src='wrongans' width='50px'><hr>";
    }

    echo "<h3>_________ es la especialidad de Mark Slone.</h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta4." ---- Correcta = Cirugia plastica</h5>";
    if(strtoupper($pregunta4) == "cirugia plastica"){
        $aciertos++;
        echo "<img src='goodans' width='50px'><hr>";
    } else {
        echo "<img src='wrongans' width='50px'><hr>";
    }

    echo "CALIFICACIÓN FINAl = " . ($aciertos * 10) . "%";

?>