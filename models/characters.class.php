<?php

class CharactersModel
{
    public $db;

    public function __construct($db)
    {
        $this->db = $db;
    }

    public function getAll()
    {
        $query = $this->db->query('
            SELECT
                *
            FROM
                characters
        ');
        $characters = $query->fetchAll();
        
        return $characters;
    }

    public function getOneById($id)
    {
        $id = (int)$id;

        $prepare = $this->db->prepare('
            SELECT
                *
            FROM
                characters
            WHERE
                id = :id
        ');
        $prepare->bindValue('id',$id);
        $prepare->execute();
        $characters = $prepare->fetch();
        
        return $characters;
    }
}
