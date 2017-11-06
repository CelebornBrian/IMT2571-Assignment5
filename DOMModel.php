<?php
//Include each of the class files.
include_once("Skier.php");
include_once("Club.php");
include_once("Journal.php");
//Function for adding clubs to the database
//@param $DBController is the connection to the database
//@param $doc is the XML file opened as a DOMDokument
function kjorAddClubs($DBController, $doc){
	$xpath = new DOMXpath($doc);
	foreach($xpath->query("/SkierLogs/Clubs/Club") as $element){	//Foreach club, 
		$children = $element->childNodes;							//Get child nodes as children
		
		$id = $element->getAttribute('id');							//Get the attribute of the element
		$clubName = $children->item(1)->nodeValue;					//Get the text from the second, 
		$city = $children->item(3)->nodeValue;						//fourth and
		$county = $children->item(5)->nodeValue;					//fifth node
		//Run the addClub function with a new club as parameter, created with variables already got
		$DBController->addClub(new club($id, $clubName, $city, $county));
	}
}
//Function for adding Skiers to the database
//@param $DBController is the connection to the database
//@param $doc is the XML file opened as a DOMDokument
//This function is almost the same as the last. Just different variable names.
function kjorAddSkiers($DBController, $doc){
	$xpath = new DOMXpath($doc);
	foreach($xpath->query("/SkierLogs/Skiers/Skier") as $element){
		$children = $element->childNodes;
		
		$userName = $element->getAttribute('userName');
		$firstName = $children->item(1)->nodeValue;
		$lastName = $children->item(3)->nodeValue;
		$dateOfBirth = $children->item(5)->nodeValue;
		
		$DBController->addSkier(new skier($userName, $firstName, $lastName, $dateOfBirth));
	}
}
//Function for adding Skiers to the database
//@param $DBController is the connection to the database
//@param $doc is the XML file opened as a DOMDokument
function kjorAddJournal($DBController, $doc){
	$xpath = new DOMXpath($doc);
	//For each season:
	foreach($xpath->query("/SkierLogs/Season") as $season){	
		//Get the fallYear attribute then:
		$fallYear = $season->getAttribute('fallYear');
		//For each skiers club, within the fallYear already got, 
		foreach($xpath->query("/SkierLogs/Season[@fallYear = $fallYear]/Skiers") as $skiers){
			//If the skiers acctually have a club, get the id
			if($skiers->hasAttribute('clubId')){
				$clubId = $skiers->getAttribute('clubId');
				//Get each skier within the fallYear that belongs to this spesific club
				foreach($xpath->query("/SkierLogs/Season[@fallYear = $fallYear]/Skiers[@clubId = \"$clubId\"]/Skier") as $skier){
					//Get the username and reset total distance
					$userName = $skier->getAttribute('userName');
					$totalDistance = 0;
					//Go through all entries within this fallYear, for this club and this skier.
					foreach($xpath->query("/SkierLogs/Season[@fallYear = $fallYear]/Skiers[@clubId = \"$clubId\"]/Skier[@userName = \"$userName\"]/Log/Entry/Distance") as $entry){
						//Add up the total distance.
						$totalDistance += $entry->nodeValue;
					}
					//Add a new journal entry to the database based on values already read.
					$DBController->addJournal(new journal($fallYear, $clubId, $userName, $totalDistance));
				}
			//If the skier is not connected to a club this season:
			}else {
				//Set clubid to null
				$clubId = NULL;
				//Go through all skiers where the attibute clubid is not found
				foreach($xpath->query("/SkierLogs/Season[@fallYear = $fallYear]/Skiers[not(@clubId)]/Skier") as $skier){
					//Get the username and reset total distance
					$userName = $skier->getAttribute('userName');
					$totalDistance = 0;
					foreach($xpath->query("/SkierLogs/Season[@fallYear = $fallYear]/Skiers[not(@clubId)]/Skier[@userName = \"$userName\"]/Log/Entry/Distance") as $entry){
						//Add up total distance
						$totalDistance += $entry->nodeValue;
					}
					//Add a new journal entry to the database based on values already read.
					$DBController->addJournal(new journal($fallYear, $clubId, $userName, $totalDistance));
				}
			}
		}
	}
}
?>