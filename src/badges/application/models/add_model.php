<?php
/**
 * MyClass File Doc Comment
 *
 * PHP Version 5
 *
 * @category Badges
 * @package  Models
 * @author   Jamie Mahoney <jmahoney@lincoln.ac.uk>
 * @license  GNU Affero General Public License 3.0
 * @link     coursedata.blogs.lincoln.ac.uk
 *
 */

/**
 * Add
 *
 * @category DummyData
 * @package  DummyData
 * @author   Jamie Mahoney <jmahoney@lincoln.ac.uk>
 * @license  GNU Affero General Public License 3.0
 * @link     coursedata.blogs.lincoln.ac.uk
 */

/*
	Copyright 2012 University of Lincoln
	
	
	This file is part of Badges.

    Badges is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Affero Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    Badges is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with Badges.  If not, see <http://www.gnu.org/licenses/>. 
*/

class Add_model extends CI_Model 
{
	/**
	* Constructor function for model.
	*
	* @return Nothing
	* @access Public
	*/
	function __construct()
	{
		// Call the Model constructor
		parent::__construct();
	}
	
	/**
	* Function checks if the objective text already exists in the database.
	*
	* @param string $obj_text Text describing the objective
	* 
	* @return Amount of results - should be 1 or 0.
	* @access Public
	*/
	public function check_objective_exists($obj_text)
	{
		$this->db->where('objective_text', $obj_text);
		$this->db->from('objectives');
		return $this->db->count_all_results();		
	}
	
	/**
	* Function adds the objective data to the database
	*
	* @param string $obj_text Text describing the objective
	* @param int    $obj_type ID number of objective type
	* 
	* @return Nothing
	* @access Public
	*/
	public function add_objective_data($obj_text, $obj_type)
	{
		$data = array('objective_text' => $obj_text, 'objective_type_id' => $obj_type);
		$this->db->insert('objectives', $data);
	}
	
	/**
	* Function gets the id of an existing objective
	*
	* @param string $obj_text Text describing the objective
	* 
	* @return ID of objective. If returns 0, error occured.
	* @access Public
	*/
	public function get_objective_id($obj_text)
	{
		$obj_id = 0;
		
		$query = $this->db
						->select()
						->where('objective_text', $obj_text)
						->get('objectives');
						
		foreach($query->result() as $result)
		{
			$obj_id = $result->id;
		}
		
		return $obj_id;
	}
	
	/**
	* Function checks if a person has already completed an objective
	*
	* @param string $person 	ID of a person
	* @param int	$objective	ID of the objective
	* 
	* @return ID of objective. If returns 0, error occured.
	* @access Public
	*/
	public function check_objective_complete($person, $objective)
	{
		$this->db->where('person_id', $person);
		$this->db->where('objective_id', (int)$objective);
		$this->db->from('objectives_complete');
		return $this->db->count_all_results();
	}
	
	/**
	* Function adds an objective completion to the database
	*
	* @param string $person 	ID of a person
	* @param int	$objective	ID of the objective
	* 
	* @return Nothing
	* @access Public
	*/
	public function add_completed_objective($person, $objective)
	{
		$data = array('person_id' => $person, 'objective_id' => $objective);
		$this->db->insert('objectives_complete', $data);
	}
	
