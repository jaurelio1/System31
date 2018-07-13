<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
abstract class Usuario{
    protected $nome;
    protected $senha;
    protected $login;
    protected $cod;
    
    function getNome() {
        return $this->nome;
    }

    function getSenha() {
        return $this->senha;
    }

    function getLogin() {
        return $this->login;
    }

    function getCod() {
        return $this->cod;
    }

    function setNome($nome) {
        $this->nome = $nome;
    }

    function setSenha($senha) {
        $this->senha = $senha;
    }

    function setLogin($login) {
        $this->login = $login;
    }

    function setCod($cod) {
        $this->cod = $cod;
    }

    function valida_usuario($login, $senha){
        #acesso banco de dados
    }
    
    function trocar_senha($senha, $nova_senha,$novaSenha_re){
        if($senha === $this->$senha && $nova_senha===$novaSenha_re){
            $this->senha=$novaSenha_re;
        }
    }
}
