<?php
// la class est la définition de l'objet.
// private: accessible uniquement dans la class.
// protected: accessible dans la class et les enfants.
// public: dispo dans class, enfant et dans les instances.
class forum
{
    public $id = 0;
    public $name = '';
    public $id_m3s4pL0v3_forumCategories = 0;
    private $db = NULL;

    public function __construct(){
        //On recupére l'instance de PDO de la classe DataBase avec la méthode STATIC getInstance
            $this->db = database::getInstance();
        }
    /**
     * Méthode permettant de récupérer les noms des sous-catégories
     */
    public function getsubcatNameById(){
        $nameQuery = $this->db->prepare(
        'SELECT 
            `subcat`.`name` AS `subCatName`
        FROM 
            `m3s4L0v3_forumSubCategories` AS `subcat`
        WHERE
            `subcat`.`id` = :id
        ');
        $nameQuery->bindValue(':id', $this->id, PDO::PARAM_INT);
        $nameQuery->execute();
        return $nameQuery->fetch(PDO::FETCH_OBJ);
    }
}