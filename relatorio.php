<?php
session_start();
include_once("conexao.php");

// Total de sinalizações
$totalQuery = "SELECT COUNT(*) as total FROM tb_sinalizacao";
$totalResult = $conexao->query($totalQuery);
$total = $totalResult->fetch_assoc()['total'];

// Sinalizações por usuário
$porUsuarioQuery = "
    SELECT nome, COUNT(*) as total 
    FROM tb_sinalizacao
    GROUP BY nome
    ORDER BY total DESC";
$porUsuarioResult = $conexao->query($porUsuarioQuery);

// Sinalizações por local
$porLocalQuery = "
    SELECT bairro, COUNT(*) as total 
    FROM tb_sinalizacao
    GROUP BY bairro
    ORDER BY total DESC";
$porLocalResult = $conexao->query($porLocalQuery);
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Relatório de Sinalizações</title>
    <link rel="stylesheet" href="relatorio.css">
   
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
</head>
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
    <h1 class="titulo">Relatório de Sinalizações</h1>

    <section>
        <h2>Total de Sinalizações</h2>
        <p>Total registrado: <strong><?php echo $total; ?></strong></p>
    </section>


    <section>
        <h2>Sinalizações por Local</h2>
        <table>
            <thead>
                <tr>
                    <th>Local</th>
                    <th>Total</th>
                </tr>
            </thead>
            <tbody>
                <?php while ($row = $porLocalResult->fetch_assoc()): ?>
                <tr>
                    <td><?php echo htmlspecialchars($row['bairro']); ?></td>
                    <td><?php echo $row['total']; ?></td>
                </tr>
                <?php endwhile; ?>
            </tbody>
        </table>
    </section>

    <nav class="menu-inferior">
    <a href="user.php"> <img src="img/do-utilizador.png" alt="Ícone 1"></a>
    <a href="galeria.php"><img src="img/galeria.png" alt="Ícone 2"></a>
    <a href="mapa.html"> <img src="img/localizacao.png" alt="Ícone 3"></a>
    <a href="comunidade.php"> <img src="img/conversacao.png" alt="Ícone 4"></a>
    </nav>

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>


</body>
</html>
