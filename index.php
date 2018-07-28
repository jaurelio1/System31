<!--
    Auto:Wanderson Hermirio dos Santos
    Link do GitHub: github.com/hermirio
-->
<!DOCTYPE html>
<html>

<!--Configurações default de head-->
<head lang="pt-br">
    <meta charset="utf-8" />
    <title> Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="login_estilo.css" />
</head>
<body >
<nav >
    <ul>
        <li><a class="active" href="index.php">Home</a></li>
        <li><a href="cadastroUsuario.html">Cadastro</a></li>
        <li><a href="contato.html">Contato</a></li>
        <li><a href="sobre1.html">Sobre</a></li>
        <li style="float:right"><a href="login.html">Login</a></li>
    </ul>
</nav>
    <?php
    $host = 'localhost';
    $user = 'root';
    $pass = '';
    $db = 'system31';
        
    $con = mysqlI_connect($host, $user, $pass, $db);
        
    $sql = "select * from system31.administrador as A where 1";
    $res= mysqli_query($con, $sql);
    $linha = mysqli_fetch_object($res);
    
    for ($i=0;$i<5;$i++) {
        echo $linha[$i]->nome;
        echo '</br>';
    }
    ?>
</body>
</html>
