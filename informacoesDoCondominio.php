<?php
include_once 'Conexao.php';
$nome =$_POST[];
$cidade = $_POST[];
$bairro = $_POST[];
$rua = $_POST[];
$num = $_POST[];
$cep = $_POST[];
$uf = $_POST[];
$num_imoveis = $_POST[];

$sql = "insert into system31.condominio (nome, cidade, bairro, rua, numero, cep, uf, num_imoveis) "
        . "values ('$nome', '$cidade', '$bairro', '$rua', $num, '$cep','$uf', $num_imoveis)";
if(!$con){
    echo "Falha na conexão com o banco de dados!";
}else{
    $res = mysqli_query($con, $sql);
    if($res){
        echo "Condominio cadastrado!";
        header("Location: index.php");
    }
}

