<?php
	//Include database and dom
	include_once("DBModel.php");
	include_once("DOMModel.php");
	//Establish a new database connection
	$DBController = new DBModel();
	//If the connection could not be established
	if (!$DBController)
		//Write error message
		echo "Could not connect to the database";
	else{	//If the connection succeeded, open the XML file
		$doc = new DOMDocument();
		if(!$doc->load('SkierLogs.xml')){
			//If the file could not be opened, give error message
			echo "Kunne ikke laste dokument";
		}else{
			//Otherwise run the functions to add entities to the database.
			echo "Dokument lastet\n\n";
			kjorAddClubs($DBController, $doc);
			kjorAddSkiers($DBController, $doc);
			kjorAddJournal($DBController, $doc);
		}
	}
?>