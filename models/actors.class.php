<?php

class ActorsModel
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
                actors
        ');
        $actors = $query->fetchAll();
        
        return $actors;
    }

    public function getAllForActorId($id)
    {
        $id = (int)$id;

        $prepare = $this->db->prepare('
            SELECT 
                a.id, a.name, a.photo, a.occurrence, a.real_name, a.description
            FROM actors a
            WHERE a.id = :id
        ');
        $prepare->bindValue('id',$id);
        $prepare->execute();
        $actors = $prepare->fetch();
        $actors->episodes = $this->getAllEpisodesFromActor($id);
        
        return $actors;
    }

    public function getAllEpisodesFromActor($id)
    {
        $id = (int)$id;

        $prepare = $this->db->prepare('
            SELECT 
                e.id, e.title
            FROM episode_actors ea
            LEFT JOIN episodes e ON e.id = ea.episode_id
            WHERE ea.actor_id =:id
        ');
        $prepare->bindValue('id', $id);
        $prepare->execute();
        $episodes = $prepare->fetchAll();
        
        return $episodes;
    }
}
