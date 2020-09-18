<?php
session_start();
require 'request/maquin.php';
if(isset($_SESSION['fascinadosdb']) && empty($_SESSION['fascinadosdb']) == false){
	$id = $_SESSION['fascinadosdb'];
	$sql = $pdo->prepare("SELECT * FROM usuario WHERE identidade = :identidade");
	$sql->bindValue(":identidade", $identidade);
	$sql->execute();

	if ($sql->rowCount() > 0) {
		$info = $sql->fetch();
	} else{
		header("Location: login.php");
		exit;
	}
} else{
	header("Location: login.php");
	exit;
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Perfil</title>
	<link rel="stylesheet" href="../css/luck.css">
</head>
<body>
	<header>
		<a href="https://www.fascinados.com.br"><img src="https://fascinados.com.br/img/casa.png" alt="casa" title="Inicio"></a>
		<a href=""><img src="https://fascinados.com.br/img/login.png" alt=""></a>
		<a href=""><img src="https://fascinados.com.br/img/registro.png" alt=""></a>
		<a href=""><img src="https://fascinados.com.br/img/contato.png" alt=""></a>
	</header>
	<div class="main">
		<div class="fieldset">
			<div class="legend">Fascinados</div>
			<h2>Bem vindo ao site oficial da Fascinados</h2><hr>
			<p>Toda obediência gera recompensas, e toda desobediência gera consequência! </p><hr>
			<div class="Sobre">
				<h3>Perfil</h3><br>
				<div class="proid">Seja bem vindo </div><br>
				<div class="idguilda"> Guilda <?php echo $info['guilda']; ?></div>
				<div class="ranking">blui</div>
				<div class="contaid">blu</div>
				<div class="saldoconta">blu</div>
				<div class="deslogar"><a href="sair.php">Sair</a></div>
				<hr><br>


			</div><br>
		</div>
	</div>
	<footer> Fascinados &copy; 2020</footer>
</body>
</html>