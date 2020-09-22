<?php
$forumQuestion = new forumQuestion();

if(!empty($_GET['id'])){
    $forumQuestion->id_m3s4L0v3_users = $_SESSION['profile']['id'];
    if($_GET['id'] == $_SESSION['profile']['id']){
    $showPost = $forumQuestion->getQuestionsByUserId();
    }else {
        header('Location: ../index.php');
        exit;
    }
}else {
    header('Location: ../index.php');
    exit;
}