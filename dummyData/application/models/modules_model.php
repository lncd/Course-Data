<?php
/**
 * MyClass File Doc Comment
 *
 * PHP Version 5
 *
 * @category DummyData
 * @package	 DummyData
 * @author   Jamie Mahoney <jmahoney127@googlemail.com>
 * @license  http://www.php.net/license/3_01.txt  PHP License 3.01
 * @link     coursedata.blogs.lincoln.ac.uk
 *
 */

/**
 * Dummy_Data
 *
 * @category DummyData
 * @package	 DummyData
 * @author   Jamie Mahoney <jmahoney127@googlemail.com>
 * @license  http://www.php.net/license/3_01.txt  PHP License 3.01
 * @link     coursedata.blogs.lincoln.ac.uk
 */

class Modules_model extends CI_Model {

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
	* Function queries mongo with passed query parameters and returns the results.
	* @return Query results
	* @access Public
	*/
	function get_data()
	{
		$username = "root";
		$password = "root";
		$hostname = "localhost";	
		$dbh = mysql_connect($hostname, $username, $password) or die("Unable to connect to MySQL");
		mysql_select_db('modules',$dbh);
		
		$returning = "";
		
		$sql1 = "SELECT * FROM 03_module";
		$result1 = mysql_query($sql1) or die('Couldn`t execute query 1.');
		$returning.= 'Amount of modules' . mysql_num_rows($result1) . '<br>';		
		$modules = array();
		//For each module
		while($row = mysql_fetch_array($result1,MYSQL_ASSOC))
		{
			$module = array();
			$module['_id'] = $row['code'];
			$module['title'] = $row['title'];
			$sql2 = "SELECT * FROM 01_department WHERE 01_department.id = " . $row['owningDepartment'];
			$dep = mysql_fetch_row(mysql_query($sql2));
			$module['owningDepartment'] = $dep[1];
			$module['subject'] = $row['subject'];
			$module['credits'] = $row['creditRating'];
			$module['level'] = $row['level'];
			$sql3 = "SELECT * FROM 02_staff WHERE 02_staff.staffID = " . $row['moduleCoordinator'];
			$coOrd = mysql_fetch_row(mysql_query($sql3));
			$module['moduleCoOrdinator'] = 	$coOrd[1];
			$module['moduleCoOrdinatorID'] = $row['moduleCoordinator'];
			$module['moduleSynopsis'] = nl2br($row['moduleSynopsis']);
			$module['outlineSyllabus'] = nl2br($row['outlineSyllabus']);
			$module['ltMethods'] = nl2br($row['l_tMethods']);
			if($row['accreditation'] != '')
				$module['accreditation'] = $row['accreditation'];
			else
				$module['accreditation'] = '';
			$module['indicativeReading'] = nl2br($row['indicativeReading']);
			$module['learningOutcomes'] = array();
			
			$sql4 = "SELECT * FROM 05_learningOutcomes INNER JOIN 06_moduleLearningOutcomes ON 06_moduleLearningOutcomes.outcomeID = 05_learningOutcomes.outcomeID WHERE 06_moduleLearningOutcomes.moduleCode = '" . $module['_id'] . "'";
			$outcomes = mysql_query($sql4) or die('Could not execute outcomes query.');
						
			while($row1 = mysql_fetch_array($outcomes,MYSQL_ASSOC))
			{
				$module['learningOutcomes'][] = $row1['outcomeText'];
			}
			
			$sql5 = "SELECT * FROM 07_assessments INNER JOIN 09_moduleAssessments ON 09_moduleAssessments.assessmentID = 07_assessments.assessmentID WHERE 09_moduleAssessments.moduleCode = '" . $module['_id'] . "'";
			$assessments = mysql_query($sql5) or die('Could not execute assessments query.');
			$module['assessments'] = array();
			while($row2 = mysql_fetch_array($assessments,MYSQL_ASSOC))
			{
				$module['assessments'][] = array(
												'assessmentMethod' => $row2['assessmentMethod'],
												'weighting' => $row2['weighting'],
												'finalAssessment' => $row2['finalAssessment'],
												'submissionDate' => $row2['submissionDate']
												);
			}
			$sql6 = "SELECT * FROM 02_staff INNER JOIN 04_teachingDemoStaff ON 04_teachingDemoStaff.staffID = 02_staff.staffID WHERE 04_teachingDemoStaff.moduleCode = '" . $module['_id'] . "'";
			$teaching = mysql_query($sql6) or die('Could not execute teaching staff query.');
			$module['teachingStaff'] = array();
			while($row3 = mysql_fetch_array($teaching,MYSQL_ASSOC))
			{
				$module['teachingStaff'][] = $row3['staffID'];
			}
			
			$module['contactTime'] = array();
			$sql7 = "SELECT * FROM 10_contact INNER JOIN 11_moduleContact ON 11_moduleContact.contactID = 10_contact.contactID WHERE 11_moduleContact.moduleCode = '" . $module['_id'] . "'";
			$contacts = mysql_query($sql7) or die('Could not execute contact time query.');
			while($row4 = mysql_fetch_array($contacts,MYSQL_ASSOC))
			{
				$module['contactTime'][] = array(
												'type' => $row4['type'],
												'hours' => $row4['hours']
												);
			}
			
			$module['jacsCodes'] = array();
			$sql8 = "SELECT * FROM 12_jacsCodes WHERE moduleCode = '" . $module['_id'] . "'";
			$jacs = mysql_query($sql8) or die('Could not execute JACS code query.');
			while($row5 = mysql_fetch_array($jacs,MYSQL_ASSOC))
			{
				$module['jacsCodes'][] = $row5['jacsCode'];
			}
			
			$module['preRequisites'] = array();
			$sql9 = "SELECT * FROM 14_preReq WHERE moduleCode = '" . $module['_id'] . "'";
			$pre = mysql_query($sql9) or die('Could not execute pre requisites query.');
			while($row5 = mysql_fetch_array($pre,MYSQL_ASSOC))
			{
				$module['preRequisites'][] = $row5['preRequisite'];
			}
			
			$module['coRequisites'] = array();
			$sql9 = "SELECT * FROM 15_coReq WHERE moduleCode = '" . $module['_id'] . "'";
			$pre = mysql_query($sql9) or die('Could not execute pre requisites query.');
			while($row5 = mysql_fetch_array($pre,MYSQL_ASSOC))
			{
				$module['coRequisites'][] = $row5['coRequisite'];
			}
			
			$module['barredCombinations'] = array();
			$sql9 = "SELECT * FROM 16_barredCombinations WHERE moduleCode1 = '" . $module['_id'] . "'";
			$pre = mysql_query($sql9) or die('Could not execute pre requisites query.');
			while($row5 = mysql_fetch_array($pre,MYSQL_ASSOC))
			{
				$module['barredCombinations'][] = $row5['moduleCode2'];
			}
			
			$this->mongo_db->insert('modules', $module);
		}
		
		return 'Inserted module data from mysql <br>';
		
		
	}
	
	
}