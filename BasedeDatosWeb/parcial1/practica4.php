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

    //valida pregunta 1 1. ¿Lenguaje de programación que manipula direcciones arbitarias?
    echo "<h2>Calificacion EXAMEN </h2><hr>";
    echo "<h3> ¿Cual es la pareja principal de greys? </h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta1." ---- Correcta = Derek y Meredith</h5>";
    if($pregunta1 == "derekymeredith"){
        $aciertos++;
        echo "<img src='thumbup.jpg' width='100px'><hr>";
    } else {
        echo "<img src='eerm.jpg' width='100px'><hr>";
    }

    //Valido pregunta 2. es una plataforma informática de servicios de transferencia de archivos informaticos basada en internet de Bending Spoon fundada en 2009.
    echo "<h3>2. _______ es la especialidad de Derek Shepard.</h3>";
    echo "<h5>Respuesta escrita ".$pregunta2." ------ Correcta = Neurologia </h5>";
    if(strtolower($pregunta2) == "neurologia" || strtoupper($pregunta2) == "NEUROLOGIA"){
        $aciertos++;
        echo "<img src='thumbup.jpg' width='100px'><hr>";
    } else {
        echo "<img src='eerm.jpg' width='100px'><hr>";
    }

    //Pregunta 3 - se deben validar 2 opciones html y css
    echo "<h3> ¿Cual personaje esta vivo? </h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta3." ---- Correcta = Alex Karev</h5>";
    if($pregunta3 == "alexkarev"){
        $aciertos++;
        echo "<img src='thumbup.jpg' width='100px'><hr>";
    } else {
        echo "<img src='eerm.jpg' width='100px'><hr>";
    }

    echo "<h3>4. _______ es la especialidad de Mark Slone.</h3>";
    echo "<h5>Respuesta escrita ".$pregunta4." ------ Correcta = Cirugia Plastica</h5>";
    if(strtolower($pregunta4) == "cirugia plastica" || strtoupper($pregunta4) == "CRIUGIA PLASTICA"){
        $aciertos++;
        echo "<img src='thumbup.jpg' width='100px'><hr>";
    } else {
        echo "<img src='eerm.jpg' width='100px'><hr>";
    }

    echo "<h3>5. ¿Que personaje es el mas odiado? </h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta5." ---- Correcta = Owen Hunt</h5>";
    if($pregunta5 == "owenhunt"){
        $aciertos++;
        echo "<img src='thumbup.jpg' width='100px'><hr>";
    } else {
        echo "<img src='eerm.jpg' width='100px'><hr>";
    }
    
    echo "<h3>6. _______ es la especialidad de Meredith Grey.</h3>";
    echo "<h5>Respuesta escrita ".$pregunta6." ------ Correcta = Cirugia General</h5>";
    if(strtolower($pregunta6) == "cirugia general" || strtoupper($pregunta6) == "CRIUGIA GENERAL"){
        $aciertos++;
        echo "<img src='thumbup.jpg' width='100px'><hr>";
    } else {
        echo "<img src='eerm.jpg' width='100px'><hr>";
    }

    echo "<h3>7. ¿Cual es el equipo de cirugia plastica? </h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta7." ---- Correcta = Jackson y Mark </h5>";
    if($pregunta7 == "jacksonymark"){
        $aciertos++;
        echo "<img src='thumbup.jpg' width='100px'><hr>";
    } else {
        echo "<img src='eerm.jpg' width='100px'><hr>";
    }

    echo "<h3>8. _______ es la especialidad de Alex Krev.</h3>";
    echo "<h5>Respuesta escrita ".$pregunta8." ------ Correcta = Pediatria </h5>";
    if(strtolower($pregunta8) == "pediatria" || strtoupper($pregunta8) == "PEDIATRIA"){
        $aciertos++;
        echo "<img src='thumbup.jpg' width='100px'><hr>";
    } else {
        echo "<img src='eerm.jpg' width='100px'><hr>";
    }

    echo "<h3>9. Cual es tu especialidad favorita? </h3>";
    echo "<h5>Repuesta seleccionada ".implode(",", $pregunta9)." ---- ".implode(", ", $pregunta9)."</h5>";
    $p9_respuestas_correctas = 0;
    if(count($pregunta9 )>= 1){
        $aciertos++;
        echo "<img src='thumbup.jpg' width='100px'><hr>";
    } else {
        echo "<img src='eerm.jpg' width='100px'><hr>";
    }

    echo "<h3>10. _______ es la especialidad de Cristina Yang.</h3>";
    echo "<h5>Respuesta escrita ".$pregunta10." ------ Correcta = Cardiologia </h5>";
    if(strtolower($pregunta10) == "cardiologia" || strtoupper($pregunta10) == "CARDIOLOGIA"){
        $aciertos++;
        echo "<img src='thumbup.jpg' width='100px'><hr>";
    } else {
        echo "<img src='eerm.jpg' width='100px'><hr>";
    }


    echo "CALIFICACIÓN FINAL = " . ($aciertos * 10) . "%";


?>