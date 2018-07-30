<?php
$cpf = $_POST["tcpf"];
$nome = $_POST["tnome"];
$sexo = $_POST["tsexo"];
$data_nascimento = $_POST["tdata"];
$renda = $_POST["trenda"];
$num_imovel = $_POST["tnum_imovel"];
$email = $_POST["temail"];
$telefone = $_POST["tnumero"];
$senha = $_POST["tsenha"];

$sql = "INSERT INTO Morador_titular
	(cpf, senha, nome, sexo, num_imovel, cod_condom, renda, sindico, email, telefone)
VALUES
    ('$cpf', '$senha', '$nome', '$sexo', $num_imovel, $cod_condominio, $renda, 'false', '$email', '$telefone');";

if(!$con){
    echo "Falha na conexão com o banco de dados!";
    
}else{
    $res = mysqli_query($con, $sql);
    if($res){
        echo "Morador cadastrado!";
        header("Location: index.php");
    }
}