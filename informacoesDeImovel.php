<?php

include_once 'Conexao.php';
$num_imovel = $_POST[];
$cod_condominio = $_POST[];
$area = $_POST[];
$quant_quarto = $_POST[];
$quant_banheiro = $_POST[];
$ocupado = $_POST[];

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


