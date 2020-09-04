<?php
// la class est la définition de l'objet.
// private: accessible uniquement dans la class.
// protected: accessible dans la class et les enfants.
// public: dispo dans class, enfant et dans les instances.
class forumSubCat
{
    public $id = 0;
    public $name = '';
    public $id_m3s4pL0v3_forumCategories = 0;
    private $db = NULL;

    public function __construct(){
        //On recupére l'instance de PDO de la classe DataBase avec la méthode STATIC getInstance
            $this->db = database::getInstance();
        }
    
    public function getCatAndSubcatNameById(){
        $nameQuery = $this->db->prepare(
        'SELECT 
            `cat`.`name` AS `catName`
            , `subcat`.`name` AS `subCatName`
        FROM 
            `m3s4L0v3_forumSubCategories` AS `subcat`
        INNER JOIN
            `m3s4L0v3_forumCategories` AS `cat` ON `id_m3s4L0v3_forumCategories` = `cat`.`id`
        WHERE
            `cat`.`id` = :id_m3s4pL0v3_forumCategories
        ');
        $nameQuery->bindValue(':id_m3s4pL0v3_forumCategories', $this->id_m3s4pL0v3_forumCategories, PDO::PARAM_INT);
        $nameQuery->execute();
        return $nameQuery->fetchAll(PDO::FETCH_OBJ);
    }
}