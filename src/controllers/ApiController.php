<?php
namespace App\Controllers;
use Slim\Http\Request;
use Slim\Http\Response;

class ApiController {

    // mysql pdo
    private $db;
    // array of allowed tables to query
    private $allowedTables = ['nas', 'radacct', 'radgroupcheck'];
    // default status code
    private $statusCode = 200;

    public function __construct($db) {
        $this->db = $db;
    }

    // function to read records from database
    public function readAction(Request $request, Response $response, $args) {
        $table = $request->getAttribute('table');
        $id = $request->getAttribute('id');
        // check if table param value is allowed read
        if (in_array($table, $this->allowedTables)) {
            // build the query
            $selectStatement = $this->db->select()->from($table);
            // check if we have and id to the query
            if ($id && is_numeric($id)) {
                $selectStatement->where('id', '=', $id);
            }
            // execute query
            $stmt = $selectStatement->execute();
            // fetch rows (all)
            $data = $stmt->fetchAll();   
        } else {
            // prepare error status code and message
            $data = ['message' => 'Requried table not allowed'];
            $this->statusCode = 401;
        }

        return $response->withJson($data, $this->statusCode);
    }

    // function to update records from database
    public function updateAction(Request $request, Response $response, $args) {
        $table = $request->getAttribute('table');
        $id = $request->getAttribute('id');
        $body = $request->getParsedBody();
        // check if table param value is allowed read
        if (in_array($table, $this->allowedTables) && is_numeric($id) && count($body)) {
            // build the query
            $updateStatement = $this->db->update($body)
                                        ->table($table)
                                        ->where('id', '=', $id);
            // execute query
            try {
                $stmt = $updateStatement->execute();
                $data = ['message' => 'Record updated'];
            } catch (\PDOException $e) {
                $data = ['message' => $e->getMessage()];
                $this->statusCode = 400;
            }
        } else {
            // prepare error status code and message
            $data = ['message' => 'Requried table not allowed'];
            $this->statusCode = 401;
        }

        return $response->withJson($data, $this->statusCode);
    }

    // function to insert new records to database
    public function insertAction(Request $request, Response $response, $args) {
        $table = $request->getAttribute('table');
        $body = $request->getParsedBody();
        // check if table param value is allowed read
        if (in_array($table, $this->allowedTables) && is_numeric($id)) {
            // build the query
            $insertStatement = $this->db->insert(array_keys($body))
                                        ->into($table)
                                        ->values(array_values($body));
            // execute query
            try {
                $insertStatement->execute();
                $data = ['message' => 'Record inserted'];
            } catch (\PDOException $e) {
                $data = ['message' => $e->getMessage()];
                $this->statusCode = 400;
            }
        } else {
            // prepare error status code and message
            $data = ['message' => 'Requried table not allowed'];
            $this->statusCode = 401;
        }

        return $response->withJson($data, $this->statusCode);
    }

    // function to delete records from database
    public function deleteAction(Request $request, Response $response, $args) {
        $table = $request->getAttribute('table');
        $id = $request->getAttribute('id');
        // check if table param value is allowed read
        if (in_array($table, $this->allowedTables)) {
            // build the query
            $deleteStatement = $this->db->delete()
                                        ->from($table)
                                        ->where('id', '=', $id);            
            // execute query
            try {
                $stmt = $deleteStatement->execute();
                $data = ['message' => 'Record deleted'];
            } catch (\PDOException $e) {
                $data = ['message' => $e->getMessage()];
                $this->statusCode = 400;
            }
        } else {
            // prepare error status code and message
            $data = ['message' => 'Requried table not allowed'];
            $this->statusCode = 401;
        }

        return $response->withJson($data, $this->statusCode);
    }
}