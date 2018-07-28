function validarSenha(n,m){
    tpwd = document.getElementById(n).value;
    tcpwd = document.getElementById(m).value;
    if (tpwd != tcpwd) {

       alert("SENHAS DIFERENTES!\nFAVOR DIGITAR SENHAS IGUAIS"); 
    }else{
       document.FormSenha.submit();
    }
}

function botao(){
        document.getElementById("l").style.display = "block";
        document.getElementById("d").style.display = "block";
 }
 