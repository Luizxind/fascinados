<?php
session_start();
require 'request/maquin.php';
if(isset($_POST['identidade']) && empty($_POST['identidade']) == false) {
	$identidade = addslashes($_POST['identidade']);
	$senha = addslashes($_POST['senha']);

	$sql = $pdo->prepare("SELECT * FROM usuario WHERE identidade = :identidade AND senha = :senha");
	$sql->bindValue(":identidade", $identidade);
	$sql->bindValue(":senha", $senha);
	$sql->execute();

	if($sql->rowCount() > 0) {
		$sql = $sql->fetch();
		$_SESSION['fascinadosdb'] = $sql['identidade'];
		header("Location: perffil.php");
		exit;
	}
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Formulario</title>
	<link rel="stylesheet" type="text/css" href="../css/luck.css">
</head>
<body>
	<header>
		<a href="../index.html"><img src="../img/casa.png" alt=""></a>
		<a href=""><img src="../img/login.png" alt=""></a>
		<a href=""><img src="../img/contato.png" alt=""></a>
		<audio src="https://fascinados.com.br/aud/alok.mp3"></audio>
	</header>
	<form method="POST">
		<fieldset>
			<legend>Fascinados</legend>
			<h2>Bem vindo a Fascinados</h2><hr>
			<p>Preencha corretamente seus dados para que seu acesso seja autorizado</p><br><br>
			<div>
				<label> <span class="titulare"> Digite seu id: </span><br><br>
					<input type="text" placeholder="Digite seu Id..."  name="identidade">
				</label>
			</div><br>
			<div>
				<label> <span class="titulare"> Digite Sua Senha: </span><br><br>
					<input type="password" placeholder="Digite sua senha... " name="senha">
				</label>
			</div><br>
			<div>
				<label>			
					<input type="submit" value="Enviar">
				</label>
			</div>
		</fieldset>
	</form>
	<footer> Fascinados &copy; 2020</footer>
	<script type="text/javascript">

	</script>
</body>
</html>