<?php
$items = new items();
// Si catId n'est pas vide et qu'il existe dans la bdd, on affiche les informations. Sinon on le redirige vers l'index
if(!empty($_GET['catId'])){
    $items->id = htmlspecialchars($_GET['catId']);
    if($items->checkItemsExistsById()){
    $showItems = $items->getItemsByCategory();
    }else {
        header('Location: ../index.php');
        exit;
    }
}else {
    header('Location: ../index.php');
    exit;
}