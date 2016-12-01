<?php

namespace POO\Motor;

use POO\Motor\Motor;

/**
 * Motor 1.8
 *
 * @author Gabriel
 */
class Motor18 extends Motor
{
    const POTENCIA = 1.8;
    
    private $nitro = false;
    
    public function ativaNitro()
    {
        $this->nitro = true;
    }
    
    /**
     * Acelerar o motor
     * @param int $valor Valor da aceleração de 0 a 100
     * @return int
     */
    public function acelerar($valor = 0)
    {
       if($this->estaligado()==false)
       {
           throw new \Exception("Não foi possivel acelerar, porque o motor não estáligado!");
       }
       
        $this->aceleracao = $valor;
        $torque = $valor * self::POTENCIA;
               
       if ($this->nitro == true)
       {
           return $torque * 1.5;
       }else {
           return $torque;
       }
    }
}
