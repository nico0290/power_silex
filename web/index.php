<?php

use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Validator\Constraints;

require_once __DIR__.'/../vendor/autoload.php';
require_once __DIR__.'/../models/students.class.php';
require_once __DIR__.'/../models/years.class.php';

$app = new Silex\Application();

// Config
$app['debug'] = true;

// Services
$app->register(new Silex\Provider\UrlGeneratorServiceProvider());
$app->register(new Silex\Provider\TwigServiceProvider(), array(
    'twig.path' => __DIR__.'/../views',
));
$app->register(new Silex\Provider\DoctrineServiceProvider(), array(
    'db.options' => array (
        'driver'    => 'pdo_mysql',
        'host'      => 'localhost',
        'dbname'    => 'hetic_partiel',
        'user'      => 'root',
        'password'  => 'root',
        'charset'   => 'utf8'
    ),
));
$app['db']->setFetchMode(PDO::FETCH_OBJ);

// Models
$students_model = new StudentsModel($app['db']);
$years_model = new YearsModel($app['db']);

// Middlewares
$app->before(function() use ($app)
{
    $app['twig']->addGlobal('title','Hetic');
});

// Routes
$app->get('/', function() use ($app)
{
	$data = array();

	return $app['twig']->render('pages/home.twig',$data);
})
->bind('home');

$app->get('/students', function() use ($app,$students_model)
{
	$students = $students_model->getAll();
    
	$data = array(
		'students' => $students
	);

	return $app['twig']->render('pages/students.twig',$data);
})
->bind('students');

$app->get('/students/{id}', function($id) use ($app,$students_model)
{
    $students = $students_model->getAllForStudentId($id);
    
    $data = array(
        'students' => $students
    );

    return $app['twig']->render('pages/student.twig',$data);
})
->bind('student');

$app->get('/years', function() use ($app,$years_model)
{
    $years = $years_model->getAll();
    
    $data = array(
        'years' => $years
    );

    return $app['twig']->render('pages/years.twig',$data);
})
->bind('years');

$app->get('/years/{id}', function($id) use ($app,$years_model,$students_model)
{
    $years         = $years_model->getOneById($id);
    
    $data = array(
        'years' => $years
    );

    return $app['twig']->render('pages/year.twig',$data);
})
->bind('year');


// Error
$app->error(function (\Exception $e, $code) use ($app)
{
	if($app['debug'])
        return;

    $data = array(
        'title' => 'Error'
    );

    return $app['twig']->render('pages/error.twig',$data);
});


// Run
$app->run();
