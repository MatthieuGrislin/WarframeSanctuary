<?php
class faq
{
    public $id = 0;
    public $question = '';
    public $answer = '';


    private $db = NULL;
    public function __construct()
    {
        try {
            $this->db = new PDO('mysql:host=localhost;dbname=WarframeSanctuary;charset=utf8', 'Mealya', 'Naabpeon020895');
        } catch (Exception $error) {
            die($error->getMessage());
        }
    }

    public function getInfosFaq(){
        $faqQuery = $this->db->query(
        'SELECT
            `id`
            , `question`
            , `answer`
        FROM 
            `m3s4pl0v3_faq`

        ');
    return $faqQuery->fetchAll(PDO::FETCH_OBJ);
    }
}