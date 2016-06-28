<?php

class YearsModel
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
                years
        ');
        $years = $query->fetchAll();
        
        return $years;
    }

    public function getOneById($id)
    {
        $id = (int)$id;

        $prepare = $this->db->prepare('
            SELECT * FROM years y WHERE y.id = :id
        ');
        $prepare->bindValue('id',$id);
        $prepare->execute();
        
        $years = $prepare->fetch();
        $years->students = $this->getStudentsFromYear($id);
        
        return $years;
    }

    public function getStudentsFromYear($year)
    {
        $episode = (int)$year;

        $prepare = $this->db->prepare('
            SELECT 
                s.id, s.first_name, s.last_name
            FROM years y
            LEFT JOIN students_years sy ON sy.years_id = y.id
            LEFT JOIN students s ON s.id = sy.students_id
            WHERE y.id = :id
        ');
        $prepare->bindValue('id', $year);
        $prepare->execute();
        $students = $prepare->fetchAll();
        
        return $students; 
    }
    
}
