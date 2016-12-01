<?php

require_once './vendor/autoload.php';

$mail = Swift_Message::newInstance();

$mail->setFrom("gabri.franco.gf@gmail.com"); // enviando
$mail->setTo("gabri.franco.gf@gmail.com"); // recebendo
$mail->setSubject("Cuidado pra não atrasar");
$mail->setBody("Cuidado ou não vai ter diploma, nem pagando chopp, ou tvz assim");


$server = Swift_SmtpTransport::newInstance('smtp.gmail.com', 465, 'ssl');
$server->setUsername('gabri.franco.gf@gmail.com');
$server->setPassword('prica1901');

$carteiro = Swift_Mailer::newInstance($server);
$carteiro->send($mail);
