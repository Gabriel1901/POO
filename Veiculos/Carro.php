<?php

namespace POO\Veiculos;

use POO\Motor\InterfaceMotor;

class Carro
{

	const MODELO = "A3"; 
	const MARCA = "AUDI";
		
	public $cor;
        
        /**
         * @var Motor 
         */
	private $motor;
	private $porta = 4;
	private $tanqueCombustivel = 0;
        
        /**
         * 
         * @param Motor $motor
         * @param sting $cor
         */
	
	public function __construct(InterfaceMotor $motor, $cor = "Branco")
	{
	    $this->tanqueCombustivel = 10;
	    $this->cor = $cor;
            $this->motor = $motor;
	}
	
        
        /**
         * Ligar ou desliga motor
         */
	public function ligarDesliga()
	{
            if($this->motor->estaLigado())
            {
                $this->motor->desliga();
            }else{
            $this->motor->ligar();
            }
	}
	        
        
	private function andar($torque)
	{
            echo "Andou " .$torque. " Metros\n"; 
	}
        
        
        /**
         * Envia aceleração ao motor
         * @param int $valor Valor da aceleração informada
         */
        public function acelerar($valor)
        {
            try{
                $torque = $this->motor->acelerar($valor);
                $this->andar($torque);
            
            }  catch (\Exception $e){
                echo $e->getMessage();
            }
        }
            

        /**
         * Abastece o Veículo
         * @param int $valorValor a ser colocado no tanque
         */
        public function abastecer($valor)
	{
	   $this->tanqueCombustivel += $valor;
	}
        
        /**
         * 
         * sobrecarga - Overloading de metodo
         * @param type $name
         * @param type $arguments
         */
        public function __call($name, $arguments) 
        {
           echo "Você não adquiriu o opcional: " .$name . "\n\n";
        }
	
        /**
         * Sobrecarga - Overloading de atributo
         * @param type $name
         */
        public function __get($name)
        {
            echo "Você tentou ler o atributi:$name \n\n";
        }
        
         /**
         * Sobrecarga - Overloading de atributo
         * @param type $name
         * @param Type$value
         */
        public function __set($name, $value)
        {
            $this->$name = $value;
            echo "Você tentou escrever no atributo: $name  o valor $value \n\n";
        }
        
}


