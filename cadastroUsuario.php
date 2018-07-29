<link href="login_estilo.css" rel="stylesheet" id="bootstrap-css">



    <!--Bloco do Painel de cadastro de Condominio-->
<div class="login-body">
    <nav >
    <ul>
        <li><a class="active" href="index.php">Home</a></li>
        <li><a href="cadastroUsuario.php">Cadastro</a></li>
        <li><a href="sobre1.php">Sobre</a></li>
        <li style="float:right"><a href="login.php">Login</a></li>
    </ul>
    </nav>
    <article class="container-login center-block">
        
        <section>
            
            <div class="tab-content tabs-login col-lg-12 col-md-12 col-sm-12 cols-xs-12">
                <h2><i class="glyphicon glyphicon-log-in"></i>Cadastro de Usuario</h2>
                <form method="post"  action="informacaoDeCadastro.php" accept-charset="utf-8" role="form" class="form-inline" >
                    <div class="form-group">
                        <label for="nome">Nome:</label></br>
                        <input type="text" class="form-control" name="tnome" id="nome" size="15" maxlength="50" placeholder="Nome" required/>
                    </div>
                    </br>
                    <div class="form-group">
                        <label for="data">Data de Nascimento:</label></br>
                        <input type="date" class="form-control" name="tdata" id="data" size="6" maxlength="6" required/>
                    </div>
                    </br>
                    <div class="form-group">
                        <label for="cpf">CPF:</label></br>
                        <input type="number" class="form-control" name="tcpf" id="cpf" size="11" maxlength="11" placeholder="CPF" required/>
                    </div>

                    <div class="form-group">
                        <label for="rg"></label>RG:</br>
                        <input type="number" class="form-control" name="trg" id="rg" placeholder="RG" required/>
                    </div>
                    </br>
                    
                    <div class="form-group">
                        <label for="sexo">Sexo:</label><br>
                        <input type="radio"  name="tsexo" id="Masc" checked required/><label style="font-size: 15px" for="Masc">Masculino</label>
                        <input type="radio"  name="tsexo" id="Fem" required/><label  style="font-size:15px" for="Fem">Feminino</label> </br>
                    </div>
                    </br>
                    <div class="form-group">
                        <label for="email" class="sr-only">Cidade:</label><br>
                        <input type="text" class="form-control" name="tcidade" id="tcidade" placeholder="Cidade" required/>
                    </div>
                    <div class="form-group">
                        <label for="email" class="sr-only">UF:</label><br>
                        <input type="text" class="form-control" name="testado" id="testado" placeholder="UF" required/>
                    </div>
                    <div class="form-group">
                        <label for="numero" class="sr-only">CEP:</label><br>
                        <input type="text" class="form-control" name="tcep" id="tcep" placeholder="CEP" required/>
                    </div>
                    <div class="form-group">
                        <label for="email" class="sr-only">Bairro:</label><br>
                        <input type="text" class="form-control" name="tbairro" id="tbairro" placeholder="Bairro" required/>
                    </div>
                    <div class="form-group">
                        <label for="email" class="sr-only">Rua:</label><br>
                        <input type="text" class="form-control" name="trua" id="trua" placeholder="Rua" required/>
                    </div>
                    <div class="form-group">
                        <label for="number" class="sr-only">Numero:</label><br>
                        <input type="tel" class="form-control" name="tnum" id="tnum" placeholder="Numero" required/>
                    </div>
                    </br>
                    <div class="form-group">
                        <label for="email" class="sr-only">Email:</label><br>
                        <input type="email" class="form-control" name="temail" id="temail" placeholder="E-mail" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required/>
                    </div>
                  
                    <div class="form-group">
                        <label for="numero" class="sr-only">Telefone de Contado:</label><br>
                        <input type="tel" pattern="[0-9]{2}[0-9]{4,6}[0-9]{3,4}$" class="form-control" name="tnumero" id="numero" placeholder="Telefone" required/>
                    </div>
                    </br>
                    
                    <div class="form-group">
                        <label for="pwd" class="sr-only">Senha:</label><br>
                        <input type="password" pattern="(?=.*[0-9a-zA-Z]).{4,}" class="form-control" id="pwd" name="tsenha" size="8" maxlength="8" placeholder="Senha" required/>
                    </div>
                    <div class="form-group">
                        <label for="pwd" class="sr-only">Confirmar Senha:</label><br>
                        <input type="password" pattern="(?=.*[0-9a-zA-Z]).{4,}" class="form-control" id="cpwd" name="tsenha2" size="8" maxlength="8" placeholder="Confima Senha" required/>
                    </div>
                    
                    <div class="checkbox">
                        <label class="control-label" for="remember_me">
                            <input type="checkbox" name="remember_me" id="remember_me" value="1" class="" tabindex="3" /> Aceito os Termos
                        </label>
                    </div>
                    <button type="submit" class="btn btn-default btn-lg">Criar</button>
                </form>
        
            </div>
        </section>
    </article>  
</div>
