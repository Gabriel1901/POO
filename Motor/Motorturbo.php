<?php

namespace POO\Motor;

use POO\Motor\Motor;

/**
 * Description of Motorturbo
 *
 * @author aluno
 */
class Motorturbo extends Motor18
{
     private $turbo = false;
    
    public function ativaTurbo()
    {
        $this->turbo = true;
    }
    
    
}
