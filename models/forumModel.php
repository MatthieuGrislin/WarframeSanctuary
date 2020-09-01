<?php
class forum
{
    public $id = 0;
    public $postDate = '0000-00-00';
    public $title = '';
    public $content = '';
    public $id_m3s4pL0v3_forum = 0;


    private $db = NULL;
    public function __construct()
    {
        try {
            $this->db = new PDO('mysql:host=localhost;dbname=WarframeSanctuary;charset=utf8', 'Mealya', 'Naabpeon020895');
        } catch (Exception $error) {
            die($error->getMessage());
        }
    }

    
}