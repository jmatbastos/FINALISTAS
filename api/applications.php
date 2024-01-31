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

if($_SERVER['REQUEST_METHOD'] == 'GET' && isset($_SESSION['user_id'])) {

	$user_id=$_SESSION['user_id'];
	$query = "select a.id, a.job_id, a.file, a.salary, a.motivation, a.created_at, j.title, j.image, j.location, j.description, j.company, jc.name as category from applications as a inner join (jobs as j, jobcategories as jc, users as u) on (a.user_id=u.id and a.job_id=j.id and jc.id=j.cat_id) where a.user_id='$user_id' order by a.created_at desc";

	// executar a query
	if(!($result = @ mysqli_query($db, $query)))
		showerror($db);

	// vai buscar o resultado da query

	$nrows  = mysqli_num_rows($result);
	$applications = [];
	for($i=0; $i<$nrows; $i++)
		$applications[$i] = mysqli_fetch_assoc($result);


	// allow cross-origin requests (CORS)
	header('Access-Control-Allow-Origin: *');
	header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
	header("Access-Control-Allow-Headers: Authorization, Origin, User-Token, X-Requested-With, Content-Type");
	// convert to JSON
	$applicationsJSON = json_encode($applications);
	echo $applicationsJSON;
	
}

if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_SESSION['user_id'])) {

	$user_id=$_SESSION['user_id'];

	$json=file_get_contents('php://input');
	$data = json_decode($json, true);
	
	// ligação à base de dados
	$db = dbconnect($hostname,$db_name,$db_user,$db_passwd);
	

	if ( isset($data['job_id']) && isset($data['motivation']) && isset($data['file']) && isset($data['salary']) ) {
		// criar query numa string
		$present_date = date("Y-m-d H:i:s");
		$query = "INSERT INTO applications (job_id, motivation, file, salary, user_id, created_at)
					VALUES('" . $data['job_id'] . "','" . $data['motivation'] . "','" . $data['file'] . "','" . $data['salary'] .  "','" . $user_id . "', NOW())";

		// executar a query
		if(!($result = @ mysqli_query($db, $query)))
			showerror($db);
			
		// get last application
			$query = "select a.id, a.job_id, a.file, a.salary, a.motivation, a.created_at, j.title, j.image, j.location, j.description, j.company, jc.name as category from applications as a inner join (jobs as j, jobcategories as jc, users as u) on (a.user_id=u.id and a.job_id=j.id and jc.id=j.cat_id) where a.user_id='$user_id' order by a.created_at desc limit 1";
			if(!($result = @ mysqli_query($db, $query)))
				showerror($db);
			
			$new_application = mysqli_fetch_assoc($result);
		
		// allow cross-origin requests (CORS)
		header('Access-Control-Allow-Origin: *');
		header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
		header("Access-Control-Allow-Headers: Authorization, Origin, User-Token, X-Requested-With, Content-Type");
		// convert to JSON
		$json=json_encode($new_application);
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

