<?php
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
 	* Courses
 	*
 	* @category CourseDataAPIs
	* @package	CourseDataAPIs
 	* @author   Jamie Mahoney <jmahoney127@googlemail.com>
 	* @license  http://www.php.net/license/3_01.txt  PHP License 3.01
 	* @link     coursedata.blogs.lincoln.ac.uk
 	*/

class Courses extends CI_Controller {

	/**
	* Default function for controller.
	*
	* @return Nothing
	* @access Public
	*/
	public function index()
	{
		$results = array();
		
		
		//Using kis course id
		if(isset($_GET['kisID']))
			$this->mongo_db->where('_id', $_GET['id']);
		
		//Using institution ukprn
		if(isset($_GET['institution']))
			$this->mongo_db->where('applicationUKPRN', $_GET['institution']);
			
		//Using course title like
		if(isset($_GET['courseTitle']))
			$this->mongo_db->like('courseTitle', $_GET['courseTitle']);
		
		//Distance learning only	
		if(isset($_GET['distance']))
			$this->mongo_db->where('distanceLearningOnly', $_GET['distance']);
			
		//Level of award
		if(isset($_GET['level']))
			$this->mongo_db->where('levelOfAward', $_GET['level']);
			
		//Part time course only
		if(isset($_GET['partTime']))
			$this->mongo_db->where('partTimeOnly', intval($_GET['partTime']));
		
		//JACS codes used for course
		if(isset($_GET['jacs']))
			$this->mongo_db->where('fullJacs', $_GET['jacs']);
			
		//Teacher training course?
		if(isset($_GET['teacher']))
			$this->mongo_db->where('teacherTraining', intval($_GET['teacher']));
			
		//UCAS code for course
		if(isset($_GET['ucas']))
			$this->mongo_db->where('ucasProgrammeCode', $_GET['ucas']);
			
						
		$output = $this->mongo_db->get('kisCourses');
		
		if($output !== NULL)
		{
			$results['err'] = 0;
			$results['count'] = count($output);
		}
		else
			$results['error'] = 1;
			
		$results['kisCourses'] = $output;
		
		echo '<pre>'; 
		print_r($results); 
		echo '</pre>';
	}
}

/* End of file courses.php */
/* Location: ./application/controllers/courses.php */