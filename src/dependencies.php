<?php
// DIC configuration

$container = $app->getContainer();

// view renderer
$container['renderer'] = function ($c) {
    $settings = $c->get('settings')['renderer'];
    return new Slim\Views\PhpRenderer($settings['template_path']);
};

// monolog
$container['logger'] = function ($c) {
    $settings = $c->get('settings')['logger'];
    $logger = new Monolog\Logger($settings['name']);
    $logger->pushProcessor(new Monolog\Processor\UidProcessor());
    $logger->pushHandler(new Monolog\Handler\StreamHandler($settings['path'], $settings['level']));
    return $logger;
};

// Database
$container['db'] = function ($c) {
    $config = $c->get('settings')['pdo'];
    $dsn = "{$config['engine']}:host={$config['host']};dbname={$config['database']};charset={$config['charset']}";
    $username = $config['username'];
    $password = $config['password'];

    return new \Slim\PDO\Database($dsn, $username, $password, $config['options']);

};

$container['App\Controllers\ApiController'] = function ($c) {
    return new App\Controllers\ApiController($c['db']);
};