<?php

include 'db.php';

// NECESSARY WHEN VUEJS RUNS IN DEV MODE
if(isset($_GET['session_id'])) {
    $session_id = $_GET['session_id'];
    session_id($session_id);
}

session_start();

// ligação à base de dados
$db = dbconnect($hostname,$db_name,$db_user,$db_passwd);

if($_SERVER['REQUEST_METHOD'] == 'GET') {

	if (!isset($_GET['cat_id']))
		$query = 'select j.title, j.id, j.image, j.location, j.salary, j.description, j.company, j.created_at, p.name as publisher, jc.name as category from jobs as j inner join (publishers as p, jobcategories as jc) on (p.id=j.publisher_id and jc.id=j.cat_id) order by j.created_at desc';
	else 
		$query = 'select j.title, j.id, j.image, j.location, j.salary, j.description, j.company, j.created_at, p.name as publisher, jc.name as category from jobs as j inner join (publishers as p, jobcategories as jc) on (p.id=j.publisher_id and jc.id=j.cat_id) where jc.id=' . $_GET['cat_id'] . ' order by j.created_at desc';

	// executar a query
	if(!($result = @ mysqli_query($db, $query)))
		showerror($db);

	// vai buscar o resultado da query

	$nrows  = mysqli_num_rows($result);
	$jobs = [];
	for($i=0; $i<$nrows; $i++)
		$jobs[$i] = mysqli_fetch_assoc($result);


	// allow cross-origin requests (CORS)
	header('Access-Control-Allow-Origin: *');
	header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
	header("Access-Control-Allow-Headers: Authorization, Origin, User-Token, X-Requested-With, Content-Type");
	// convert to JSON
	$jobsJSON = json_encode($jobs);
	echo $jobsJSON;
	
}

if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_SESSION['user_id'])) {

	$user_id=$_SESSION['user_id'];

	$json=file_get_contents('php://input');
	$data = json_decode($json, true);
	
	// ligação à base de dados
	$db = dbconnect($hostname,$db_name,$db_user,$db_passwd);
	

	if (isset($data['company']) && isset($data['image']) && isset($data['cat_id']) && isset($data['location']) && isset($data['title']) && isset($data['description']) && isset($data['salary'])) {
		// criar query numa string
		$present_date = date("Y-m-d H:i:s");
		$query = "INSERT INTO jobs (company, image, cat_id, location, title, description, salary, created_at, publisher_id)
					VALUES('" . $data['company'] . "','" . $data['image'] . "','" . $data['cat_id'] . "','" . $data['location'] . "','" . $data['title'] . "','" . $data['description'] . "','" . $data['salary'] . "','" . $present_date . "','" . $user_id . "')";

		// executar a query
		if(!($result = @ mysqli_query($db, $query)))
			showerror($db);
			
		// get last job
			$query = "select j.title, j.id, j.image, j.location, j.salary, j.description,  j.company, j.created_at, p.name as publisher, jc.name as category from jobs as j inner join (publishers as p, jobcategories as jc) on (p.id=j.publisher_id and jc.id=j.cat_id) where j.publisher_id='$user_id' order by j.created_at desc limit 1";
			if(!($result = @ mysqli_query($db, $query)))
				showerror($db);
			
			$last_order = mysqli_fetch_assoc($result);
		
		// allow cross-origin requests (CORS)
		header('Access-Control-Allow-Origin: *');
		header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
		header("Access-Control-Allow-Headers: Authorization, Origin, User-Token, X-Requested-With, Content-Type");
		// convert to JSON
		$json=json_encode($last_order);
		echo $json;
	}
	else {
    	header($_SERVER["SERVER_PROTOCOL"] . " 400 Bad Request");    
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
        header("Access-Control-Allow-Headers: Authorization, Origin, User-Token, X-Requested-With, Content-Type");
        die('{"Error":"missing one or more properties in data object"}');         
    }
}

// allow cross-origin requests (CORS)
if($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {
	header('Access-Control-Allow-Origin: *');
	header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
	header("Access-Control-Allow-Headers: Authorization, Origin, User-Token, X-Requested-With, Content-Type");	
}	

// fechar a ligaçãbase de dados
mysqli_close($db);

?>

