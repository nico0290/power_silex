<?php

class StudentsModel
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
                students
        ');
        $students = $query->fetchAll();
        
        return $students;
    }

    public function getAllForStudentId($id)
    {
        $id = (int)$id;

        $prepare = $this->db->prepare('
            SELECT 
                s.id, s.id_year, s.first_name, s.last_name, s.slug, s.skill_development, s.skill_design, s.skill_marketing, s.skill_general_culture
            FROM students s
            WHERE s.id = :id
        ');
        $prepare->bindValue('id',$id);
        $prepare->execute();
        $students = $prepare->fetch();
        
        return $students;
    }
}
