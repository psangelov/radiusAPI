<?php

use Slim\Http\Request;
use Slim\Http\Response;

// Routes
$app->get('/', function (Request $request, Response $response, array $args) {
    // Sample log message
    $this->logger->info("Slim-Skeleton '/' route");

    // Render index view
    return $this->renderer->render($response, 'index.phtml', $args);
});

// define routes for the APIs
$app->group('/api', function () use ($app) {
    $app->get('/read/{table}[/{id}]', 'App\Controllers\ApiController:readAction');
    $app->put('/update/{table}/{id}', 'App\Controllers\ApiController:updateAction');
    $app->post('/insert/{table}', 'App\Controllers\ApiController:insertAction');
    $app->delete('/delete/{table}/{id}', 'App\Controllers\ApiController:deleteAction');
});