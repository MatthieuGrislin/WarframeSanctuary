<?php
$forumQuestion = new forumQuestion();
$forum = new forumSubCat();
$forumQuestion->idSubCat = $forum->idSubCat = htmlspecialchars($_GET['idSubCat']);
$subCategoriesName = $forum->getSubcatNameById();
$showQuestions = $forumQuestion->getQuestions();

if(!empty($_GET['idSubCat'])){
    $forumQuestion->idSubCat = $forum->idSubCat = htmlspecialchars($_GET['idSubCat']);
}else {
    header('Location: ../index.php');
    exit;
}