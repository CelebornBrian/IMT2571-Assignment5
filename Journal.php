<?php

/** The Model is the class holding data related to one Journal. 
 * @author Rune Hjelsvold and modified by Per-Kristian Kongelf Buer
 * @see http://php-html.net/tutorials/model-view-controller-in-php/ The tutorial code used as basis.
 */
class journal {
	public $fallYear;
	public $clubID;
	public $skierUserName;
	public $totalDistance;

/** Constructor
 * @param string $fallYear Journal fallYear
 * @param string $clubID Journal clubID 
 * @param string $skierUserName Journal skierUserName 
 * @param int $totalDistance Journal totalDistance 
 */
	public function __construct($fallYear, $clubID, $skierUserName, $totalDistance)  
    {  
        $this->fallYear = $fallYear;
	    $this->clubID = $clubID;
	    $this->skierUserName = $skierUserName;
	    $this->totalDistance = $totalDistance;
    } 
}

?>