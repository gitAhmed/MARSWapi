<?php
use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

$app = new \Slim\App;

$app->options('/{routes:.+}', function ($request, $response, $args) {
    return $response;
});

$app->add(function ($req, $res, $next) {
    $response = $next($req, $res);
    return $response
            ->withHeader('Access-Control-Allow-Origin', '*')
            ->withHeader('Access-Control-Allow-Headers', 'X-Requested-With, Content-Type, Accept, Origin, Authorization')
            ->withHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, OPTIONS');
});

// Update Student

$app->put('/api/instructor/update/{id}', function(Request $request, Response $response){
    $id = $request->getAttribute('id');
    $f_name = $request->getParam('f_name');
    $l_name = $request->getParam('l_name');
    $email = $request->getParam('email');
    $password = $request->getParam('password');
    

    $sql = "UPDATE instructor SET
				f_name 	= :f_name,
				l_name 	= :l_name,
                email	= :email,
                password= :password,
               
			WHERE id = $id";

    try{
        // Get DB Object
        $db = new db();
        // Connect
        $db = $db->connect();

        $stmt = $db->prepare($sql);

        $stmt->bindParam(':f_name', $f_name);
        $stmt->bindParam(':l_name',  $l_name);
        $stmt->bindParam(':email',      $email);
        $stmt->bindParam(':password',    $password);

        $stmt->execute();

        echo '{"notice": {"text": "Student Updated"}';

    } catch(PDOException $e){
        echo '{"error": {"text": '.$e->getMessage().'}';
    }
});