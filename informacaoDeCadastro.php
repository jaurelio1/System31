

 <?php
    
        
include_once 'Cenexao.php';
$email = $_POST["temail"];
$senha = $_POST["tsenha"];
$cpf = $_POST["tcpf"];
$rg = $_POST["trg"];
$nome = $_POST["tnome"];
$sexo = $_POST["tsexo"];
$data_nascimento = $_POST["tdata"];
$cep = $_POST["tcep"];
$bairro = $_POST["tbairro"];
$cidade = $_POST["tcidade"];
$uf = $_POST["testado"];
$numero = $_POST["tnum"];
$telefone = $_POST["tnumero"];
	
        
        
$sql = "INSERT INTO Administrador
	(cpf, rg, nome, sexo, email, telefone, senha, data_nascimento, rua, num_home, bairro, uf, cep, cidade, cod_condom)
VALUES ('$cpf', '$rg', '$nome','$sexo', '$email', '$telefone', '$senha', '$data_nascimento', '$rua', $num_home, '$bairro','$uf','$cep','$cidade',0);";
if(!$con){
    echo "Falha na conexão com o banco de dados!";
    
}else{
    $res = mysqli_query($con, $sql);
    if($res){
        echo "Usuario cadastrado!";
        header("Location: index.php");
    }
}

        
        