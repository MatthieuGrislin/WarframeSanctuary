<?php
// la class est la définition de l'objet.
// private: accessible uniquement dans la class.
// protected: accessible dans la class et les enfants.
// public: dispo dans class, enfant et dans les instances.
class forum
{
    public $id = 0;
    public $idSubCat = 0;
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
            `subcat`.`id` = :idSubCat
        ');
        $nameQuery->bindValue(':idSubCat', $this->idSubCat, PDO::PARAM_INT);
        $nameQuery->execute();
        return $nameQuery->fetch(PDO::FETCH_OBJ);
    }
    /**
     * Méthode permettant d'enregistrer une question
     */
    public function recordQuestion(){
        $question = $this->db->prepare(
            'INSERT INTO `m3s4L0v3_forumQuestions`
            (`postDate`, `title`, `content`, `id_m3s4L0v3_users`, `id_m3s4L0v3_forumSubCategories`)
            VALUES (:postDate, :title, :content, :users, :idSubCat)
            
        ');
        $question->bindValue(':postDate',$this->postDate,PDO::PARAM_STR);
        $question->bindValue(':title',$this->title,PDO::PARAM_STR);
        $question->bindValue(':content',$this->content,PDO::PARAM_STR);
        $question->bindValue(':users',$this->id_m3s4L0v3_users,PDO::PARAM_INT);
        $question->bindValue(':idSubCat',$this->id_m3s4L0v3_forumSubCategories,PDO::PARAM_INT);
        return $question->execute();
    }

    /**
     * Méthode permettant d'afficher les questions
     */
    public function getQuestions(){
        $getQuestions = $this->db->prepare(
            'SELECT
                `title`
                , `content`
                , `postDate`
                , `id_m3s4L0v3_users`
                , `id_m3s4L0v3_forumSubCategories`
            FROM 
                `m3s4L0v3_forumQuestions`
            WHERE
                `id_m3s4L0v3_forumSubCategories` = :idSubCat
        ');
        $getQuestions->bindValue(':idSubCat',$this->idSubCat,PDO::PARAM_INT);
        $getQuestions->execute();
        return $getQuestions->fetchAll(PDO::FETCH_OBJ);
    }
    /**
     * Méthode permettant d'afficher les post d'un utilisateur
     */
    public function getQuestionsByUserId(){
        $getQuestions = $this->db->prepare(
            'SELECT
                `title`
                , `content`
                , `postDate`
            FROM 
                `m3s4L0v3_forumQuestions`
            WHERE
                `id_m3s4L0v3_users` = :id
        ');
        $getQuestions->bindValue(':id',$this->id_m3s4L0v3_users,PDO::PARAM_INT);
        $getQuestions->execute();
        return $getQuestions->fetchAll(PDO::FETCH_OBJ);
    }
}