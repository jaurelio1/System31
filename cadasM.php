<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Cadastrar Morador</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
    <script type="text/javascript" src="main.js"></script>
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
                            <h2 style="color: #ea533f" ><i class="glyphicon glyphicon-log-in"></i>Cadastro de Morador</h2>
                            <form method="post" action="informacaoDeCadastro.php" accept-charset="utf-8" role="form" class="form-inline" >
                                <div class="form-group">
                                    <label for="nome">Nome:</label></br>
                                    <input type="text" class="form-input" name="tnome" id="nome" size="15" maxlength="50" placeholder="Nome" required/>
                                </div>
                                </br>
                                <div class="form-group">
                                    <label for="data">Data de Nascimento:</label></br>
                                    <input type="date" class="form-input" name="tdata" id="data" size="6" maxlength="6" required/>
                                </div>
                                </br>
                                <div class="form-group">
                                    <label for="cpf">CPF:</label></br>
                                    <input type="number" class="form-input" name="tcpf" id="cpf" size="11" maxlength="11" placeholder="CPF" required/>
                                </div>
            
                                </br>
                                
                                <div class="form-group">
                                    <label for="sexo">Sexo:</label><br>
                                    <input type="radio" value="M" name="tsexo" id="Masc" checked required/><label style="font-size: 15px" for="Masc">Masculino</label>
                                    <input type="radio" value="F" name="tsexo" id="Fem" required/><label  style="font-size:15px" for="Fem">Feminino</label> </br>
                                </div>
                                <br>
                                <div class="form-group">
                                    <label for="numero" class="sr-only">Numero do Imovel:</label><br>
                                    <input type="number" class="form-input" name="tnum_imovel" id="tnum_imovel" placeholder="Ex:104" required/>
                                </div>
                                <div class="form-group">
                                    <label for="numero" class="sr-only">Renda Mensal:</label><br>
                                    <input type="number" class="form-input" name="trenda" id="trenda" placeholder="1000" required/>
                                </div>
                                </br>
                                <div class="form-group">
                                    <label for="numero" class="sr-only">Telefone de Contado:</label><br>
                                    <input type="tel" class="form-input" name="tnumero" id="numero" placeholder="Telefone" required/>
                                </div>
                                <div class="form-group">
                                    <label for="email" class="sr-only">Email:</label><br>
                                    <input type="email" class="form-input" name="temail" id="email" placeholder="E-mail" required/>
                                </div>
                              
                                </br>
                                <div class="form-group">
                                    <label for="pwd" class="sr-only">Senha:</label><br>
                                    <input type="password" class="form-input" id="pwd" name="tsenha" size="8" maxlength="8" placeholder="Senha" required/>
                                </div>
                                <p></p>
                                <button type="submit"  class="butao">Criar</button>
                            </form>
                </div>
            </div>
            
        </article>
    
</body>
</html>