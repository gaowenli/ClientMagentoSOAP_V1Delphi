<?php
$username   = $_GET['username'];
$password   = $_GET['password'];
$metodoAPI  = $_GET['metodoAPI'];
$customerId = $_GET['customerId'];

$client     = new SoapClient("http://algumsite.com/store/api/soap/?wsdl");
// login na API Magento
$session_id = $client->login($username, $password);
$result     = NULL;

if($metodoAPI == 'customer.info')
{
	$result = $client->call($session_id, 'customer.info', $customerId); // $customerId = id do cliente
	// cadastrado na API Magento
}
else
if($metodoAPI == 'novo_metodoAPI')
{
	// código do seu metodo aqui
};

// mostrar array de dados
var_dump($result);

// encerra sessão logada
$client->endSession($session_id);
?>