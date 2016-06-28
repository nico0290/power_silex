<?php

class SeasonsModel
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
                seasons
        ');
        $seasons = $query->fetchAll();
        
        return $seasons;
    }

    public function getAllWithEpisodes()
    {
       $query = $this->db->query('
            SELECT
                *
            FROM
                seasons
        ');
        $seasons = $query->fetchAll();
        
        foreach ($seasons as $k => $season) {
            $seasons[$k]->episodes = $this->getEpisodesFromSeason($season->id);
        }
        
        return $seasons; 
    }

    public function getEpisodesFromSeason($season)
    {
        $query = $this->db->query('
            SELECT
                *
            FROM
                episodes
            WHERE season_id = "'. $season .'"
        ');
        $episodes = $query->fetchAll();
        
        return $episodes;
    }

    public function getOneById($id)
    {
        $id = (int)$id;

        $prepare = $this->db->prepare('
            SELECT
                *
            FROM
                seasons
            WHERE
                id = :id
        ');
        $prepare->bindValue('id',$id);
        $prepare->execute();
        $seasons = $prepare->fetch();
        
        return $seasons;
    }
}
