<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Cadastro de Imovel</title>
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
            <div class="form-conf">
                    <div class="tab-box">
                            <h2 style="color: #ea533f" ><i class="glyphicon glyphicon-log-in"></i>Cadastro de Imovel</h2>
                            <form method="post" action="informacaoDeCadastro.php" accept-charset="utf-8" role="form" class="form-inline" >
                                <div class="form-group">
                                    <label for="cpf">CPF Do Morador:</label></br>
                                    <input type="number" class="form-input" name="tcpf" id="cpf" size="11" maxlength="11" placeholder="CPF" required/>
                                </div>
                                </br>
                                <div class="form-group">
                                    <label for="numero" class="sr-only">Numero do imovel:</label><br>
                                    <input type="number" class="form-input" name="tnumero" id="numero" placeholder="EX: 69" required/>
                                </div>
                                </br>
                                <div class="form-group">
                                    <label for="area" class="sr-only">Area do imovel:</label><br>
                                    <input type="number" class="form-input" id="area" name="tarea" size="8" maxlength="8" placeholder="8" required/>
                                </div>
            
                                <div class="form-group">
                                    <label for="qntb" class="sr-only">Quantidade de Banherios:</label><br>
                                    <input type="number" class="form-input" id="qntb" name="tqntb" size="8" maxlength="8" placeholder="2" required/>
                                </div>
                                <div class="form-group">
                                    <label for="qntq" class="sr-only">Quantidade de Quartos:</label><br>
                                    <input type="number" class="form-input" id="qntq" name="tqntq" size="8" maxlength="8" placeholder="3" required/>
                                </div>
                                <div class="form-group">
                                    <label for="qntq" class="sr-only">Vagas de Garagem:</label><br>
                                    <input type="number" class="form-input" id="vagas_garagem" name="tvagas_garagem" size="8" maxlength="8" placeholder="3" required/>
                                </div>
                                </br>
                                <div class="form-group">
                                    <label for="qntq" class="sr-only">Quantidade de Suites:</label><br>
                                    <input type="number" class="form-input" id="qnts" name="tqnts" size="8" maxlength="8" placeholder="3" required/>
                                </div>
                                <div class="form-group">
                                    <label for="qntq" class="sr-only">Valor do Aluguel:</label><br>
                                    <input type="number" class="form-input" id="alu_valor" name="talu_valor" size="8" maxlength="8" placeholder="400" required/>
                                </div>
                                <div class="form-group">
                                    <label for="qntq" class="sr-only">Valor do Condominio:</label><br>
                                    <input type="number" class="form-input" id="cond_valor" name="tcond_valor" size="8" maxlength="8" placeholder="400" required/>
                                </div>
                                <p>
                                <div class="checkbox">
                                    <label class="control-label" for="varanda">
                                        <input type="checkbox" name="tvaranda" id="varanda" value="true" tabindex="3" /> Varanda
                                    </label>
                                </div>
                                <button type="submit" class="butao">Cadastrar</button>
                            </form>
                </div>
            </div>
        </article>
</body>
</html>