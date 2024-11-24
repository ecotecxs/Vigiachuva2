<?php
// Iniciar sessão
session_start();

// Verificar se o usuário está logado
if (!isset($_SESSION['nome_usuario'])) {
    // Redireciona para a página de login se não estiver logado
    header("Location: login.php");
    exit;
}

// Nome do usuário logado
$nome_usuario = $_SESSION['nome_usuario'];

// Incluir conexão com o banco de dados
include 'conexao.php';

// Consulta para buscar os pontos do usuário
$sql_pontos = "SELECT pontos FROM tb_pontos WHERE nome_usuario = '$nome_usuario'";
$result_pontos = $conexao->query($sql_pontos);
$pontos_usuario = ($result_pontos->num_rows > 0) ? $result_pontos->fetch_assoc()['pontos'] : 0;

// Consulta para contar o número de sinalizações feitas pelo usuário
$sql_sinalizacoes = "SELECT COUNT(*) AS total_sinalizacoes FROM tb_sinalizacao WHERE nome = '$nome_usuario'";
$result_sinalizacoes = $conexao->query($sql_sinalizacoes);
$total_sinalizacoes = ($result_sinalizacoes->num_rows > 0) ? $result_sinalizacoes->fetch_assoc()['total_sinalizacoes'] : 0;

// Configuração das imagens da galeria
$imagens = [
    ['url' => 'img/cachorro.png', 'pontos' => 50],
    ['url' => 'img/guaxinim.png', 'pontos' => 70],
    ['url' => 'img/moldura-prata.png', 'pontos' => 100],
    ['url' => 'img/coala.png', 'pontos' => 15],
    ['url' => 'img/moldura.png', 'pontos' => 10],
    ['url' => 'img/pascoa.png', 'pontos' => 30],
];

// Notificações
$notificacoes = [];

// Notificações baseadas nos pontos
foreach ($imagens as $imagem) {
    if ($pontos_usuario >= $imagem['pontos']) {
        $notificacoes[] = "Você pode trocar seus pontos por uma nova imagem: " . basename($imagem['url']);
    }
}

// Notificações baseadas nas sinalizações
if ($total_sinalizacoes >= 3 && $total_sinalizacoes < 5) {
    $notificacoes[] = "Parabéns! Você completou 3 sinalizações!";
}
if ($total_sinalizacoes >= 5 && $total_sinalizacoes < 10) {
    $notificacoes[] = "Parabéns! Você completou 5 sinalizações!";
}
if ($total_sinalizacoes >= 10) {
    $notificacoes[] = "Incrível! Você completou 10 sinalizações!";
}

?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Notificações</title>
    <link rel="stylesheet" href="notificacao.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap" rel="stylesheet">
</head>
<body>
    <nav class="navbar">
        <div class="nav-left">
            <a href="home.html"><img src="img/logo.png" alt="logo"></a>
            <h1>Vigia Chuva</h1>
        </div>
        <div class="nav-right">
            <a href="notificacao.php"><img src="img/packard-bell.png" alt="Ícone"></a>
        </div>
    </nav>

    <div class="not">
        <?php if (empty($notificacoes)): ?>
            <div class="not-item">
                <p>Nenhuma nova notificação no momento.</p>
            </div>
        <?php else: ?>
            <?php foreach ($notificacoes as $notificacao): ?>
                <div class="not-item">
                    <img src="img/trofeu.png" alt="Ícone de Notificação" class="not-icone">
                    <p><?= htmlspecialchars($notificacao) ?></p>
                </div>
            <?php endforeach; ?>
        <?php endif; ?>
    </div>

    <nav class="menu-inferior">
        <a href="user.php"><img src="img/do-utilizador.png" alt="Usuário"></a>
        <a href="galeria.php"><img src="img/galeria.png" alt="Galeria"></a>
        <a href="mapa.html"><img src="img/localizacao.png" alt="Mapa"></a>
        <a href="comunidade.php"><img src="img/conversacao.png" alt="Comunidade"></a>
    </nav>
</body>
</html>
