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
 * Add
 *
 * @category DummyData
 * @package  DummyData
 * @author   Jamie Mahoney <jmahoney127@googlemail.com>
 * @license  http://www.php.net/license/3_01.txt  PHP License 3.01
 * @link     coursedata.blogs.lincoln.ac.uk
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
		$this->db->where('objective_text', mysql_escape_string($this->input->get('text')));
		$this->db->from('objectives');
		return $this->db->count_all_results();		
	}
	
	/**
	* Function adds the objective data to the database
	*
	* @param string $obj_text Text describing the objective
	* @param int $obj_type ID number of objective type
	* 
	* @return Nothing
	* @access Public
	*/
	public function add_objective_data($obj_text, $obj_type)
	{
		$data = array('objective_text' => mysql_escape_string($this->input->get('text')), 'objective_type_id' => (int)$this->input->get('type'));
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
	function get_objective_id($obj_text)
	{
		$obj_id = 0;
		
		$query = $this->db
						->select()
						->where('objective_text', mysql_escape_string($this->input->get('text')))
						->where('objective_type_id', (int)$this->input->get('type'))
						->get('objectives');
						
		foreach($query->result() as $result)
		{
			$obj_id = $result->id;
		}
		
		return $obj_id;
	}
}