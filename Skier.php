<?php

/** The Model is the class holding data related to one skier. 
 * @author Rune Hjelsvold and modified by Per-Kristian Kongelf Buer
 * @see http://php-html.net/tutorials/model-view-controller-in-php/ The tutorial code used as basis.
 */
class skier {
	public $userName;
	public $firstName;
	public $lastName;
	public $dateOfBirth;

/** Constructor
 * @param string $userName Skier userName
 * @param string $firstName Skier firstName 
 * @param string $lastName Skier lastName 
 * @param int $dateOfBirth Skier dateOfBirth 
 */
	public function __construct($userName, $firstName, $lastName, $dateOfBirth)  
    {  
        $this->userName = $userName;
	    $this->firstName = $firstName;
	    $this->lastName = $lastName;
	    $this->dateOfBirth = $dateOfBirth;
    } 
}

?>