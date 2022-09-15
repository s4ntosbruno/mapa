<?php

include("Protocolo.php");
$bd = new Protocolo();
$numero = $_POST['numero'];
$result = $bd->listarUm($numero);
if ($result) {
    $solicitante = $result[0]["solicitante"];
    $descricao = $result[0]["descricao"];
    $email = $result[0]["email"];
    $ano = $result[0]["ano"];
    $dataCadastro = $result[0]["dataCadastro"];
    echo "<section><h1>protocolo encontrado!</h1>";
    echo "<p>solicitante: $solicitante</p>";
    echo "<p>descricao: $descricao</p>";
    echo "<p>email: $email</p>";
    echo "<p>ano: $ano</p>";
    echo "<p>data cadastro: $dataCadastro</p>";
} else {
    echo "protocolo não encontrado";
}

include('index.html');
