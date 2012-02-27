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
		
		if(isset($_GET['kisID']))
			$this->mongo_db->where('_id', $_GET['kisID']);
		
		if(isset($_GET['institution']))
			$this->mongo_db->where('applicationUKPRN', $_GET['institution']);
			
		if(isset($_GET['courseTitle']))
			$this->mongo_db->like('courseTitle', $_GET['courseTitle']);
			
		if(isset($_GET['distance']))
			$this->mongo_db->where('distanceLearningOnly', $_GET['distance']);
			
		if(isset($_GET['level']))
			$this->mongo_db->where('levelOfAward', $_GET['level']);
			
		if(isset($_GET['partTime']))
			$this->mongo_db->where('partTimeOnly', intval($_GET['partTime']));
		
		if(isset($_GET['jacs']))
			$this->mongo_db->where('fullJacs', $_GET['jacs']);
			
		if(isset($_GET['teacher']))
			$this->mongo_db->where('teacherTraining', intval($_GET['teacher']));
			
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
			
		if(isset($_GET['nssLibrary']))
			$this->mongo_db->where_gte('nss.resources.library', floatval($_GET['nssLibrary']));
		
		if(isset($_GET['nssICT']))
			$this->mongo_db->where_gte('nss.resources.ict', floatval($_GET['nssICT']));
			
		if(isset($_GET['nssSpecialist']))
			$this->mongo_db->where_gte('nss.resources.specialist', floatval($_GET['nssSpecialist']));
			
		if(isset($_GET['nssConfidence']))
			$this->mongo_db->where_gte('nss.development.confidence', floatval($_GET['nssConfidence']));
		
		if(isset($_GET['nssCommunication']))
			$this->mongo_db->where_gte('nss.development.communication', floatval($_GET['nssCommunication']));
			
		if(isset($_GET['nssUnfamiliar']))
			$this->mongo_db->where_gte('nss.development.unfamiliar', floatval($_GET['nssUnfamiliar']));
			
		if(isset($_GET['nssImpact']))
			$this->mongo_db->where_gte('nss.studentsUnion.impact', floatval($_GET['nssImpact']));
			
		if(isset($_GET['graduateEmployment']))
			$this->mongo_db->where_gte('employment.graduateEmployment', floatval($_GET['graduateEmployment']));
		
		if(isset($_GET['sixMonth']))
			$this->mongo_db->where_gte('employment.sixMonth', intval($_GET['sixMonth']));
			
		if(isset($_GET['first']))
			$this->mongo_db->where_gte('classification.first', floatval($_GET['first']));
		
		if(isset($_GET['upperSecond']))
			$this->mongo_db->where_gte('classification.upperSecond', floatval($_GET['upperSecond']));
		
		if(isset($_GET['lowerSecond']))
			$this->mongo_db->where_gte('classification.lowerSecond', floatval($_GET['lowerSecond']));
		
		$this->mongo_db->limit(50);
		$output = $this->mongo_db->get('courses');
		
		if(($output !== NULL) && (count($output) !== 0))
		{
			$results['error'] = 0;
			$results['count'] = count($output);
			if(count($output) > 50)
				$results['message'] = 'Amount of potential results is greater than 50. Please narrow your search using more parameters, or more specific search terms.';
			$results['courses'] = $output;
		}
		else
		{
			$results['error'] = 1;
			$results['message'] = 'No results returned.';
		}	
		
		
		echo '<pre>'; 
		print_r($results); 
		echo '</pre>';
	}
}

/* End of file courses.php */
/* Location: ./application/controllers/courses.php */