<?php
$items = new items();
$catName = ['Armes Principales', 'Armes Secondaires', 'Armes de Mêlées', 'ArchFusils', 'ArchMêlées'];
if(!empty($_GET['id'])){
    $items->id = htmlspecialchars($_GET['id']);
    if($items->checkItemsExistsById()){
    $showInfosItems = $items->getInfosItems();
    $itemsCategory = $items->getCategoryById();
    }else {
        header('Location: ../index.php');
        exit;
    }
}else {
    header('Location: ../index.php');
    exit;
}