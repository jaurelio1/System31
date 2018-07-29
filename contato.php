

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
        
        <section>
            
            <div class="form-conf">
            <div class="tab-box">
                <h2><i style="color: #ea533f;"></i>Contato</h2>
                <form method="post" action="informacaoDeCadastro.php" accept-charset="utf-8" role="form" class="form-inline" >
                    
                        <label for="civil">Tipo:</label><br>
                        <select class="form-select" name="tcivil" id="civil">
                            <option value="Manutenção">Manutenção</option>
                            <option value="Outros">Outros</option>
                        </select>
              
                        <p></p>
                    <div class="form-group">
                        <label for="numero" class="sr-only">Descrição:</label><br>
                        <textarea name="tmsg" id="msg" cols="50" rows="10"></textarea>
                    </div>
                    </br>
                    <button type="submit" class="butao">Enviar</button>
                </form>
            </div>     
            </div>
        </section>
    </article>  
        
    
</body>
</html>