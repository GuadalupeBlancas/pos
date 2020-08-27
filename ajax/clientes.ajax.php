<?php

require_once "../controladores/clientes.controlador.php";
require_once "../modelos/clientes.modelo.php";

class AjaxClientes{

	/* Editar cliente */	

	public $idCliente;

	public function ajaxEditarCliente(){

		$item = "id";
		$valor = $this->idCliente;

		$respuesta = ControladorClientes::ctrMostrarClientes($item, $valor);

		echo json_encode($respuesta);

	}

	/* Validar no repetir cliente */

	public $validarCliente;

	public function ajaxValidarCliente()
	{

		$item = "nombre";
		$valor = $this->validarCliente;

		$respuesta = ControladorClientes::ctrMostrarClientes($item, $valor);

		echo json_encode($respuesta);
	}

}

/*=============================================
EDITAR CLIENTE
=============================================*/	

if(isset($_POST["idCliente"])){

	$cliente = new AjaxClientes();
	$cliente -> idCliente = $_POST["idCliente"];
	$cliente -> ajaxEditarCliente();

}

/* Validar no repetir categoria */

if (isset($_POST["validarCliente"])) {

	$valUsuario = new AjaxClientes();
	$valUsuario->validarCliente = $_POST["validarCliente"];
	$valUsuario->ajaxValidarCliente();
}