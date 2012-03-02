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
		
		if($this->input->get('kisID'))
			$this->mongo_db->where('_id', $this->input->get('kisID'));
		
		if($this->input->get('institution'))
			$this->mongo_db->where('applicationUKPRN', $this->input->get('institution'));
			
		if($this->input->get('courseTitle'))
			$this->mongo_db->like('courseTitle', $this->input->get('courseTitle'));
			
		if($this->input->get('distance'))
			$this->mongo_db->where('distanceLearningOnly', intval($this->input->get('distance')));
			
		if($this->input->get('level'))
			$this->mongo_db->where('levelOfAward', $this->input->get('level'));
			
		if($this->input->get('partTime'))
			$this->mongo_db->where('partTimeOnly', intval($this->input->get('partTime')));
		
		if($this->input->get('jacs'))
			$this->mongo_db->where('fullJacs', $this->input->get('jacs'));
			
		if($this->input->get('teacher'))
			$this->mongo_db->where('teacherTraining', intval($this->input->get('teacher')));
			
		if($this->input->get('ucas'))
			$this->mongo_db->where('ucasProgrammeCode', $this->input->get('ucas'));			
		
		if($this->input->get('feeWaiver'))
			$this->mongo_db->where('feeWaiver', $this->input->get('feeWaiver'));
			
		if($this->input->get('maxFee'))
			$this->mongo_db->where_lte('maxFee', intval($this->input->get('maxFee')));
			
		if($this->input->get('meansTested'))
			$this->mongo_db->where('meansTested', intval($this->input->get('meansTested')));
			
		if($this->input->get('nssQuality'))
			$this->mongo_db->where_gte('nss.overall.quality', floatval($this->input->get('nssQuality')));
			
		if($this->input->get('nssExplaining'))
			$this->mongo_db->where_gte('nss.teaching.explaining', floatval($this->input->get('nssExplaining')));
			
		if($this->input->get('nssInteresting'))
			$this->mongo_db->where_gte('nss.teaching.interesting', floatval($this->input->get('nssInteresting')));
			
		if($this->input->get('nssEnthusiastic'))
			$this->mongo_db->where_gte('nss.teaching.enthusiastic', floatval($this->input->get('nssEnthusiastic')));	
		
		if($this->input->get('nssStimulating'))
			$this->mongo_db->where_gte('nss.teaching.stimulating', floatval($this->input->get('nssStimulating')));
			
		if($this->input->get('nssCriteria'))
			$this->mongo_db->where_gte('nss.assessment.criteria', floatval($this->input->get('nssCriteria')));
			
		if($this->input->get('nssFair'))
			$this->mongo_db->where_gte('nss.assessment.fair', floatval($this->input->get('nssFair')));
		
		if($this->input->get('nssPrompt'))
			$this->mongo_db->where_gte('nss.assessment.prompt', floatval($this->input->get('nssPrompt')));
			
		if($this->input->get('nssComments'))
			$this->mongo_db->where_gte('nss.assessment.comments', floatval($this->input->get('nssComments')));
		
		if($this->input->get('nssClarify'))
			$this->mongo_db->where_gte('nss.assessment.clarify', floatval($this->input->get('nssClarify')));
			
		if($this->input->get('nssSupport'))
			$this->mongo_db->where_gte('nss.academic.support', floatval($this->input->get('nssSupport')));	
			
		if($this->input->get('nssContact'))
			$this->mongo_db->where_gte('nss.academic.contact', floatval($this->input->get('nssContact')));	
			
		if($this->input->get('nssAdvice'))
			$this->mongo_db->where_gte('nss.academic.advice', floatval($this->input->get('nssAdvice')));	
			
		if($this->input->get('nssTimetable'))
			$this->mongo_db->where_gte('nss.organisation.timetable', floatval($this->input->get('nssTimetable')));
			
		if($this->input->get('nssChanges'))
			$this->mongo_db->where_gte('nss.organisation.changes', floatval($this->input->get('nssChanges')));
			
		if($this->input->get('nssOrganised'))
			$this->mongo_db->where_gte('nss.organisation.organised', floatval($this->input->get('nssOrganised')));
			
		if($this->input->get('nssLibrary'))
			$this->mongo_db->where_gte('nss.resources.library', floatval($this->input->get('nssLibrary')));
		
		if($this->input->get('nssICT'))
			$this->mongo_db->where_gte('nss.resources.ict', floatval($this->input->get('nssICT')));
			
		if($this->input->get('nssSpecialist'))
			$this->mongo_db->where_gte('nss.resources.specialist', floatval($this->input->get('nssSpecialist')));
			
		if($this->input->get('nssConfidence'))
			$this->mongo_db->where_gte('nss.development.confidence', floatval($this->input->get('nssConfidence')));
		
		if($this->input->get('nssCommunication'))
			$this->mongo_db->where_gte('nss.development.communication', floatval($this->input->get('nssCommunication')));
			
		if($this->input->get('nssUnfamiliar'))
			$this->mongo_db->where_gte('nss.development.unfamiliar', floatval($this->input->get('nssUnfamiliar')));
			
		if($this->input->get('nssImpact'))
			$this->mongo_db->where_gte('nss.studentsUnion.impact', floatval($this->input->get('nssImpact')));
			
		if($this->input->get('graduateEmployment'))
			$this->mongo_db->where_gte('employment.graduateEmployment', floatval($this->input->get('graduateEmployment')));
		
		if($this->input->get('sixMonth'))
			$this->mongo_db->where_gte('employment.sixMonth', intval($this->input->get('sixMonth')));
			
		if($this->input->get('first'))
			$this->mongo_db->where_gte('classification.first', floatval($this->input->get('first')));
		
		if($this->input->get('upperSecond'))
			$this->mongo_db->where_gte('classification.upperSecond', floatval($this->input->get('upperSecond')));
		
		if($this->input->get('lowerSecond'))
			$this->mongo_db->where_gte('classification.lowerSecond', floatval($this->input->get('lowerSecond')));
		
		if($this->input->get('presDesc'))
			$this->mongo_db->like('description', $this->input->get('presDesc']);
		
		if($this->input->get('presID'))
			$this->mongo_db->where('presentation.presentationID', intval($this->input->get('presID')));
		
		if($this->input->get('presIdentifier'))
			$this->mongo_db->where('presentation.identifiers', $this->input->get('preseIdentifier']);
		
		if($this->input->get('presInternalID'))
			$this->mongo_db->where('presentation.identifiers.internalID', intval($this->input->get('internalID')));
		
		$this->mongo_db->limit(50);
		$output = $this->mongo_db->get('courses');
		
		if($this->mongo_db->getWheres() > 0)
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

/* End of file courses.php */
/* Location: ./application/controllers/courses.php */