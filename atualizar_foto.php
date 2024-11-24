<?php
session_start();

// Verifica se o usuário está logado
if (!isset($_SESSION['user_id'])) {
    header('Location: login.html');
    exit;
}

// Conexão com o banco de dados
include 'conexao.php';

// Verifica se os dados foram enviados pelo formulário
if (!isset($_POST['foto_perfil']) || !isset($_POST['pontos_necessarios'])) {
    echo "<script>alert('Dados inválidos ou incompletos.'); history.back();</script>";
    exit;
}

$userId = $_SESSION['user_id'];
$foto_perfil = $_POST['foto_perfil'];
$pontos_necessarios = (int) $_POST['pontos_necessarios'];

// Busca os pontos disponíveis do usuário na tabela tb_pontos
$sql_pontos = "SELECT pontos FROM tb_pontos WHERE nome_usuario = (SELECT nm_user FROM tb_user WHERE id_user = ?)";
$stmt_pontos = $conexao->prepare($sql_pontos);
$stmt_pontos->bind_param('i', $userId);
$stmt_pontos->execute();
$stmt_pontos->bind_result($pontos_disponiveis);
$stmt_pontos->fetch();
$stmt_pontos->close();

if ($pontos_disponiveis < $pontos_necessarios) {
    echo "<script>alert('Pontos insuficientes para trocar esta imagem.'); history.back();</script>";
    exit;
}

// Atualiza a foto de perfil do usuário
$sql_atualizar_foto = "UPDATE tb_user SET foto_perfil = ? WHERE id_user = ?";
$stmt_atualizar_foto = $conexao->prepare($sql_atualizar_foto);
$stmt_atualizar_foto->bind_param('si', $foto_perfil, $userId);

if ($stmt_atualizar_foto->execute()) {
    // Deduz os pontos do usuário
    $novo_saldo = $pontos_disponiveis - $pontos_necessarios;
    $sql_atualizar_pontos = "UPDATE tb_pontos SET pontos = ? WHERE nome_usuario = (SELECT nm_user FROM tb_user WHERE id_user = ?)";
    $stmt_atualizar_pontos = $conexao->prepare($sql_atualizar_pontos);
    $stmt_atualizar_pontos->bind_param('ii', $novo_saldo, $userId);
    $stmt_atualizar_pontos->execute();
    $stmt_atualizar_pontos->close();

    header('Location: user.php'); // Redireciona para a página do usuário
} else {
    echo "<script>alert('Erro ao atualizar foto de perfil.'); history.back();</script>";
}

$stmt_atualizar_foto->close();
$conexao->close();

?>
