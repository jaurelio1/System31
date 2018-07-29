<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Morador</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
    <script src="main.js"></script>
</head>
<body>

        <ul class="navegador">
            
                <li><a class="lista" href="paginaMorador.php">Inicial</a></li>
                <li><a class="lista" href="contato.php">Contato</a></li>
                <li>
                    <a onclick="botao('l', 'd')" class="lista" href="#informacao">Informação</a>
                   <ul>
                        <li id="l" class="sublista"><a class="lista" href="confM.php">Configuração</a></li>
                        <li id="d" class="sublista"><a class="lista" href="#dados">Dados de usuario</a></li>
                    </ul>
                </li>
                <li><a class="lista" href="#Notificacao">Notificação</a></li>
                <li><a class="lista" href="index.php">Sair</a></li>
               
        </ul>
        

        <article class="corpo">
        </article>
    
</body>
</html>