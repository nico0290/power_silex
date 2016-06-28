<?php

class EpisodesModel
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
                episodes
        ');
        $episodes = $query->fetchAll();
        
        return $episodes;
    }

    public function getOneById($id)
    {
        $id = (int)$id;

        $prepare = $this->db->prepare('
            SELECT * FROM episodes e WHERE e.id = :id
        ');
        $prepare->bindValue('id',$id);
        $prepare->execute();
        
        $episode = $prepare->fetch();
        $episode->actors = $this->getActorsFromEpisode($id);
        
        return $episode;
    }

    public function getActorsFromEpisode($episode)
    {
        $episode = (int)$episode;

        $prepare = $this->db->prepare('
            SELECT 
                a.id, a.name, a.photo, a.occurrence, a.real_name, a.description
            FROM episodes e
            LEFT JOIN episode_actors ea ON ea.episode_id = e.id
            LEFT JOIN actors a ON a.id = ea.actor_id
            WHERE e.id = :id
        ');
        $prepare->bindValue('id', $episode);
        $prepare->execute();
        $actors = $prepare->fetchAll();
        
        return $actors; 
    }
    
}
