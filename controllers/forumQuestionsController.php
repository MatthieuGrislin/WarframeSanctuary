<?php
$forum = new forum();
$forum->idSubCat = htmlspecialchars($_GET['idSubCat']);
$subCategoriesName = $forum->getSubcatNameById();
$showQuestions = $forum->getQuestions();