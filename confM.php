<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Morador</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
    <link rel="stylesheet" href="jquery-3.3.1.js">
    <script src="main.js"></script>
</head>
<body>
     
        <ul class="navegador">
                <li><a class="lista" href="paginaMorador.php">Inicial</a></li>
                <li><a class="lista" href="contato.php">Contato</a></li>
                <li>
                    <a onclick="botao()" class="lista" href="#informacao">Informação</a>
                   <ul>
                        <li id="l" class="sublista"><a class="lista" href="#configuracao">Configuração</a></li>
                        <li id="d" class="sublista"><a class="lista" href="#dados">Dados de usuario</a></li>
                    </ul>
                </li>
                <li><a class="lista" href="#Notificacao">Notificação</a></li>
                
                <li><a class="lista" href="index.php">Sair</a></li>
        </ul>    
            
        <article class="corpo">
            <div class="form-conf">
                <div class="tab-box">
                        <h2 style="color: #ea533f;"><i class="glyphicon glyphicon-log-in"></i>Configuração</h2>
                    <form method="POST" action="trocaSenha.php">
                        <label for="nsenha">Senha Atual:</label>
                        <input class="form-input" type="password" name="tasenha" id="asenha">
                        <br>
                        <label >Nova Senha:</label>
                        <input class="form-input" type="password" name="tnsenha" id="nsenha"><br>
                        <br>
                        <button type="submit"  class="butao">Salvar</button>
                    </form>

                </div>
            </div>
        </article>
    
</body>
</html>