<?php

include_once 'Conexao.php';
$num_imovel = $_POST["tnumero"];
$cod_condominio = $_POST[];
$cpf_morador = $_POST["tcpf"];
$area = $_POST["tarea"];
$vagas_garagem = $_POST["tvagas_garagem"];
$quant_quarto = $_POST["tqntq"];
$quant_banheiro = $_POST["tqntb"];
$quant_suites = $_POST["tqnts"];
$aluguel_valor = $_POST["talu_valor"];
$cond_valor =$_POST["tcond_valor"];
$varada = $_POST["tvaranda"];

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


