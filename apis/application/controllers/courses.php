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
			
		if(isset($_GET['ssQuality']))
			$this->mongo_db->where_gte('studentSatisfaction.quality', intval($_GET['ssQuality']));
		
		if(isset($_GET['ssExplaining']))
			$this->mongo_db->where_gte('studentSatisfaction.explaining', intval($_GET['ssExplaining']));
		
		if(isset($_GET['ssInteresting']))
			$this->mongo_db->where_gte('studentSatisfaction.interesting', intval($_GET['ssInteresting']));
		
		if(isset($_GET['ssSupport']))
			$this->mongo_db->where_gte('studentSatisfaction.quality', intval($_GET['ssSupport']));

		if(isset($_GET['ssPrompt']))
			$this->mongo_db->where_gte('studentSatisfaction.quality', intval($_GET['ssPrompt']));
		
		if(isset($_GET['ssClarify']))
			$this->mongo_db->where_gte('studentSatisfaction.quality', intval($_GET['ssClarify']));
		
		if(isset($_GET['ssLibrary']))
			$this->mongo_db->where_gte('studentSatisfaction.quality', intval($_GET['ssLibrary']));
		
		if(isset($_GET['ssIct']))
			$this->mongo_db->where_gte('studentSatisfaction.quality', intval($_GET['ssIct']));
		
		if(isset($_GET['emGraduate']))
			$this->mongo_db->where_gte('employment.graduateEmployment', (float) $_GET['emGraduate']);
		
		if(isset($_GET['emSixMonth']))
			$this->mongo_db->where_gte('employment.sixMonth', (float) $_GET['emSixMonth']);
		
		if(isset($_GET['emWorkOrStudy']))
			$this->mongo_db->where_gte('employment.workOrStudy',(float) $_GET['emWorkOrStudy']);
		
		if(isset($_GET['emWorkOnly']))
			$this->mongo_db->where_gte('employment.workOnly', (float) $_GET['emWorkOnly']);
			
		if(isset($_GET['emStudyOnly']))
			$this->mongo_db->where_gte('employment.studyOnly', (float) $_GET['emStudyOnly']);
		
		if(isset($_GET['emWorkAndStudy']))
			$this->mongo_db->where_gte('employment.workAndStudy', (float) $_GET['emWorkAndStudy']);
		
		if(isset($_GET['emOther']))
			$this->mongo_db->where_gte('employment.other', (float) $_GET['emOther']);
			
		if(isset($_GET['emUnemployed']))
			$this->mongo_db->where_lte('employment.unemployed', (float) $_GET['emUnemployed']);
			
		
		
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