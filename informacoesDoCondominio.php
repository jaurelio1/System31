<?php
include_once 'Conexao.php';
$nome =$_POST["tnome"];
$cidade = $_POST["tcidade"];
$bairro = $_POST["tbairro"];
$rua = $_POST["trua"];
$num = $_POST["tnum"];
$cep = $_POST["tcep"];
$uf = $_POST["tuf"];
$num_imoveis = $_POST["tquant"];
$sql = "INSERT INTO Condominio 
	(codigo, nome, uf, cidade, bairro, rua, numero, cep, qtd_imoveis)
VALUES	
	(DEFAULT, '$nome', '$uf', '$cidade', '$bairro', '$rua', '$num','$cep', $num_imoveis);";

if(!$con){
    echo "Falha na conexão com o banco de dados!";
}else{
    $res = mysqli_query($con, $sql);
    if($res){
        echo "Condominio cadastrado!";
        header("Location: index.php");
    }
}

