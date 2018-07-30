<?php

include_once 'Conexao.php';
$num_imovel = $_POST["tnumero"];
$cpf_adm["tcpf_adm"];
$cpf_morador = $_POST["tcpf"];
$area = $_POST["tarea"];
$vagas_garagem = $_POST["tvagas_garagem"];
$quant_quarto = $_POST["tqntq"];
$quant_banheiro = $_POST["tqntb"];
$quant_suites = $_POST["tqnts"];
$aluguel_valor = $_POST["talu_valor"];
$cond_valor =$_POST["tcond_valor"];
$varada = $_POST["tvaranda"];

$sql = "INSERT INTO Imovel
	(numero_imovel, cpf_adm, taxa_condominio, valor_aluguel, vagas_garagem, qtd_quartos, qtd_banheiros, qtd_suites, varanda, area_metros_quadrado)
VALUES ($num_imovel,'$cpf_adm',$cond_valor,$aluguel_valor,$vagas_garagem,$quant_quarto,$quant_banheiro,$quant_suites,$varada,$area);";
if(!$con){
    echo "Falha na conexão com o banco de dados!";
}else{
    $res = mysqli_query($con, $sql);
    if($res){
        echo "Condominio cadastrado!";
        header("Location: index.php");
    }
}


