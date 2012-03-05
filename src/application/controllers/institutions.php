<?php
	/**
 	* MyClass File Doc Comment
 	*
 	* PHP Version 5
 	*
 	* @category CourseDataAPIs
 	* @package  CourseDataAPIs
 	* @author   Jamie Mahoney <jmahoney127@googlemail.com>
 	* @license  http://www.php.net/license/3_01.txt  PHP License 3.01
 	* @link     coursedata.blogs.lincoln.ac.uk
 	*
 	*/

	/**
 	* Institutions
 	*
 	* @category CourseDataAPIs
	* @package  CourseDataAPIs
 	* @author   Jamie Mahoney <jmahoney127@googlemail.com>
 	* @license  http://www.php.net/license/3_01.txt  PHP License 3.01
 	* @link     coursedata.blogs.lincoln.ac.uk
 	*/

class Institutions extends CI_Controller {

	/**
	* Default function for controller.
	*
	* @return Nothing
	* @access Public
	*/
	public function index()
	{
		$results = array();
		
		if($this->input->get('id'))
			$this->mongo_db->where('_id', intval($this->input->get('id')));		
		if($this->input->get('name'))
			$this->mongo_db->like('institutionName', $this->input->get('name'));
		if($this->input->get('near'))
		{
			$nearArray = explode(',', $this->input->get('near'));
			if(sizeof($nearArray === 4))
			{
				// Lon, lat, radius, limit
			}
			
		}
			
		$output = $this->mongo_db->get('institutions');
		if($this->mongo_db->get_wheres() > 0)
		{
			
			if((isset($output)) AND (count($output) !== 0))
			{

			$results['error'] = 0;
			$results['count'] = count($output);
			if(count($output) > 50)
				$results['message'] = 'Amount of potential results is greater than 50. Please narrow your search using more parameters, or more specific search terms.';
			$results['courses'] = $output;
			}
			else
			{
			$results['error'] = 0;
			$results['count'] = 0;
			$results['message'] = 'No results returned.';
			}
		}
		else
		{
			$results['error'] = 1;
			$results['count'] = 0;
			$results['message'] = 'No valid criteria specified. ';
		}
		
		
		echo json_encode($results);
	}	
}

// End of file institutions.php 
// Location: ./controllers/institutions.php 