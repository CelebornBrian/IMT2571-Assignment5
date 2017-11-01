<?php

/** The Model is the class holding data related to one club. 
 * @author Rune Hjelsvold and modified by Per-Kristian Kongelf Buer
 * @see http://php-html.net/tutorials/model-view-controller-in-php/ The tutorial code used as basis.
 */
class club {
	public $id;
	public $clubName;
	public $city;
	public $county;

/** Constructor
 * @param string $id Club id
 * @param string $clubName Club clubName 
 * @param string $city Club city 
 * @param date $county Club county 
 */
	public function __construct($id, $clubName, $city, $county)  
    {  
        $this->id = $id;
	    $this->clubName = $clubName;
	    $this->city = $city;
	    $this->county = $county;
    } 
}

?>