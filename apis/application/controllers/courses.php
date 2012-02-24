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
			$this->mongo_db->where('_id', $_GET['kisID']);
		
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
		
		if(isset($_GET['feeWaiver']))
			$this->mongo_db->where('feeWaiver', $_GET['feeWaiver']);
			
		if(isset($_GET['maxFee']))
			$this->mongo_db->where_lte('maxFee', intval($_GET['maxFee']));
			
		if(isset($_GET['meansTested']))
			$this->mongo_db->where('meansTested', intval($_GET['meansTested']));
			
		if(isset($_GET['nssQuality']))
			$this->mongo_db->where_gte('nss.overall.quality', floatval($_GET['nssQuality']));
			
		if(isset($_GET['nssExplaining']))
			$this->mongo_db->where_gte('nss.teaching.explaining', floatval($_GET['nssTeaching']));
			
		if(isset($_GET['nssInteresting']))
			$this->mongo_db->where_gte('nss.teaching.interesting', floatval($_GET['nssInteresting']));
			
		if(isset($_GET['nssEnthusiastic']))
			$this->mongo_db->where_gte('nss.teaching.enthusiastic', floatval($_GET['nssEnthusiastic']));	
		
		if(isset($_GET['nssStimulating']))
			$this->mongo_db->where_gte('nss.teaching.stimulating', floatval($_GET['nssStimulating']));
			
		if(isset($_GET['nssCriteria']))
			$this->mongo_db->where_gte('nss.assessment.criteria', floatval($_GET['nssCriteria']));
			
		if(isset($_GET['nssFair']))
			$this->mongo_db->where_gte('nss.assessment.fair', floatval($_GET['nssFair']));
		
		if(isset($_GET['nssPrompt']))
			$this->mongo_db->where_gte('nss.assessment.prompt', floatval($_GET['nssPrompt']));
			
		if(isset($_GET['nssComments']))
			$this->mongo_db->where_gte('nss.assessment.comments', floatval($_GET['nssComments']));
		
		if(isset($_GET['nssClarify']))
			$this->mongo_db->where_gte('nss.assessment.clarify', floatval($_GET['nssClarify']));
			
		if(isset($_GET['nssSupport']))
			$this->mongo_db->where_gte('nss.academic.support', floatval($_GET['nssSupport']));	
			
		if(isset($_GET['nssContact']))
			$this->mongo_db->where_gte('nss.academic.contact', floatval($_GET['nssContact']));	
			
		if(isset($_GET['nssAdvice']))
			$this->mongo_db->where_gte('nss.academic.advice', floatval($_GET['nssAdvice']));	
			
		if(isset($_GET['nssTimetable']))
			$this->mongo_db->where_gte('nss.organisation.timetable', floatval($_GET['nssTimetable']));
			
		if(isset($_GET['nssChanges']))
			$this->mongo_db->where_gte('nss.organisation.changes', floatval($_GET['nssChanges']));
			
		if(isset($_GET['nssOrganised']))
			$this->mongo_db->where_gte('nss.organisation.organised', floatval($_GET['nssOrganised']));
		
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