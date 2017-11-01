<?php
include_once("Skier.php");
include_once("Club.php");
include_once("Journal.php");

/** The Model is the class holding data about SkierLogs. 
 * @author Rune Hjelsvold modified by Per-Kristian Kongelf Buer
 * @see http://php-html.net/tutorials/model-view-controller-in-php/ The tutorial code used as basis.
 */
class DBModel
{        
    /**
      * The PDO object for interfacing the database
      *
      */
    protected $db = null;  
    
    /**
	 * @throws PDOException
     */
    public function __construct($db = null)  
    {
        if ($db) 
        {
            $this->db = $db;
        }
        else
        {
            // Create PDO connection            
            try {
                $this->db = new PDO('mysql:host=localhost;dbname=assignment_5;charset=utf8',
                'root', '',
                // Set server in exception mode
                array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION)); 
                //Catch error and throw
            } catch(PDOException $ex) {
            throw $ex;
            }  
        }
    }
 
    /** Adds a new skier to the collection.
     * @param $skier The skier to be added .
	 * @throws PDOException
     */
    public function addSkier($skier)
    {
        //Prepare statement and bind values for the skier to be added to the database
        try {
            $stmt = $this->db->prepare('INSERT INTO skier (userName, firstName, lastName, dateOfBirth)'
            . 'VALUES (:userName, :firstName, :lastName, :dateOfBirth)');
            $stmt->bindValue(':userName', $skier->userName);
            $stmt->bindValue(':firstName', $skier->firstName);
            $stmt->bindValue(':lastName', $skier->lastName);
			$stmt->bindValue(':dateOfBirth', $skier->dateOfBirth);
            $stmt->execute();
        }   catch(PDOException $ex) {
            throw $ex;
            }     
    }

    /** Adds a new journal to the collection.
     * @param $journal The journal to be added .
	 * @throws PDOException
     */
    public function addjournal($journal)
    {
        //Prepare statement and bind values for the journal to be added to the database
        try {
            $stmt = $this->db->prepare('INSERT INTO journal (fallYear, clubID, skierUserName, totalDistance)'
            . 'VALUES (:fallYear, :clubID, :skierUserName, :totalDistance)');
            $stmt->bindValue(':fallYear', $journal->fallYear);
            $stmt->bindValue(':clubID', $journal->clubID);
            $stmt->bindValue(':skierUserName', $journal->skierUserName);
			$stmt->bindValue(':totalDistance', $journal->totalDistance);
            $stmt->execute();
        }   catch(PDOException $ex) {
            throw $ex;
            }     
    }
	
	    /** Adds a new journal to the collection.
     * @param $journal The journal to be added .
	 * @throws PDOException
     */
    public function addClub($club)
    {
        //Prepare statement and bind values for the club to be added to the database
        try {
            $stmt = $this->db->prepare('INSERT INTO club (id, clubName, city, county)'
            . 'VALUES (:id, :clubName, :city, :county)');
            $stmt->bindValue(':id', $club->id);
            $stmt->bindValue(':clubName', $club->clubName);
            $stmt->bindValue(':city', $club->city);
			$stmt->bindValue(':county', $club->county);
            $stmt->execute();
        }   catch(PDOException $ex) {
            throw $ex;
            }  
    }
}
?>