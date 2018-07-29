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
    document.getElementById(n).classList.toggle('show');
    document.getElementById(m).classList.toggle('show');
    document.getElementById(b).classList.toggle('show');
}
 