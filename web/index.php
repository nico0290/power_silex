<?php

use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Validator\Constraints;

require_once __DIR__.'/../vendor/autoload.php';
require_once __DIR__.'/../models/actors.class.php';
require_once __DIR__.'/../models/characters.class.php';
require_once __DIR__.'/../models/episodes.class.php';
require_once __DIR__.'/../models/seasons.class.php';

$app = new Silex\Application();

// Config
$app['debug'] = true;

// Services
$app->register(new Silex\Provider\FormServiceProvider());
$app->register(new Silex\Provider\TranslationServiceProvider());
$app->register(new Silex\Provider\ValidatorServiceProvider());
$app->register(new Silex\Provider\UrlGeneratorServiceProvider());
$app->register(new Silex\Provider\TwigServiceProvider(), array(
    'twig.path' => __DIR__.'/../views',
));
$app->register(new Silex\Provider\DoctrineServiceProvider(), array(
    'db.options' => array (
        'driver'    => 'pdo_mysql',
        'host'      => 'localhost',
        'dbname'    => 'hetic_silex_power',
        'user'      => 'root',
        'password'  => 'root',
        'charset'   => 'utf8'
    ),
));
$app['db']->setFetchMode(PDO::FETCH_OBJ);

// Models
$actors_model = new ActorsModel($app['db']);
$characters_model = new CharactersModel($app['db']);
$episodes_model = new EpisodesModel($app['db']);
$seasons_model = new SeasonsModel($app['db']);

// Middlewares
$app->before(function() use ($app)
{
    $app['twig']->addGlobal('title','Power Wiki');
});

// Routes
$app->get('/', function() use ($app)
{
	$data = array();

	return $app['twig']->render('pages/home.twig',$data);
})
->bind('home');

$app->get('/actors', function() use ($app,$actors_model)
{
	$actors = $actors_model->getAll();
	
	$data = array(
		'actors' => $actors
	);

	return $app['twig']->render('pages/actors.twig',$data);
})
->bind('actors');

$app->get('/actors/{id}', function($id) use ($app,$actors_model)
{
    $actors = $actors_model->getAllForActorId($id);
    
    $data = array(
        'actors' => $actors
    );

    return $app['twig']->render('pages/actor.twig',$data);
})
->bind('actor');

$app->get('/seasons', function() use ($app,$seasons_model)
{
    $seasons = $seasons_model->getAll();
    
    $data = array(
        'seasons' => $seasons
    );

    return $app['twig']->render('pages/seasons.twig',$data);
})
->bind('seasons');

$app->get('/seasons/{id}', function($id) use ($app,$seasons_model)
{
    $seasons         = $seasons_model->getOneById($id);
    
    $data = array(
        'seasons' => $seasons
    );

    return $app['twig']->render('pages/season.twig',$data);
})
->bind('season');

$app->get('/episodes', function() use ($app,$seasons_model)
{
    $seasons = $seasons_model->getAllWithEpisodes();
    
    $data = array(
        'seasons' => $seasons
    );

    return $app['twig']->render('pages/episodes.twig',$data);
})
->bind('episodes');

$app->get('/episodes/{id}', function($id) use ($app,$episodes_model,$actors_model)
{
    $episodes         = $episodes_model->getOneById($id);
    
    $data = array(
        'episodes' => $episodes
    );

    return $app['twig']->render('pages/episode.twig',$data);
})
->bind('episode');

$app->get('/test', function() use ($app)
{
    $url = $app['url_generator']->generate('actors',array('id'=>88));
    return $app->redirect($url);
});

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
