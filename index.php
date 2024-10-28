<?php

include ("conexao.php");
if (isset($_POST['email'])|| isset($_POST['senha'])|| isset($_POST['nome'])|| isset($_POST['idade'])){
    if (strlen($_POST['email'])==0){
        echo "<script>alert(\"Preencha seu email\")</script>";
    }
    else if (strlen($_POST['senha'])==0){
        echo "<script>alert(\"Preencha sua senha\")</script>";
    }
    else if (strlen($_POST['nome'])==0){
        echo "<script>alert(\"Preencha seu nome\")</script>";
    }
    else if (strlen($_POST['idade'])==0){
        echo "<script>alert(\"Preencha sua idade\")</script>";
    } else { 
        $email = $mysqli -> real_escape_string($_POST['email']);
        $senha = $mysqli -> real_escape_string($_POST['senha']);
        $nome = $mysqli -> real_escape_string($_POST['nome']);
        $idade = $mysqli -> real_escape_string($_POST['idade']);

        $sql_code = "insert into clientes(nome, email, senha, idade) values ('$nome', '$email', '$senha', '$idade');";
        $sql_query = $mysqli -> query ($sql_code) or die("falha na execução do codigo sql: ".$mysqli -> error);
    } 
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form</title>
    <style>
    body{
    
        background-color: gray;
    }
    div{
        margin: 20px;
    }
    </style>
</head>
<body>
    <form action="" method="POST">
        <div>
        <label for="email">Email</label>
        <input type="text" name="email" id="email">
        </div>

        <div>
        <label for="senha">Senha</label>
        <input type="password" name= "senha" id= "senha">
        </div>
        <div>
        <label for="nome">Nome</label>
        <input type="text" name="nome" id= "nome">
        </div>
        <div>
        <label for="idade">Idade</label>
        <input type="text" name = "idade" id= "idade">
        </div>
        
        <button type= "submit">Enviar
        </button>
    </form>
</body>
</html>