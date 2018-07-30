<?php
/**
 * Created by PhpStorm.
 * User: jarde
 * Date: 29/07/2018
 * Time: 22:15
 */

// Conectando ao banco de dados:
include_once("Conexao.php");
$tabela = $_POST['Tabela'];

switch ($tabela) {
    case 'C':
        // Criando tabela e cabeçalho de dados:
        echo "<table border=1>";
        echo "<tr>";
        echo "<th>Código</th>";
        echo "<th>Nome</th>";
        echo "<th>UF</th>";
        echo "<th>Cidade</th>";
        echo "<th>Bairro</th>";
        echo "<th>Rua</th>";
        echo "<th>Número</th>";
        echo "<th>CEP</th>";
        echo "<th>Quandtidade Imóveis</th>";
        echo "</tr>";

        $sql = "SELECT * FROM condominio";
        $resultado = mysqli_query($con,$sql) or die("Erro ao retornar dados");

        // Obtendo os dados por meio de um loop while
        while ($registro = mysqli_fetch_array($resultado))
        {
            $codigo = $registro['codigo'];
            $nome = $registro['nome'];
            $uf = $registro['uf'];
            $cidade = $registro['cidade'];
            $bairro = $registro['bairro'];
            $rua = $registro['rua'];
            $numero = $registro['numero'];
            $cep = $registro['cep'];
            $qtd_imoveis = $registro['qtd_imoveis'];

            echo "<tr>";
            echo "<td>".$codigo."</td>";
            echo "<td>".$nome."</td>";
            echo "<td>".$uf."</td>";
            echo "<td>".$cidade."</td>";
            echo "<td>".$bairro."</td>";
            echo "<td>".$rua."</td>";
            echo "<td>".$numero."</td>";
            echo "<td>".$cep."</td>";
            echo "<td>".$qtd_imoveis."</td>";
            echo "</tr>";
        }
        mysqli_close($con);
        echo "</table>";
        break;

    case 'A':
        // Criando tabela e cabeçalho de dados:
        echo "<table border=1>";
        echo "<tr>";
        echo "<th>CPF</th>";
        echo "<th>RG</th>";
        echo "<th>Nome</th>";
        echo "<th>Sexo</th>";
        echo "<th>Email</th>";
        echo "<th>Telefone</th>";
        echo "<th>Senha</th>";
        echo "<th>Data de Nascimento</th>";
        echo "<th> Rua</th>";
        echo "<th> Número</th>";
        echo "<th> Bairro</th>";
        echo "<th> UF</th>";
        echo "<th> CEP</th>";
        echo "<th> Cidade</th>";
        echo "<th> Código Condomínio</th>";
        echo "</tr>";

        $sql = "SELECT * FROM administrador";
        $resultado = mysqli_query($con,$sql) or die("Erro ao retornar dados");

        // Obtendo os dados por meio de um loop while
        while ($registro = mysqli_fetch_array($resultado))
        {
            $cpf = $registro['cpf'];
            $rg = $registro['rg'];
            $nome = $registro['nome'];
            $sexo = $registro['sexo'];
            $email = $registro['email'];
            $telefone = $registro['telefone'];
            $senha = $registro['senha'];
            $data_nascimento = $registro['data_nascimento'];
            $rua = $registro['rua'];
            $num_home = $registro['num_home'];
            $bairro = $registro['bairro'];
            $uf = $registro['uf'];
            $cep = $registro['cep'];
            $cidade = $registro['cidade'];
            $cod_condom = $registro['cod_condom'];


            echo "<tr>";
            echo "<td>".$cpf."</td>";
            echo "<td>".$rg."</td>";
            echo "<td>".$nome."</td>";
            echo "<td>".$sexo."</td>";
            echo "<td>".$email."</td>";
            echo "<td>".$telefone."</td>";
            echo "<td>".$senha."</td>";
            echo "<td>".$data_nascimento."</td>";
            echo "<td>".$rua."</td>";
            echo "<td>".$num_home."</td>";
            echo "<td>".$bairro."</td>";
            echo "<td>".$uf."</td>";
            echo "<td>".$cep."</td>";
            echo "<td>".$cidade."</td>";
            echo "<td>".$cod_condom."</td>";
            echo "</tr>";
        }
        mysqli_close($con);
        echo "</table>";
        break;

    case 'I':
        // Criando tabela e cabeçalho de dados:
        echo "<table border=1>";
        echo "<tr>";
        echo "<th>Número</th>";
        echo "<th>Código Condomínio</th>";
        echo "<th>Taxa Condomínio</th>";
        echo "<th>Valor Aluguel</th>";
        echo "<th>Vagas Garagem</th>";
        echo "<th>Quartos</th>";
        echo "<th>Banheiros</th>";
        echo "<th>Suites</th>";
        echo "<th> Varanda</th>";
        echo "<th> Aluguel ou Venda</th>";
        echo "<th> Área m²</th>";
        echo "</tr>";

        $sql = "SELECT * FROM imovel";
        $resultado = mysqli_query($con,$sql) or die("Erro ao retornar dados");

        // Obtendo os dados por meio de um loop while
        while ($registro = mysqli_fetch_array($resultado))
        {
            $numero_imovel = $registro['numero_imovel'];
            $cod_condom = $registro['cod_condom'];
            $taxa_condominio = $registro['taxa_condominio'];
            $valor_aluguel = $registro['valor_aluguel'];
            $vagas_garagem = $registro['vagas_garagem'];
            $qtd_quartos = $registro['qtd_quartos'];
            $qtd_banheiros = $registro['qtd_banheiros'];
            $qtd_suites = $registro['qtd_suites'];
            $varanda = $registro['varanda'];
            $aluguel_ou_venda = $registro['aluguel_ou_venda'];
            $area_metros_quadrado = $registro['area_metros_quadrado'];

            echo "<tr>";
            echo "<td>".$numero_imovel."</td>";
            echo "<td>".$cod_condom."</td>";
            echo "<td>".$taxa_condominio."</td>";
            echo "<td>".$valor_aluguel."</td>";
            echo "<td>".$vagas_garagem."</td>";
            echo "<td>".$qtd_quartos."</td>";
            echo "<td>".$qtd_banheiros."</td>";
            echo "<td>".$qtd_suites."</td>";
            echo "<td>".$varanda."</td>";
            echo "<td>".$aluguel_ou_venda."</td>";
            echo "<td>".$area_metros_quadrado."</td>";
            echo "</tr>";
        }
        mysqli_close($con);
        echo "</table>";
        break;

    case 'T':
        // Criando tabela e cabeçalho de dados:
        echo "<table border=1>";
        echo "<tr>";
        echo "<th>CPF</th>";
        echo "<th>Senha</th>";
        echo "<th>Nome</th>";
        echo "<th>Sexo</th>";
        echo "<th>Número Imóvel</th>";
        echo "<th>Código Condomínio</th>";
        echo "<th>Renda</th>";
        echo "<th>Sindico</th>";
        echo "<th>Email</th>";
        echo "<th>Telefone</th>";
        echo "</tr>";

        $sql = "SELECT * FROM morador_titular";
        $resultado = mysqli_query($con,$sql) or die("Erro ao retornar dados");

        // Obtendo os dados por meio de um loop while
        while ($registro = mysqli_fetch_array($resultado))
        {
            $cpf = $registro['cpf'];
            $senha = $registro['senha'];
            $nome = $registro['nome'];
            $sexo = $registro['sexo'];
            $num_imovel = $registro['num_imovel'];
            $cod_condom = $registro['cod_condom'];
            $renda = $registro['renda'];
            $sindico = $registro['sindico'];
            $email = $registro['email'];
            $telefone = $registro['telefone'];

            echo "<tr>";
            echo "<td>".$cpf."</td>";
            echo "<td>".$senha."</td>";
            echo "<td>".$nome."</td>";
            echo "<td>".$sexo."</td>";
            echo "<td>".$num_imovel."</td>";
            echo "<td>".$cod_condom."</td>";
            echo "<td>".$renda."</td>";
            echo "<td>".$sindico."</td>";
            echo "<td>".$email."</td>";
            echo "<td>".$telefone."</td>";
            echo "</tr>";
        }
        mysqli_close($con);
        echo "</table>";
        break;

    case 'D':
        // Criando tabela e cabeçalho de dados:
        echo "<table border=1>";
        echo "<tr>";
        echo "<th>CPF</th>";
        echo "<th>Nome</th>";
        echo "<th>Sexo</th>";
        echo "<th>Email</th>";
        echo "<th>Telefone</th>";
        echo "<th>CPF Titular</th>";
        echo "</tr>";

        $sql = "SELECT * FROM morador_dependendente";
        $resultado = mysqli_query($con,$sql) or die("Erro ao retornar dados");

        // Obtendo os dados por meio de um loop while
        while ($registro = mysqli_fetch_array($resultado))
        {
            $cpf = $registro['cpf'];
            $nome = $registro['nome'];
            $sexo = $registro['sexo'];
            $email = $registro['email'];
            $telefone = $registro['telefone'];
            $cpf_titular = $registro['cpf_titular'];

            echo "<tr>";
            echo "<td>".$cpf."</td>";
            echo "<td>".$nome."</td>";
            echo "<td>".$sexo."</td>";
            echo "<td>".$email."</td>";
            echo "<td>".$telefone."</td>";
            echo "<td>".$cpf_titular."</td>";
            echo "</tr>";
        }
        mysqli_close($con);
        echo "</table>";
        break;

    case 'B':
        // Criando tabela e cabeçalho de dados:
        echo "<table border=1>";
        echo "<tr>";
        echo "<th>CPF Titular</th>";
        echo "<th>Tipo</th>";
        echo "<th>Data Validade</th>";
        echo "<th>Pago</th>";
        echo "</tr>";

        $sql = "SELECT * FROM boleto";
        $resultado = mysqli_query($con,$sql) or die("Erro ao retornar dados");

        // Obtendo os dados por meio de um loop while
        while ($registro = mysqli_fetch_array($resultado))
        {
            $cpf_titular = $registro['cpf_titular'];
            $tipo = $registro['tipo'];
            $data_validade = $registro['data_validade'];
            $pago = $registro['pago'];

            echo "<tr>";
            echo "<td>".$cpf_titular."</td>";
            echo "<td>".$tipo."</td>";
            echo "<td>".$data_validade."</td>";
            echo "<td>".$pago."</td>";
            echo "</tr>";
        }
        mysqli_close($con);
        echo "</table>";
        break;
}
