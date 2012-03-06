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
		if($this->mongo_db->get_wheres() > 0)
		{
			
			if((isset($output)) AND (count($output) !== 0))
			{

			$results['error'] = 0;
			$results['count'] = count($output);
			if(count($output) > 50)
				$results['message'] = 'Amount of potential results is greater than 50. Please narrow your search using more parameters, or more specific search terms.';
			$results['modules'] = $output;
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

// End of file modules.php
// Location: ./controllers/modules.php