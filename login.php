
<link href="login_estilo.css" rel="stylesheet" id="bootstrap-css">


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
             
            <ul id="top-bar" class="nav nav-tabs nav-justified">
                <li class="active"><a href="login.php">Acesso</a></li>
		<li class="active"><a href="recuPass.php">Esqueceu a senha?</a></li>
            </ul>
            <div class="tab-content tabs-login col-lg-12 col-md-12 col-sm-12 cols-xs-12">
		<div id="login-access" class="tab-pane fade active in">
                            
		            <h2><i class="glyphicon glyphicon-log-in"></i> Acesso</h2>
                            
                    <form method="post" action="validarLogin.php" accept-charset="utf-8" role="form" class="form-horizontal">
                        <div class="form-group ">
                            <label for="login" class="sr-only">Login:</label>
                            <input type="text" class="form-control" name="login" id="login_value" placeholder="CPF" tabindex="1" value="" />
                        </div>
                        
                        <div class="form-group ">
                            <label for="password" class="sr-only">Senha:</label>
                            <input type="password" class="form-control" name="password" id="password" placeholder="Senha" value="" tabindex="2" />
                        </div>
                        
                        <div class="checkbox">
                            <label class="control-label" for="remember_me">
                                <input type="checkbox" name="remember_me" id="remember_me" value="1" class="" tabindex="3" /> Lembrar de mim
                            </label>
                        </div>
                        
                        <div class="form-group ">				
                            <button type="submit" name="log-me-in" id="submit" tabindex="5" class="btn btn-lg btn-primary">Entrar</button>
                        </div>
		    </form>			
		</div>
            </div>
	    </section>
    </article>
</div>
