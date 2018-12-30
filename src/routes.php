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

//menampilkan semua list parkir
$app->get("/parkir/", function (Request $request, Response $response, $args){
    $sql = "SELECT * FROM parkirjakarta";
    $stmt = $this->db->prepare($sql);
    $stmt->execute();
    $result = $stmt->fetchAll();
    return $response->withJson(["status" => "success", "data" => $result], 200);
});

//menampilkan detail list by id
$app->get("/parkir/detail/{id}", function (Request $request, Response $response, $args){
    $id = $args["id"];
    $sql = "SELECT * FROM parkirjakarta WHERE id=:id";
    $stmt = $this->db->prepare($sql);
    $stmt->execute([":id" => $id]);
    $result = $stmt->fetchAll();
    return $response->withJson(["status" => "success", "data" => $result], 200);
});

//menampilkan list berdasarkan kategori
$app->get("/parkir/kategori/{kategori}", function (Request $request, Response $response, $args){
    $kategori = $args["kategori"];
    $sql = "SELECT * FROM parkirjakarta WHERE jenis_lokasi_parkir=:kategori";
    $stmt = $this->db->prepare($sql);
    $stmt->execute([":kategori" => $kategori]);
    $result = $stmt->fetchAll();
    return $response->withJson(["status" => "success", "data" => $result], 200);
});

//search list
$app->get("/parkir/search/", function (Request $request, Response $response, $args){
    $keyword = $request->getQueryParam("keyword");
    $sql = "SELECT * FROM parkirjakarta WHERE nama_tempat_parkir LIKE '%$keyword%' OR alamat LIKE '%$keyword%' OR jenis_lokasi_parkir LIKE '%$keyword%'";
    $stmt = $this->db->prepare($sql);
    $stmt->execute();
    $result = $stmt->fetchAll();
    return $response->withJson(["status" => "success", "data" => $result], 200);
});

