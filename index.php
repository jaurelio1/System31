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
        <li><a href="cadastroUsuario.php">Cadastro</a></li>
        <li><a href="sobre1.php">Sobre</a></li>
        <li style="float:right"><a href="login.php">Login</a></li>
    </ul>
</nav>
    <?php
    include_once 'Conexao.php';
    if(isset($_GET['id']) == 1){

    }
    
    ?>
</body>
</html>
