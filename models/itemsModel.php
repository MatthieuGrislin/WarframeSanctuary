<?php
class items
{
    public $id = 0;
    public $name = '';
    public $codex = '' ;
    public $definition = '';
    public $acquisition = '';
    public $production = '';
    public $stats = '';
    public $id_m3s4L0v3_subCategories = 0;
    public $picture = '';
    public $avantages = '';
    public $inconvenients = '';

    private $db = NULL;
    public function __construct()
    {
        try {
            $this->db = new PDO('mysql:host=localhost;dbname=WarframeSanctuary;charset=utf8', 'Mealya', 'Naabpeon020895');
        } catch (Exception $error) {
            die($error->getMessage());
        }
    }

    public function getItemsByCategory(){
        $itemsQuery = $this->db->prepare(
        'SELECT 
            `m3s4pl0v3_items`.`picture`
            , `m3s4pl0v3_items`.`id`
            , `m3s4pl0v3_items`.`name`
            , `cat`.`name` AS `catName`
        FROM 
            `m3s4pl0v3_items`
        INNER JOIN
            `m3s4pl0v3_subcategories` AS `subcat` ON `id_m3s4pL0v3_subCategories` = `subcat`.`id`
        INNER JOIN
            `m3s4pl0v3_categories` AS `cat` ON `id_m3s4pL0v3_categories` = `cat`.`id`
        WHERE
            `cat`.`id` = :id
        ');
        $itemsQuery->bindValue(':id', $this->id, PDO::PARAM_INT);
        $itemsQuery->execute();
        return $itemsQuery->fetchAll(PDO::FETCH_OBJ);
    }

    public function getCategoryById(){
        $itemsQuery = $this->db->prepare(
        'SELECT 
            `cat`.`name` AS `catName`
        FROM 
            `m3s4pl0v3_items` AS `items`
        INNER JOIN
            `m3s4pl0v3_subcategories` AS `subcat` ON `id_m3s4pL0v3_subCategories` = `subcat`.`id`
        INNER JOIN
            `m3s4pl0v3_categories` AS `cat` ON `id_m3s4pL0v3_categories` = `cat`.`id`
        WHERE
            `items`.`id` = :id
        ');
        $itemsQuery->bindValue(':id', $this->id, PDO::PARAM_INT);
        $itemsQuery->execute();
        return $itemsQuery->fetch(PDO::FETCH_OBJ)->catName;
    }

    public function getInfosItems(){
        $itemsQuery = $this->db->prepare(
        'SELECT 
            `picture`
            , `id`
            , `name`
            , `stats`
            , `production`
            , `acquisition`
            , `avantages`
            , `inconvenients`
            , `definition`
            , `codex`
        FROM 
            `m3s4pl0v3_items`
        WHERE   
            `id` = :id
        ');
        $itemsQuery->bindValue(':id', $this->id, PDO::PARAM_INT);
        $itemsQuery->execute();
        return $itemsQuery->fetch(PDO::FETCH_OBJ);
    }

    public function checkItemsExists(){
        $itemsQuery = $this->db->prepare(
            'SELECT 
                COUNT(`id`) AS `isItemsExists`
            FROM 
                `m3s4pl0v3_items`
            WHERE   
                `id` = :id
            ');
            $itemsQuery->bindValue(':id', $this->id, PDO::PARAM_INT);
            $itemsQuery->execute();
            $data = $itemsQuery->fetch(PDO::FETCH_OBJ);
            return $data->isItemsExists;
    }
}