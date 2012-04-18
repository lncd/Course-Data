<?php
/**
 * MyClass File Doc Comment
 *
 * PHP Version 5
 *
 * @category DummyData
 * @package  DummyData
 * @author   Jamie Mahoney <jmahoney127@googlemail.com>
 * @license  http://www.php.net/license/3_01.txt  PHP License 3.01
 * @link     coursedata.blogs.lincoln.ac.uk
 *
 */

/**
 * Dummy_Data
 *
 * @category DummyData
 * @package  DummyData
 * @author   Jamie Mahoney <jmahoney127@googlemail.com>
 * @license  http://www.php.net/license/3_01.txt  PHP License 3.01
 * @link     coursedata.blogs.lincoln.ac.uk
 */

class Assertions extends CI_Model 
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
	* Function generates an 'earned badge' in the db
	*
	* @param string $ind_id ID of individual
	* @param integer $badge_id ID of badge to be awarded
	* @param string $email Email address of individual
	*
	* @return Nothing
	* @access Public
	*/
	function earn_badge($ind_id, $badge_id, $email)
	{
		$returning = array();
		//First, ensure that badge hasn't been awarded previously
		$query = $this->db
					->select()
					->where('person_id', $ind_id)
					->where('badge_id', $badge_id)
					->get('badges_earned');
		
		foreach($query->result() as $a_result)
		{
			$returning[] = $a_result;
		}
		
		return $returning;
		//Next, ensure all objectives for desired badge have been met
		
		
		//Thirdly, award badge
				
	}
}