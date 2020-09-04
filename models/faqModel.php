<?php
// la class est la définition de l'objet.
// private: accessible uniquement dans la class.
// protected: accessible dans la class et les enfants.
// public: dispo dans class, enfant et dans les instances.
class faq
{
    public $id = 0;
    public $question = '';
    public $answer = '';
    private $db = NULL;

    public function __construct(){
        //On recupére l'instance de PDO de la classe DataBase avec la méthode STATIC getInstance
            $this->db = database::getInstance();
        }

    public function getInfosFaq(){
        $faqQuery = $this->db->query(
        'SELECT
            `id`
            , `question`
            , `answer`
        FROM 
            `m3s4L0v3_faq`

        ');
    return $faqQuery->fetchAll(PDO::FETCH_OBJ);
    }
}