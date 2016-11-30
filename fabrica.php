<pre>
<?php

require_once "./autoload.php";
/*require_once "./Motor/InterfaceMotor.php";
require_once "./Veiculos/Carro.php";
require_once "./Motor/Motor.php";
require_once "./Motor/Motor18.php";
require_once "./Motor/Motorturbo.php";
require_once "./MWM/Motor.php";*/

use POO\Motor\Motor18;
use POO\Motor\Motorturbo;
use MWM\Motor;


//$motor = new Motor();
$motor18 = new Motor18();
$motorTurbo= new MotorTurbo();
$motorMWM = new MWM\Motor();

$veiculo1 = new POO\Veiculos\Carro($motor18, "Preto");
$veiculo2 = clone $veiculo1;

$veiculo2->cor = "Vermelho";
$veiculo2->abastecer(15);


$veiculo1->acelerar(40);


$veiculo1->tanqueCombustivel = "120;";

echo "\n\n";

//var_dump($veiculo1);

//echo "Potência do Motor: " .Motor::POTENCIA. "\n";


//var_dump($motorTurbo);