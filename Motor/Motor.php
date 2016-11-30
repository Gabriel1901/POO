<?php

namespace POO\Motor;

use POO\Motor\InterfaceMotor;

/**
 * Classe Generica para motor
 * 
 * @author Gabriel
 * @link https://github.com/Gabriel1901/POO  
 */

abstract class Motor implements interfaceMotor
{
    const POTENCIA = 1.0;
    
    private $tipoCombustivel = "Flex";
    protected $aceleracao = 0;
    private $ligado = false;


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
    
    /**
     * liga o motor, setando o atributo ligado como true
     */
    public function ligar()
    {
        $this->ligado = true;
    }
    /**
     * Desliga o motor, setando o atributo ligado como false
     */
    public function desliga()
    {
        $this->ligado = false;
    }
    
    /**
     * informa se o motor está ligado ou desligado
     * @return boo
     */
    public function estaLigado()
    {
        return $this->ligado;
    }
}
