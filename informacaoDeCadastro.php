
    <?php
        $nome = $_GET["tnome"];
        $sobrenome = $_GET["tsobrenome"];
        $data = $_GET["tdata"];
        $cpf = $_GET["tcpf"];
        $rg = $_GET["trg"];
        $civil = $_GET["tcivil"];
        $nacionalidade =$_GET["tnacionalidade"];
	$email = $_GET["temail"];
        $numero = $_GET["tnumero"];

        echo "Nome: $nome<br>Sobrenome: $sobrenome<br> Data De Nascimento: $data<br> cpf: $cpf<br> RG: $rg<br>Estado civil: $civil<br> $nacionalidade<br> E-mail: $email<br> Numero $numero";

    ?>

