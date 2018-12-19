<?php
namespace App\Controllers;
use Slim\Http\Request;
use Slim\Http\Response;

class ApiController {

    private $db;

    public function __construct($db) {
        $this->db = $db;
    }

    public function readAction(Request $request, Response $response, $args)
    {
        $selectStatement = $this->db->select()
                               ->from($request->getAttribute('table')/*'radacct'*/);

        $stmt = $selectStatement->execute();
        $data = $stmt->fetchAll();


        /*$response->withStatus(200);
        $response->withHeader('Content-Type', 'application/json');
        $response->write(json_encode($data));*/
        $response->withJson($data, 200);

        return $response->withJson($data, 200);
    }

}