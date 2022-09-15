<?php
class Protocolo
{
    public $conectar;

    public function __construct()
    {
        try {
            $conn = new PDO("mysql:host=localhost;dbname=bruno", "root", "");
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $this->conectar = $conn;
        } catch (PDOException $e) {
            echo 'Erro com o banco de dados: ' . $e->getMessage();
        }
    }

    public function listar()
    {
        try {
            $stmt = $this->conectar->prepare('SELECT * FROM protocolo');
            $stmt->execute();

            $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
            return $results;
        } catch (PDOException $e) {
            echo 'ERROR: ' . $e->getMessage();
        }
    }

    public function inserir($solicitante, $descricao, $email)
    {
        try {
            $stmt = $this->conectar->prepare('INSERT INTO protocolo (solicitante, descricao, email, ano, status, dataCadastro) VALUES (:SOCILITANTE, :DESCRICAO, :EMAIL, :ANO, :STATUS, :DATACADASTRO)');
            date_default_timezone_set('America/Sao_Paulo');
            $stmt->execute(array(':SOCILITANTE' => $solicitante, ':DESCRICAO' => $descricao, ':EMAIL' => $email, ':ANO' => date("Y"), ':STATUS' => 1, ':DATACADASTRO' => date("d/m/Y h:i:s")));
            if ($stmt->rowCount() > 0) {
                return true;
            }
        } catch (PDOException $e) {
            echo 'ERROR: ' . $e->getMessage();
        }
    }


    public function listarUm($numero)
    {
        try {
            $stmt = $this->conectar->prepare('SELECT * FROM protocolo WHERE numero = :numero');
            $stmt->execute(array('numero' => $numero));

            $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
            return $results;
        } catch (PDOException $e) {
            echo 'ERROR: ' . $e->getMessage();
        }
    }
}
