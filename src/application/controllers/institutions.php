<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 	* MyClass File Doc Comment
 	*
 	* PHP Version 5
 	*
 	* @category CourseDataAPIs
 	* @package	CourseDataAPIs
 	* @author   Jamie Mahoney <jmahoney127@googlemail.com>
 	* @license  http://www.php.net/license/3_01.txt  PHP License 3.01
 	* @link     coursedata.blogs.lincoln.ac.uk
 	*
 	*/

	/**
 	* Institutions
 	*
 	* @category CourseDataAPIs
	* @package	CourseDataAPIs
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
			$this->mongo_db->like('kisInstitutionName', $this->input->get('name'));
			
		$output = $this->mongo_db->get('institutions');
		if($output !== NULL)
		{
			$results['error'] = 0;
			$results['count'] = count($output);
			$results['institutions'] = $output;
		}
		else
		{
			$results['error'] = 1;
			$results['message'] = 'No results returned. Sorry';
		}	
		
		
		echo '<pre>'; 
		print_r($results); 
		echo '</pre>';
	}
	
	
}

// End of file welcome.php 
// Location: ./application/controllers/welcome.php 