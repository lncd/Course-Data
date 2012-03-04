<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
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
 	* Modules
 	*
 	* @category CourseDataAPIs
	* @package  CourseDataAPIs
 	* @author   Jamie Mahoney <jmahoney127@googlemail.com>
 	* @license  http://www.php.net/license/3_01.txt  PHP License 3.01
 	* @link     coursedata.blogs.lincoln.ac.uk
 	*/

class Modules extends CI_Controller {

	/**
	* Default function for controller.
	*
	* @return Nothing
	* @access Public
	*/
	public function index()
	{
		$results = array();
		
		if($this->input->get('code'))
			$this->mongo_db->where('_id', $this->input->get('code'));
			
		if($this->input->get('title'))
			$this->mongo_db->like('title', $this->input->get('title'));
		
		if($this->input->get('department'))
			$this->mongo_db->like('owningDepartment', $this->input->get('department'));
			
		if($this->input->get('subject'))
			$this->mongo_db->like('subject', $this->input->get('subject'));
		
		if($this->input->get('synopsis')){
			$parameters = explode(',', $this->input->get('synopsis'));
			foreach($parameters as $param)
				$this->mongo_db->like('moduleSynopsis', $param);
		}
		
		if($this->input->get('syllabus')){
			$parameters = explode(',', $this->input->get('syllabus'));
			foreach($parameters as $param)
				$this->mongo_db->like('outlineSyllabus', $param);
		}
		
		if($this->input->get('jacs')){
			$parameters = explode(',', $this->input->get('jacs'));
			foreach($parameters as $param)
				$this->mongo_db->like('jacsCodes', $param);
		}
		
		if($this->input->get('outcomes')){
			$parameters = explode(',', $this->input->get('outcomes'));
			foreach($parameters as $param)
				$this->mongo_db->like('learningOutcomes', $param);
		}
			
		$output = $this->mongo_db->get('modules');
			
		if($output !== NULL)
		{
			$results['error'] = 0;
			$results['count'] = count($output);
			$results['modules'] = $output;
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

// End of file modules.php
// Location: ./controllers/modules.php