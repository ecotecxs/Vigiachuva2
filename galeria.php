<?php
// Exemplo de como as imagens podem ser configuradas com pontos
$imagens = [
    ['url' => 'img/cachorro.png', 'pontos' => 50],
    ['url' => 'img/guaxinim.png', 'pontos' => 70],
    ['url' => 'img/moldura-prata.png', 'pontos' => 100],
    ['url' => 'img/coala.png', 'pontos' => 15],
    ['url' => 'img/moldura.png', 'pontos' => 10],
    ['url' => 'img/tigre.png', 'pontos' => 30],
    ['url' => 'img/hipopotamo.png', 'pontos' => 40],
    ['url' => 'img/dogo-argentino.png', 'pontos' => 60],
    ['url' => 'img/moldura-ouro.png', 'pontos' => 200],
    ['url' => 'img/urso.png', 'pontos' => 120],
    ['url' => 'img/gato-preto.png', 'pontos' => 25],
    ['url' => 'img/elefante.png', 'pontos' => 35],
];
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="galeria.css">
    <title>Galeria</title>
</head>
<body>
<nav class="navbar">
        <div class="nav-left">
            <a href="home.html"><img src="img/logo.png" alt="logo"></a>
            <h1>Vigia Chuva</h1>
        </div>

        <div class="nav-right">
            <a href="notificacao.php"><img src="img/packard-bell.png" alt="Ícone 1"></a>
           
        </div>
    </nav>

    <h1>GALERIA</h1>
    <div class="galeria">
        <?php foreach ($imagens as $imagem): ?>
            <div class="galeria-item">
                <img src="<?php echo $imagem['url']; ?>" alt="Imagem">
                <form method="POST" action="atualizar_foto.php">
                    <input type="hidden" name="foto_perfil" value="<?php echo $imagem['url']; ?>">
                    <input type="hidden" name="pontos_necessarios" value="<?php echo $imagem['pontos']; ?>">
                    <button type="submit">Trocar por <?php echo $imagem['pontos']; ?> pontos</button>
                </form>
            </div>
        <?php endforeach; ?>
    </div>

    <nav class="menu-inferior">
        <a href="user.php"> <img src="img/do-utilizador.png" alt="Ícone 1"></a>
        <a href="galeria.php"><img src="img/galeria.png" alt="Ícone 2"></a>
        <a href="mapa.html"> <img src="img/localizacao.png" alt="Ícone 3"></a>
        <a href="comunidade.php"> <img src="img/conversacao.png" alt="Ícone 4"></a>
      </nav>
</body>
</html>
