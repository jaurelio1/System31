<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Cadastro de Condominio</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
    <script type="text/javascript" src="main.js"></script>
    <style>
    #container {
        min-width: 310px;
        max-width: 800px;
        height: 400px;
        margin: 0 auto
    }
    </style>
</head>
<body>
        
        <ul class="navegador">
        <h1>Administrador</h1>
                <li><a class="lista" href="paginaAdm.html">Inicial</a></li>
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
                <div class="form-conf">
                        <div class="tab-box">
                                <h2 style="color: #ea533f" ><i class="glyphicon glyphicon-log-in"></i>Cadastro de Condominio</h2>
                                <form method="post" action="informacaoDeCadastro.php" accept-charset="utf-8" role="form" class="form-inline" >
                                    <div class="form-group">
                                        <label for="nome">Nome:</label></br>
                                        <input type="text" class="form-input" name="tnome" id="nome" size="15" maxlength="50" placeholder="Nome" required/>
                                    </div>
                                    </br>
                                    <div class="form-group">
                                        <label for="quant">Quantidade de Imoveis:</label></br>
                                        <input type="number" class="form-input" name="tquant" id="quant" size="11" maxlength="11" required/>
                                    </div>
                                    <br>
                                    <div>
                                        <label for="cidade">Cidade:</label><br>
                                        <input type="text" class="form-input" name="tcidade" id="Cidade" placeholder="Ex: Campina Grande" required/>
                                    </div>
                                    <br>
                                    <div class="form-group">
                                        <label for="cep"></label>Cep:</br>
                                        <input type="number" class="form-input" name="trg" id="rg" placeholder="Cep" required/>
                                    </div>
                                    <br>
                                    <div class="form-group">
                                        <label for="bairro" class="sr-only">Bairro:</label><br>
                                        <input type="text" class="form-input" name="tbairro" id="bairro" placeholder="EX: Dinamerica" required/>
                                    </div>
                                    <br>        
                                    <div class="form-group">
                                        <label for="rua" class="sr-only">Rua:</label><br>
                                        <input type="text" class="form-input" name="trua" id="rua" placeholder="EX: Rua Ayrton Senna" required/>
                                    </div>
                                    <br>
                                    <div class="form-group">
                                        <label for="num">Numero:</label></br>
                                        <input type="number" class="form-input" name="tnum" id="num" size="6" maxlength="6" placeholder="EX: 100" required/>
                                    </div>
                                    </br>                
                                    <button type="submit" onclick="validarSenha('pwd','cpwd')" class="butao">Criar</button>
                                </form>
                    </div>
                </div>

        </article>
    
</body>
</html>