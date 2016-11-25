<?php

require_once "Carro.php";

$veiculo1 = new Carro("Preto");
$veiculo2 = clone $veiculo1;

$veiculo2->cor = "Vermelho";
$veiculo2->abastecer(15);


echo $veiculo2::MODELO."\n";
$veiculo2::MODELO = "A5";

