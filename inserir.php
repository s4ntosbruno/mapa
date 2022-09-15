<?php

include("Protocolo.php");
$bd = new Protocolo();

$solicitante = $_POST['solicitante'];
$descricao = $_POST['descricao'];
$email = $_POST['email'];

$teste = $bd->inserir($solicitante, $descricao, $email);    
if ($teste) {
    date_default_timezone_set('America/Sao_Paulo');
    $dataAtual = date("d/m/Y h:i:s");
    echo "<p>protocolo $descricao iniciado por $solicitante com email $email às $dataAtual</p>";
} else {
    echo "Erro ao inserir";
}
include( 'index.html' );