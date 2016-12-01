<?php

function ola($nome)
{
    echo "Olá $nome";
}

$idade = 20;

$ola = function($nome) use (&$idade)
{
    echo "Que Legal $nome ";
    $idade = 35;
    
};

function teste($param)
{
    $param('Gabriel');
}

teste(function(){
    

});