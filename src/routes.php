<?php

use Slim\Http\Request;
use Slim\Http\Response;

function getConnect(){
    require_once 'include/dbHandler.php';
    $db = new dbHandler();
    return $db;
}

// Routes

$app->get('/[{name}]', function (Request $request, Response $response, array $args) {
    // Sample log message
    $this->logger->info("Slim-Skeleton '/' route");

    // Render index view
    return $this->renderer->render($response, 'index.phtml', $args);
});

//menampilkan semua list 
$app->get("/parkir/", function (Request $request, Response $response, $args){
    $sql = "SELECT * FROM parkirjakarta";
    $stmt = $this->db->prepare($sql);
    $stmt->execute([":id" => $id]);
    $result = $stmt->fetchAll();
    return $response->withJson(["status" => "success", "data" => $result], 200);
});

