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

// Add Incentive

$app->post('/api/incentive/add', function(Request $request, Response $response){

    $title = $request->getParam('title');
    $points = $request->getParam('points');
    $description = $request->getParam('description');
    $instructor = $request->getParam('instructor');

    $sql = "INSERT INTO incentive (title,description,points,instructor) VALUES
    (:title,:description,:points,:instructor)";

    try{
        // Get DB Object
        $db = new db();
        // Connect
        $db = $db->connect();

        $stmt = $db->prepare($sql);
      //  $stmt->bindParam(':id', "");

        $stmt->bindParam(':title', $title);
        $stmt->bindParam(':description',  $description);
        $stmt->bindParam(':points',      $points);
        $stmt->bindParam(':instructor', $instructor);


        $stmt->execute();

        echo '{"notice": {"text": "Incentive Added"}';

    } catch(PDOException $e){
        echo '{"error": {"text": '.$e->getMessage().'}';
    }
});

// update Incentive
$app->put('/api/incentive/update/{id}', function(Request $request, Response $response){
    $id 			= $request->getAttribute('id');
    $title 			= $request->getParam('title');
    $points			= $request->getParam('points');
    $description	= $request->getParam('description');
    

    $sql = "UPDATE incentive SET
				title 	= :title,
				description 	= :description,
                points	= :points
               
			WHERE id = $id ";

    try{
        // Get DB Object
        $db = new db();
        // Connect
        $db = $db->connect();

        $stmt = $db->prepare($sql);

        $stmt->bindParam(':title', $title);
        $stmt->bindParam(':description',  $description);
        $stmt->bindParam(':points',      $points);

        $stmt->execute();

        echo '{"notice": {"text": "Incentive updated"}';

    } catch(PDOException $e){
        echo '{"error": {"text": '.$e->getMessage().'}';
    }
});


// Delete Incentive
$app->delete('/api/incentive/delete/{id}', function(Request $request, Response $response){
    $id = $request->getAttribute('id');

    $sql = "DELETE FROM incentive WHERE id = $id";

    try{
        // Get DB Object
        $db = new db();
        // Connect
        $db = $db->connect();

        $stmt = $db->prepare($sql);
        $stmt->execute();
        $db = null;
        echo '{"notice": {"text": "Incentive Deleted"}';
    } catch(PDOException $e){
        echo '{"error": {"text": '.$e->getMessage().'}';
    }
});