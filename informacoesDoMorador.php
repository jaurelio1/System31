<?php
$cpf = $_POST[];
$nome = $_POST[];
$sexo = $_POST[];
$data_nascimento = $_POST[];
$renda = $_POST[];
$num_imovel = $_POST[];
$email = $_POST[];
$telefone = $_POST[];
$senha = $_POST[];

$sql = "insert into system31.morador_titular (cpf, nome, sexo,data_nasc, renda, num_imovel,cod_condominio ,  email, telefone, senha) values ($cpf, '$nome','$data_nascimento', '$sexo', '$renda', '$num_imovel', '$cod_condominio', '$email', $telefone, '$senha');";
if(!$con){
    echo "Falha na conexão com o banco de dados!";
    
}else{
    $res = mysqli_query($con, $sql);
    if($res){
        echo "Morador cadastrado!";
        header("Location: index.php");
    }
}