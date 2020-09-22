<?php
// la class est la définition de l'objet.
// private: accessible uniquement dans la class.
// protected: accessible dans la class et les enfants.
// public: dispo dans class, enfant et dans les instances.
class forumResponses
{
    public $id = 0;
    public $postDAte = '0000-00-00 00:00:00';
    public $content = '';
    public $id_m3s4L0v3_users = 0;
    public $id_m3s4L0v3_forumQuestions = 0;
    private $db = NULL;

    public function __construct(){
        //On recupére l'instance de PDO de la classe DataBase avec la méthode STATIC getInstance
            $this->db = database::getInstance();
        }

    /**
     * Méthode permettant d'enregistrer une question
     */
    public function insertResponse(){
        $response = $this->db->prepare(
            'INSERT INTO `m3s4L0v3_forumResponses`
            (`postDate`, `content`, `id_m3s4L0v3_users`, `id_m3s4L0v3_forumQuestions`)
            VALUES (:postDate, :content, :users, :idForumQuest)
            
        ');
        $response->bindValue(':postDate',$this->postDate,PDO::PARAM_STR);
        $response->bindValue(':content',$this->content,PDO::PARAM_STR);
        $response->bindValue(':users',$this->id_m3s4L0v3_users,PDO::PARAM_INT);
        $response->bindValue(':idForumQuest',$this->id_m3s4L0v3_forumQuestions,PDO::PARAM_INT);
        return $response->execute();
    }

    /**
     * Méthode permettant d'afficher les réponses lié à une question
     */
    public function getResponse(){
        $getResponse = $this->db->prepare(
            'SELECT
                 `content`
                , `postDate`
            FROM 
                `m3s4L0v3_forumResponses`
            WHERE
                `id_m3s4L0v3_forumQuestions` = :id
        ');
        $getResponse->bindValue(':id',$this->id_m3s4L0v3_forumQuestions,PDO::PARAM_INT);
        $getResponse->execute();
        return $getResponse->fetchAll(PDO::FETCH_OBJ);
    }
}