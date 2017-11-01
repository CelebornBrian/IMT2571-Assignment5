<?php
	include_once("DBModel.php");
	include_once("DOMModel.php");
	
	$DBController = new DBModel();
	if (!$DBController)
		echo "Could not connect to the database";
	else{
		$doc = new DOMDocument();
		if(!$doc->load('SkierLogs.xml')){
			echo "Kunne ikke laste dokument";
		}else{
			echo "Dokument lastet\n\n";
			kjorAddClubs($DBController, $doc);
			kjorAddSkiers($DBController, $doc);
			kjorAddJournal($DBController, $doc);
		}
	}
	
	
?>