<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Administrador</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
    <script type="text/javascript" src="main.js"></script>
</head>
<body>
    
        <ul class="navegador">
                <h1>Administrador</h1>
                <li><a class="lista" href="paginaAdm.php">Inicial</a></li>
                <li>
                    <a class="lista" onclick="botao('l','d')" href="#informacao">Informação</a>
                   <ul>
                        <li id="l" class="sublista"><a class="lista" href="confAdm.php">Configuração</a></li>
                        <li id="d" class="sublista"><a class="lista" href="#dados">Dados de usuario</a></li>
                    </ul>
                </li>
                <li><a class="lista" href="#Notificacao">Notificação</a></li>
                <li>
                    <a class="lista" onclick="botao('b','c','a')" href="#Cadastro">Cadastro</a>
                    <ul>
                            <li id="b" class="sublista"><a class="lista" href="cadasCond.php">Condominio</a></li>
                            <li id="c" class="sublista"><a class="lista" href="cadasM.php">Morador</a></li>
                            <li id="a" class="sublista"><a class="lista" href="cadasIm.php">Imovel</a></li>
                    </ul>
                </li>
                <li><a class="lista" href="index.php">Sair</a></li>
              
        </ul>

        <article class="corpo">
            
            
        </article>
    
</body>
</html>