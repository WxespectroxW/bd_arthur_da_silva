<?php
 $hostname = "localhost";
 $bancodedados = "restaurante";
 $usuario = "root"
 $senha = ""

 $mysql = new mysql($hostname, $usuario, $senha, $bancodedados);
 if ($mysql -> connect_errno) {
    echo "falha ao conectar ao banco :(" . $mysql -> connect_errno .  ")" . $mysql -> connect_errno;
 }
    else

    echo "conectado com sucesso!";
?>