<?php
include_once 'Administrador.php';
include_once 'Morador.php';
include_once "Conexao.php";

$cpf = $_POST["login"];
$senha = $_POST["password"];

$sql_busca_adm = "select cpf, senha from system31.administrador as Adm where Adm.cpf='$cpf'";
$sql_busca = "select cpf, senha from system31.morador_titular as Mor where Mor.cpf='$cpf'";
$dados=mysqli_query($con, $sql_busca);
$dados_adm=mysqli_query($con, $sql_busca_adm);

 if ($dados_adm){
     $linha = mysqli_fetch_array($dados_adm);
     echo 'Achei usuario';
     $tipo = 1;
 }elseif ($dados) {
     $linha = mysqli_fetch_array($dados);
     echo 'Achei morador';
     $tipo = 0;
 }else{
     echo "Usuario não encontrado!";
     $tipo = 15;
 }     
 


if ($linha["cpf"] && $tipo!=15){
    if($linha["senha"]==$senha){
        header("Location: paginaAdm.php");
        die("Entrando");
    }else{
       echo 'SENHA INCORRETA';
       
    }
}

