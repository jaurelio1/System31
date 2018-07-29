

 <?php
    
        
include_once 'Cenexao.php';
$email = $_POST[];
$senha = $_POST[];
$cpf = $_POST[];
$rg = $_POST[];
$nome = $_POST[];
$sexo = $_POST[];
$data_nascimento = $_POST[];
$cep = $_POST[];
$bairro = $_POST[];
$cidade = $_POST[];
$uf = $_POST[];
$numero = $_POST[];
$telefone = $_POST[];
        
	
        
        
$sql = "insert into system31.administrador (cpf, rg, nome, sexo,data_nasc, cep, bairro,cidade , uf, numero, email, senha, telefone) values ($cpf, $rg, '$nome','$data_nascimento', '$sexo', '$cep', '$bairro', '$cidade', '$uf', $numero, '$telefone');";
if(!$con){
    echo "Falha na conexão com o banco de dados!";
    
}else{
    $res = mysqli_query($con, $sql);
    if($res){
        echo "Usuario cadastrado!";
        header("Location: index.php");
    }
}

        
        