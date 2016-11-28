<?php

/**
 * Classe Generica para motor
 * 
 * @author Gabriel
 * @link https://github.com/Gabriel1901/POO  
 */

class Motor
{
    const POTENCIA = 1.0;
    
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
        $potencia = $valor * self::POTENCIA; // "::" estaticos
        return $potencia;
    }
    
}