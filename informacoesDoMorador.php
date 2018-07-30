<?php
include_once 'Conexap.php';
$cpf = $_POST["tcpf"];
$nome = $_POST["tnome"];
$sexo = $_POST["tsexo"];
$data_nascimento = $_POST["tdata"];
$renda = $_POST["trenda"];
$num_imovel = $_POST["tnum_imovel"];
$email = $_POST["temail"];
$telefone = $_POST["tnumero"];
$senha = $_POST["tsenha"];
$cpf_adm["tcpf_adm"];

$sql = "INSERT INTO Morador_titular
	(cpf, senha, nome, sexo, num_imovel, cod_condom, renda, sindico, email, telefone, cpf_adm)
VALUES
    ('$cpf', '$senha', '$nome', '$sexo', $num_imovel, $cod_condominio, $renda, 'false', '$email', '$telefone','$cpf_adm');";

if(!$con){
    echo "Falha na conexão com o banco de dados!";
    
}else{
    $res = mysqli_query($con, $sql);
    if($res){
        echo "Morador cadastrado!";
        header("Location: index.php");
    }
}