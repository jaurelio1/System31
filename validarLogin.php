<?php

include_once "Conexao.php";
$login = $_POST["login_verifica"];
$senha = $_POST["senha_verifica"];

$sql_busca = "select * from system31.administrador as Adm where Adm.login='$login'";
$dados = mysqli_query($con, $sql_busca);

$linha = mysqli_fetch_array($dados);

echo $linha["nome"];

if ($linha["login"]){
    if($linha["senha"]==$senha){
        echo 'CONECTADO';
    }else{
       echo 'SENHA INCORRETA';
    }
}else{
    echo 'Usuario não encotrado';
}
