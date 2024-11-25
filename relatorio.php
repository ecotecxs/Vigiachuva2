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
</head>
<body>
    <h1>Relatório de Sinalizações</h1>

    <section>
        <h2>Total de Sinalizações</h2>
        <p>Total registrado: <strong><?php echo $total; ?></strong></p>
    </section>

    <section>
        <h2>Sinalizações por Usuário</h2>
        <table>
            <thead>
                <tr>
                    <th>Usuário</th>
                    <th>Total</th>
                </tr>
            </thead>
            <tbody>
                <?php while ($row = $porUsuarioResult->fetch_assoc()): ?>
                <tr>
                    <td><?php echo htmlspecialchars($row['nome']); ?></td>
                    <td><?php echo $row['total']; ?></td>
                </tr>
                <?php endwhile; ?>
            </tbody>
        </table>
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
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>


</body>
</html>
