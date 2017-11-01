<?php

include_once("Skier.php");
include_once("Club.php");
include_once("Journal.php");

function kjorAddClubs($DBController, $doc){
	$xpath = new DOMXpath($doc);
	foreach($xpath->query("/SkierLogs/Clubs/Club") as $element){
		$children = $element->childNodes;
		
		echo $id = $element->getAttribute('id') . "\t";
		echo $clubName = $children->item(1)->nodeValue . "\t";
		echo $city = $children->item(3)->nodeValue . "\t";
		echo $county = $children->item(5)->nodeValue . "\n";
		
		$DBController->addClub(new club($id, $clubName, $city, $county));
	}
}

function kjorAddSkiers($DBController, $doc){
	$xpath = new DOMXpath($doc);
	foreach($xpath->query("/SkierLogs/Skiers/Skier") as $element){
		$children = $element->childNodes;
		
		echo $userName = $element->getAttribute('userName') . "\n\t";
		echo $firstName = $children->item(1)->nodeValue . "\n\t";
		echo $lastName = $children->item(3)->nodeValue . "\n\t";
		echo $dateOfBirth = $children->item(5)->nodeValue . "\n";
		
		$DBController->addSkier(new skier($userName, $firstName, $lastName, $dateOfBirth));
	}
}

function kjorAddJournal($DBController, $doc){
	$xpath = new DOMXpath($doc);
	foreach($xpath->query("/SkierLogs/Season") as $season){
		echo $fallYear = $season->getAttribute('fallYear') . "\n\t";
		
		foreach($xpath->query("/SkierLogs/Season[@fallYear = $fallYear]/Skiers") as $skiers){
			if($clubId = $skiers->getAttribute('clubId')){
				echo $clubId . "\tUsername should be next\n\t";
				foreach($xpath->query("/SkierLogs/Season[@fallYear = $fallYear]/Skiers[@clubId = " . $clubId . "]/Skier") as $skier){
					echo $userName = $skier->getAttribute('userName') . "\n\t\t";
					echo "\t asdfsdfaksjfaskdjfaskdjfnlaskdfjalsdkfj";
				}
			}
		}
	
	}
}

?>