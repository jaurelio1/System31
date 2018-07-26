
    <?php
    
        $host = 'localhost';
        $user = 'root';
        $pass = '';
        $db = 'system31';
        
        $con = mysqlI_connect($host, $user, $pass, $db);
        
        $nome = $_POST["tnome"];
        $sobrenome = $_POST["tsobrenome"];
        $data = $_POST["tdata"];
        $cpf = $_POST["tcpf"];
        $rg = $_POST["trg"];
        $civil = $_POST["tcivil"];
        $nascionalidade =$_POST["tnascionalidade"];
	$email = $_POST["temail"];
        $numero = $_POST["tnumero"];
        $senha = $_POST["tsenha"];
        
        $sql = "insert into system31.administrador (cod, login, nascionalidade, nome, senha) values ($cpf,'$nome','$nascionalidade','$nome','$senha');";
        if (!$con){
            echo 'Falha na conexão com o Banco';
        }else{
            echo 'Banco de Dados Conectado';
            $res = mysqli_query($con, $sql);
        }
        
        #echo "Nome: $nome<br>Sobrenome: $sobrenome<br> Data De Nascimento: $data<br> cpf: $cpf<br> RG: $rg<br>Estado civil: $civil<br> $nacionalidade<br> E-mail: $email<br> Numero $numero";
        #echo $res;
    

