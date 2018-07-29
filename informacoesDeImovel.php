<?php

include_once 'Conexao.php';
$num_imovel = $_POST[];
$cod_condominio = $_POST[];
$area = $_POST[];
$vagas_garagem = $_POST[];
$quant_quarto = $_POST[];
$quant_banheiro = $_POST[];
$quant_suites = $_POST[];
$aluguel_valor = $_POST[];
$cond_valor =$_POST[];
$varada = $_POST[];

$sql = "insert into system31.imovel (num_imovel, area, quant_quarto, quant_banheiro, quant_suites, aluguel_valor,cond_valor, varada) "
        . "values ($num_imovel, $area, $quant_quarto, $quant_banheiro, $quant_suites, $aluguel_valor,$cond_valor, $varada)";
if(!$con){
    echo "Falha na conexão com o banco de dados!";
}else{
    $res = mysqli_query($con, $sql);
    if($res){
        echo "Condominio cadastrado!";
        header("Location: index.php");
    }
}


