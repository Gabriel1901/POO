<?php

/**
 * Classe Generica do motor
 * 
 * @author Gabriel
 * @link https://github.com/Gabriel1901/POO  
 */

class Motor
{
    private $potencia = 1.0;
    private $tipoCombustivel = "Flex";
    private $aceleracao = 0;
    
    /**
     * Acelerar o motor
     * @param int $valor Valor da aceleração de 0 a 100
     * @return int
     */
    public function acelerar($valor = 0)
    {
        $this->aceleracao = $valor;
        $potencia = $valor * $this->potencia;
        return $potencia;
    }
    
}