	/**
	* Function checks if any new badges need to be awarded
	*
	* @param string $person 		Unique ID of a person
	* @param int	$objective		ID of the objective just completed
	* @param string	$email_address	Email address that the badge will be associated with
	*
	* @return Array containing results
	* @access Public
	*/
	public function check_new_badges($person, $objective, $email_address)
	{
		//Counts badges awarded
		$awarded = 0;
		
		//Get all badges that require this objective
		$query = $this->db
						->select()
						->where('objective_id', $objective)
						->get('badge_objectives');
		
		//For each badge
		foreach($query->result() as $a_badge)
		{
			$badge_id = (int)$a_badge->badge_id;
			
			//Get all the objectives for that badge
			$query2 = $this->db
							->select()
							->where('badge_id', $badge_id)
							->get('badge_objectives');
			
			$objectives_required = array();
			
			foreach($query2->result() as $required)
			{
				$objectives_required[] = (int)$required->objective_id;
			}
			
			//Amount of objectives required
			$amount_required = sizeof($objectives_required);
			
			//Now see if user has same amount of required objectives
			$query3 = $this->db
							->or_where_in('objective_id', $objectives_required)
							->where('person_id', $person)
							->from('objectives_complete')
							->count_all_results();
			
			//If user has achieved the same amount of objectives that is required for the badge
			if($query3 == $amount_required)
			{
				$result = $this->award_badge($person, $a_badge->badge_id, $email_address);
				if($result == 1)
					$awarded += 1;
			}
		}		
		
		return $awarded;
	}
	
	public function award_badge($person, $badge, $email_address)
	{
		//Check badge hasn't been awarded
		$awarded = $this->db
						->where('badge_id', $badge)
						->where('person_id', $person)
						->from('badges_earned')
						->count_all_results();
						
		//If not awarded, award it
		if($awarded == 0)
		{
			$data = array('badge_id' => $badge, 'person_id' => $person, 'email_address' => $email_address);
			$this->db->insert('badges_earned', $data);
			
			//Create assertion
			$this->create_assertion($person, $badge, $email_address);
			
			//Bake the badge
			
			return 1;
		}
		else
		{
			return 0;
		}
	}
	
	public function create_assertion($person, $badge, $email)
	{
		//Retrieve data about badge
		$query = $this->db
						->select()
						->where('id', (int)$badge)
						->get('badges');
		
		foreach($query->result() as $a_badge)
		{
			$badge_name = $a_badge->badge_name;
			$badge_image = $a_badge->badge_image;
			$version = $a_badge->version;
			$description = $a_badge->description;
			$criteria = $a_badge->criteria_uri;
		}
						
		$salt = md5(time());
		//First create array of data to store in the assertion
		$data_array = array(
						'recipient' => 'sha256$' . hash('sha256', $email . $salt),
						'hash' =>	$salt,
						'issued_on' => date("Y-m-d", time()),
						'badge' => array(
										'version' => $version,
										'name' =>	$badge_name,
										'image' => $badge_image,
										'description' => $description,
										'criteria' => $criteria,
										'issuer' => array(
															'origin' => 'http://lincoln.ac.uk',
															'name' => 'The University of Lincoln'
														)
									)
						);
						
		//Create a 'random' salt value to append to filename
		$salt = substr(md5(time()), 0, 6);
		
		//Construct filename from person, salt and badge number
		$filename = $person . $salt . $badge;

		//Append file suffix
		$assertion_file = $filename . ".json";
		
		//Create the assertion file
		$fh = fopen($assertion_file, 'w') or die("can't open file");
		fwrite($fh, json_encode($data_array));
		fclose($fh);
		
		//Now store the assertion url in the database, for future reference
		$data = array(
               'assertion_uri' => $assertion_file
            );

		$this->db->where('person_id', $person);
		$this->db->where('badge_id', $badge);
		$this->db->update('badges_earned', $data);
		
		//Now bake the badge
	}
	
	public function check_objective_type($type_text)
	{
		$this->db->where('objective_type', $type_text);
		$this->db->from('objective_types');
		return $this->db->count_all_results();
	}
	
	public function add_objective_type($type_text)
	{
		$data = array('objective_type' => $type_text);
		$this->db->insert('objective_types', $data);
	}
	
	public function get_objective_type_id($type_text)
	{
		$obj_id = 0;
		
		$query = $this->db
						->select()
						->where('objective_type', $type_text)
						->get('objective_types');
						
		foreach($query->result() as $result)
		{
			$obj_id = $result->id;
		}
		
		return $obj_id;
	}
	
	
}