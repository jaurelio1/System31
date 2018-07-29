<?php
include_once 'Administrador.php';
include_once 'Morador.php';
include_once "Conexao.php";

$login = $_POST["login_verifica"];
$senha = $_POST["senha_verifica"];

$sql_busca_adm = "select * from system31.administrador as Adm where Adm.cpf='$cpf'";
$sql_busca = "select * from system31.morador_titular as Mor where Mor.cpf='$cpf'";
 if ($dados=mysqli_query($con, $sql_busca_adm)){
     $linha = mysqli_fetch_array($dados);
 }elseif ($dados=mysqli_query($con, $sql_busca)) {
     $linha = mysqli_fetch_array($dados);
 }else{
     echo "Usuario não encontrado!";
 }     



echo $linha["nome"];

if ($linha["login"]){
    if($linha["senha"]==$senha){
        echo 'CONECTADO';
    }else{
       echo 'SENHA INCORRETA';
    }
}

