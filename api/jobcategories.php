<?php

	include 'db.php';


	if($_SERVER['REQUEST_METHOD'] == 'GET') {
		// ligação à base de dados
		$db = dbconnect($hostname,$db_name,$db_user,$db_passwd);
	   
			$query = 'select * from jobcategories';
			  
			// executar a query
			if(!($result = @ mysqli_query($db, $query)))
				showerror($db);
			
			// vai buscar o resultado da query

			$nrows  = mysqli_num_rows($result);
			$jobcategories = [];
			for($i=0; $i<$nrows; $i++)
				$jobcategories[$i] = mysqli_fetch_assoc($result);

			
			// allow cross-origin requests (CORS)
			header('Access-Control-Allow-Origin: *');
			header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
			header("Access-Control-Allow-Headers: Authorization, Origin, User-Token, X-Requested-With, Content-Type");
			// convert to JSON
			$jobcategoriesJSON = json_encode($jobcategories);
			echo $jobcategoriesJSON;
			// fechar a ligaçãbase de dados
			mysqli_close($db);
	 
	}

	// allow cross-origin requests (CORS)
	if($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {
		header('Access-Control-Allow-Origin: *');
		header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
		header("Access-Control-Allow-Headers: Authorization, Origin, User-Token, X-Requested-With, Content-Type");	
	}



?>

