<?php
 $hostname = "localhost";
 $bancodedados = "tutulizado";
 $usuario = "root";
 $senha = "";

 $mysqli = new mysqli($hostname, $usuario, $senha, $bancodedados);
 if ($mysqli -> connect_errno) {
    echo "falha ao conectar ao banco :(" . $mysqli -> connect_errno .  ")" . $mysqli -> connect_errno;
 }
    else

    echo "conectado com sucesso!";
?>