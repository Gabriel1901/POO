<?php

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
	
	public function __construct(Motor $motor, $cor = "Branco")
	{
	    $this->tanqueCombustivel = 10;
	    $this->cor = $cor;
            $this->motor = $motor;
	}
	
        
        /**
         * Ligar o motor
         */
	public function ligar()
	{

	}
	
        
        /**
         * Desliga o motor
         */
	public function desligar()
	{
	
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
            $torque = $this->motor->acelerar($valor);
            $this->andar($torque);
            
        }

        /**
         * Abastece o Veículo
         * @param int $valorValor a ser colocado no tanque
         */
        public function abastecer($valor)
	{
	   $this->tanqueCombustivel += $valor;
	}
	
}


