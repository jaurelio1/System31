function validarSenha(n,m){
    tpwd = document.getElementById(n).value;
    tcpwd = document.getElementById(m).value;
    if (tpwd != tcpwd) {

       alert("SENHAS DIFERENTES!\nFAVOR DIGITAR SENHAS IGUAIS"); 
    }else{
       document.FormSenha.submit();
    }
}

function botao(n,m,b){
        document.getElementById(n).style.display = "block";
        document.getElementById(m).style.display = "block";
        document.getElementById(b).style.display = "block";
 }
 