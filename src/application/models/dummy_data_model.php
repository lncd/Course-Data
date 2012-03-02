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

class Dummy_data_model extends CI_Model {

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
	* Function adds document to mongo with UoL KIS institution data.
	*
	* @return Confirmation message
	* @access Public
	*/
	function lincoln_kis()
	{
		$lincoln = array();
		$lincoln['_id'] = 10007151; //InstitutionUKPRN - used as unique id for each institution's document
		$lincoln['recordTypeIndicator'] = '12061   2012/13 Key Information Set (KIS) Record';
		$lincoln['institutionName'] = 'The University of Lincoln';
		$lincoln['accomodationCostURL'] = 'http://lincoln.ac.uk/home/campuslife/accommodation/accommodationcosts/';
		//Accomodation Cost URL Welsh
		$lincoln['institutionBedNumber'] = 1037;
		$lincoln['institutionBedLQC'] = 3877;
		$lincoln['institutionBedUQC'] = 4392;
		$lincoln['privateBedLQC'] = 2900;
		$lincoln['privateBedUQC'] = 4000;
		$lincoln['scholarshipProgrammeParticipation'] = 1;

		$this->mongo_db->where(array('_id' => intval($lincoln['_id'])));
		$this->mongo_db->update('institutions', $lincoln, array('upsert' => true));
		return 'Inserted institution: Lincoln <br>';
	}

	/**
	* Function adds document to mongo with G403 course data.
	*
	* @return Confirmation message
	* @access Public
	*/
	function lincoln_g403()
	{
		$courses = array();
		$courses['_id'] = '123456'; //kisCourseIdentifier
		$courses['kisType'] = 1;
		$courses['applicationUKPRN'] = '10007151';
		$courses['assessmentMethodsURL'] = 'http://www.lincoln.ac.uk/home/studyatlincoln/undergraduatecourses/computerscience/#10265';
		$courses['coursePageURL'] = 'http://www.lincoln.ac.uk/home/studyatlincoln/undergraduatecourses/computerscience/';
		$courses['courseTitle'] = 'BSc (Hons) Computer Science';
		$courses['distanceLearningOnly'] = 0;
		$courses['employmentDetailsURL'] = '';
		$courses['feeWaiver'] = 0;
		$courses['feesConfirmation'] = 1;
		$courses['learningTeachingURL'] = 'http://www.lincoln.ac.uk/home/studyatlincoln/undergraduatecourses/computerscience/#10262';
		$courses['levelOfAward'] = 'F';
		$courses['maxFeeEngland'] = 9000;
		$courses['maxFeeNI'] = 9000;
		$courses['meansTestedSupport'] = 1;
		$courses['partTimeOnly'] = 0;
		$courses['fullJacs'][0] = 'G400';
		$courses['supportDetailsURL'] = 'http://www.lincoln.ac.uk/home/studyatlincoln/undergraduatecourses/feesandfunding/';
		$courses['teacherTraining'] = 0;
		$courses['ucasProgrammeCode'] = 'G403';
		$courses['variableFee'] = 0;
		$courses['ilr'][0]['code'] = '1278125';
		$courses['ilr'][0]['year'] = 'BOTH';
		$courses['courseStages'][0]['ltaStage'] = 1;
		$courses['courseStages'][0]['learningAndTeaching']['ltMethodIndicator'] = 'A';
		$courses['courseStages'][0]['learningAndTeaching']['scheduledPercentage'] = 21.6;
		$courses['courseStages'][0]['learningAndTeaching']['independentStudyPercentage'] = 78.4;
		$courses['courseStages'][0]['learningAndTeaching']['placementStudyPercentage'] =  0.0;
		$courses['courseStages'][0]['assessment']['assessmentMethodIndicator'] = 'A';
		$courses['courseStages'][0]['assessment']['courseWorkPercentage'] = 56.0;
		$courses['courseStages'][0]['assessment']['practicalExamPercentage'] = 11.0;
		$courses['courseStages'][0]['assessment']['writtenExamPercentage'] = 33.0;
		$courses['courseStages'][1]['ltaStage'] = 2;
		$courses['courseStages'][1]['learningAndTeaching']['ltMethodIndicator'] = 'A';
		$courses['courseStages'][1]['learningAndTeaching']['scheduledPercentage'] = 18.0;
		$courses['courseStages'][1]['learningAndTeaching']['independentStudyPercentage'] = 82.0;
		$courses['courseStages'][1]['learningAndTeaching']['placementStudyPercentage'] =  0.0;
		$courses['courseStages'][1]['assessment']['assessmentMethodIndicator'] = 'A';
		$courses['courseStages'][1]['assessment']['courseWorkPercentage'] = 76.0;
		$courses['courseStages'][1]['assessment']['practicalExamPercentage'] = 0.0;
		$courses['courseStages'][1]['assessment']['writtenExamPercentage'] = 24.0;
		$courses['courseStages'][2]['ltaStage'] = 3;
		$courses['courseStages'][2]['learningAndTeaching']['ltMethodIndicator'] = 'A';
		$courses['courseStages'][2]['learningAndTeaching']['scheduledPercentage'] = 13.8;
		$courses['courseStages'][2]['learningAndTeaching']['independentStudyPercentage'] = 86.2;
		$courses['courseStages'][2]['learningAndTeaching']['placementStudyPercentage'] =  0.0;
		$courses['courseStages'][2]['assessment']['assessmentMethodIndicator'] = 'A';
		$courses['courseStages'][2]['assessment']['courseWorkPercentage'] = 62.0;
		$courses['courseStages'][2]['assessment']['practicalExamPercentage'] = 6.0;
		$courses['courseStages'][2]['assessment']['writtenExamPercentage'] = 32.0;
		$courses['nss']['overall']['quality'] = 75;
		$courses['nss']['teaching']['explaining'] = 81;
		$courses['nss']['teaching']['interesting'] = 72;
		$courses['nss']['teaching']['enthusiastic'] = 78;
		$courses['nss']['teaching']['stimulating'] = 70;
		$courses['nss']['assessment']['criteria'] = 85;
		$courses['nss']['assessment']['fair'] = 79;
		$courses['nss']['assessment']['prompt'] = 58;
		$courses['nss']['assessment']['comments'] = 60;
		$courses['nss']['assessment']['clarify'] = 57;
		$courses['nss']['academic']['support'] = 70;
		$courses['nss']['academic']['contact'] = 72;
		$courses['nss']['academic']['advice'] = 67;
		$courses['nss']['organisation']['timetable'] = 82;
		$courses['nss']['organisation']['changes'] = 76;
		$courses['nss']['organisation']['organised'] = 73;
		$courses['nss']['resources']['library'] = 79;
		$courses['nss']['resources']['ict'] = 86;
		$courses['nss']['resources']['specialist'] = 85;
		$courses['nss']['development']['confidence'] = 76;
		$courses['nss']['development']['communication'] = 82;
		$courses['nss']['development']['unfamiliar'] = 81;
		$courses['nss']['studentsUnion']['impact'] = 75;
		$courses['employment']['graduateEmployment'] = 70.7;
		$courses['employment']['sixMonth'] = 17483;
		$courses['employment']['workOrStudy'] = 79.3;
		$courses['employment']['workOnly'] = 67.1;
		$courses['employment']['studyOnly'] = 8.5;
		$courses['employment']['workAndStudy'] = 3.7;
		$courses['employment']['other'] = 6.1;
		$courses['employment']['unemployed'] = 14.6;
		$courses['modules'] = array();
		$username = "root";
		$password = "root";
		$hostname = "localhost";	
		$dbh = mysql_connect($hostname, $username, $password) or die("Unable to connect to MySQL");
		mysql_select_db('modules',$dbh);
		
		$sql = "SELECT * FROM 13_programmes WHERE programme = '" . $course['ucasProgrammeCode'] . "'";
		$results = mysql_query($sql) or die('Didnt work.');
		while($row = mysql_fetch_array($results,MYSQL_ASSOC))
		{
			$courses['modules'][] = $row['moduleCode'];
		}
		
		$courses['entryPoints'][0]['lower'] = 120;
		$courses['entryPoints'][0]['upper'] = 159;
		$courses['entryPoints'][0]['amount'] = 1;
		$courses['entryPoints'][1]['lower'] = 160;
		$courses['entryPoints'][1]['upper'] = 199;
		$courses['entryPoints'][1]['amount'] = 8;
		$courses['entryPoints'][2]['lower'] = 200;
		$courses['entryPoints'][2]['upper'] = 239;
		$courses['entryPoints'][2]['amount'] = 14;
		$courses['entryPoints'][3]['lower'] = 247;
		$courses['entryPoints'][3]['upper'] = 279;
		$courses['entryPoints'][3]['amount'] = 17;
		$courses['entryPoints'][4]['lower'] = 280;
		$courses['entryPoints'][4]['upper'] = 319;
		$courses['entryPoints'][4]['amount'] = 23;
		$courses['entryPoints'][5]['lower'] = 320;
		$courses['entryPoints'][5]['upper'] = 359;
		$courses['entryPoints'][5]['amount'] = 13;
		$courses['entryPoints'][6]['lower'] = 360;
		$courses['entryPoints'][6]['upper'] = 399;
		$courses['entryPoints'][6]['amount'] = 20;
		$courses['entryPoints'][7]['lower'] = 400;
		$courses['entryPoints'][7]['upper'] = 439;
		$courses['entryPoints'][7]['amount'] = 3;
		$courses['students']['registered'] = 390;
		$courses['students']['male'] = 92.0;
		$courses['students']['female'] = 8;
		$courses['students']['mature'] = 22;
		$courses['students']['overseas'] = 1;
		$courses['students']['fullTime'] = 92;
		$courses['students']['partTime'] = 8;
		$courses['classification']['first'] = 10;
		$courses['classification']['upperSecond'] = 44;
		$courses['classification']['lowerSecond'] = 33;
		$courses['classification']['otherHonours'] = 11;
		$courses['classification']['ordinaryDegree'] = 0;
		$courses['classification']['notClassified'] = 2;
		
		
		
		
		$this->mongo_db->insert('courses', $courses);
		return 'Inserted Lincoln G403 <br>';
	}

	/**
	* Function adds document to mongo with P500 course data.
	*
	* @return Confirmation message
	* @access Public
	*/
	function lincoln_p500()
	{
		$course = array();
		$course['_id'] = '123457'; //kisCourseIdentifier
		$course['kisType'] = 1;
		$course['applicationUKPRN'] = '10007151';
		$course['assessmentMethodsURL'] = 'http://www.lincoln.ac.uk/home/studyatlincoln/undergraduatecourses/journalism/#10265';
		$course['coursePageURL'] = 'http://www.lincoln.ac.uk/home/studyatlincoln/undergraduatecourses/journalism/';
		$course['courseTitle'] = 'BA (Hons) Journalism';
		$course['distanceLearningOnly'] = 0;
		$course['employmentDetailsURL'] = '';
		$course['feeWaiver'] = 0;
		$course['feesConfirmation'] = 1;
		$course['learningTeachingURL'] = 'http://www.lincoln.ac.uk/home/studyatlincoln/undergraduatecourses/journalism/#5252';
		$course['levelOfAward'] = 'F';
		$course['maxFeeEngland'] = 9000;
		$course['maxFeeNI'] = 9000;
		$course['meansTestedSupport'] = 1;
		$course['partTimeOnly'] = 0;
		$course['fullJacs'][0] = 'P500';
		$course['supportDetailsURL'] = 'http://www.lincoln.ac.uk/home/studyatlincoln/undergraduatecourses/feesandfunding/';
		$course['teacherTraining'] = 0;
		$course['ucasProgrammeCode'] = 'P500';
		$course['variableFee'] = 0;
		$course['ilr'][0]['code'] = '1274125';
		$course['ilr'][0]['year'] = 'BOTH';
		$course['accreditation']['dependency'] = 0;
		$course['accreditation']['dependencyURL'] = 'http://www.lincoln.ac.uk/home/studyatlincoln/undergraduatecourses/journalism/#5666';
		$course['accreditationType'] = 'Accredited by the BJTC';
		$course['accreditationURL'] = 'http://www.bjtc.org.uk/';
		$course['accreditationCode'] = 'BJTC100';
		$course['courseStages'][0]['ltaStage'] = 1;
		$course['courseStages'][0]['learningAndTeaching']['ltMethodIndicator'] = 'A';
		$course['courseStages'][0]['learningAndTeaching']['scheduledPercentage'] = 21.8;
		$course['courseStages'][0]['learningAndTeaching']['independentStudyPercentage'] = 78.2;
		$course['courseStages'][0]['learningAndTeaching']['placementStudyPercentage'] =  0.0;
		$course['courseStages'][0]['assessment']['assessmentMethodIndicator'] = 'A';
		$course['courseStages'][0]['assessment']['courseWorkPercentage'] = 82;
		$course['courseStages'][0]['assessment']['practicalExamPercentage'] = 0.0;
		$course['courseStages'][0]['assessment']['writtenExamPercentage'] = 18.0;
		$course['courseStages'][1]['ltaStage'] = 2;
		$course['courseStages'][1]['learningAndTeaching']['ltMethodIndicator'] = 'A';
		$course['courseStages'][1]['learningAndTeaching']['scheduledPercentage'] = 30.5;
		$course['courseStages'][1]['learningAndTeaching']['independentStudyPercentage'] = 69.5;
		$course['courseStages'][1]['learningAndTeaching']['placementStudyPercentage'] =  0.0;
		$course['courseStages'][1]['assessment']['assessmentMethodIndicator'] = 'A';
		$course['courseStages'][1]['assessment']['courseWorkPercentage'] = 91.0;
		$course['courseStages'][1]['assessment']['practicalExamPercentage'] = 1.0;
		$course['courseStages'][1]['assessment']['writtenExamPercentage'] = 8.0;
		$course['courseStages'][2]['ltaStage'] = 3;
		$course['courseStages'][2]['learningAndTeaching']['ltMethodIndicator'] = 'A';
		$course['courseStages'][2]['learningAndTeaching']['scheduledPercentage'] = 27.8;
		$course['courseStages'][2]['learningAndTeaching']['independentStudyPercentage'] = 72.2;
		$course['courseStages'][2]['learningAndTeaching']['placementStudyPercentage'] =  0.0;
		$course['courseStages'][2]['assessment']['assessmentMethodIndicator'] = 'A';
		$course['courseStages'][2]['assessment']['courseWorkPercentage'] = 98.0;
		$course['courseStages'][2]['assessment']['practicalExamPercentage'] = 0.0;
		$course['courseStages'][2]['assessment']['writtenExamPercentage'] = 2.0;
		$course['nss']['overall']['quality'] = 75;
		$course['nss']['teaching']['explaining'] = 81;
		$course['nss']['teaching']['interesting'] = 72;
		$course['nss']['teaching']['enthusiastic'] = 78;
		$course['nss']['teaching']['stimulating'] = 70;
		$course['nss']['assessment']['criteria'] = 85;
		$course['nss']['assessment']['fair'] = 79;
		$course['nss']['assessment']['prompt'] = 58;
		$course['nss']['assessment']['comments'] = 60;
		$course['nss']['assessment']['clarify'] = 57;
		$course['nss']['academic']['support'] = 70;
		$course['nss']['academic']['contact'] = 72;
		$course['nss']['academic']['advice'] = 67;
		$course['nss']['organisation']['timetable'] = 82;
		$course['nss']['organisation']['changes'] = 76;
		$course['nss']['organisation']['organised'] = 73;
		$course['nss']['resources']['library'] = 79;
		$course['nss']['resources']['ict'] = 86;
		$course['nss']['resources']['specialist'] = 85;
		$course['nss']['development']['confidence'] = 76;
		$course['nss']['development']['communication'] = 82;
		$course['nss']['development']['unfamiliar'] = 81;
		$course['nss']['studentsUnion']['impact'] = 75;
		$course['employment']['graduateEmployment'] = 65.0;
		$course['employment']['sixMonth'] = 17483;
		$course['employment']['workOrStudy'] = 85.7;
		$course['employment']['workOnly'] = 69.6;
		$course['employment']['studyOnly'] = 14.3;
		$course['employment']['workAndStudy'] = 1.8;
		$course['employment']['other'] = 1.8;
		$course['employment']['unemployed'] = 12.5;
		$username = "root";
		$password = "root";
		$hostname = "localhost";	
		$dbh = mysql_connect($hostname, $username, $password) or die("Unable to connect to MySQL");
		mysql_select_db('modules',$dbh);
		
		$sql = "SELECT * FROM 13_programmes WHERE programme = '" . $course['ucasProgrammeCode'] . "'";
		$results = mysql_query($sql) or die('Didnt work.');
		while($row = mysql_fetch_array($results,MYSQL_ASSOC))
		{
			$course['modules'][] = $row['moduleCode'];
		}


		$course['entryPoints'][0]['lower'] = 160;
		$course['entryPoints'][0]['upper'] = 199;
		$course['entryPoints'][0]['amount'] = 2;
		$course['entryPoints'][1]['lower'] = 200;
		$course['entryPoints'][1]['upper'] = 239;
		$course['entryPoints'][1]['amount'] = 16;
		$course['entryPoints'][2]['lower'] = 240;
		$course['entryPoints'][2]['upper'] = 279;
		$course['entryPoints'][2]['amount'] = 21;
		$course['entryPoints'][3]['lower'] = 280;
		$course['entryPoints'][3]['upper'] = 319;
		$course['entryPoints'][3]['amount'] = 20;
		$course['entryPoints'][4]['lower'] = 320;
		$course['entryPoints'][4]['upper'] = 359;
		$course['entryPoints'][4]['amount'] = 17;
		$course['entryPoints'][5]['lower'] = 360;
		$course['entryPoints'][5]['upper'] = 399;
		$course['entryPoints'][5]['amount'] = 11;
		$course['entryPoints'][6]['lower'] = 400;
		$course['entryPoints'][6]['upper'] = 439;
		$course['entryPoints'][6]['amount'] = 5;
		$course['entryPoints'][7]['lower'] = 440;
		$course['entryPoints'][7]['upper'] = 479;
		$course['entryPoints'][7]['amount'] = 5;
		$course['entryPoints'][8]['lower'] = 480;
		$course['entryPoints'][8]['upper'] = 519;
		$course['entryPoints'][8]['amount'] = 2;
		$course['entryPoints'][9]['lower'] = 560;
		$course['entryPoints'][9]['upper'] = 599;
		$course['entryPoints'][9]['amount'] = 2;
		$course['students']['registered'] = 285;
		$course['students']['male'] = 49;
		$course['students']['female'] = 51;
		$course['students']['mature'] = 5;
		$course['students']['overseas'] = 2;
		$course['students']['fullTime'] = 92;
		$course['students']['partTime'] = 8;
		$course['classification']['first'] = 9;
		$course['classification']['upperSecond'] = 55;
		$course['classification']['lowerSecond'] = 33;
		$course['classification']['otherHonours'] = 2;
		$course['classification']['ordinaryDegree'] = 0;
		$course['classification']['notClassified'] = 1;


		$this->mongo_db->insert('courses', $course);
		return 'Inserted Lincoln P500 <br>';
	}
	
	/**
	* Function adds document to mongo with G500 course data.
	*
	* @return Confirmation message
	* @access Public
	*/
	function lincoln_g500()
	{
		$course = array();
		$course['_id'] = '123458'; //kisCourseIdentifier
		$course['kisType'] = 1;
		$course['applicationUKPRN'] = '10007151';
		$course['assessmentMethodsURL'] = '';
		$course['coursePageURL'] = 'http://www.lincoln.ac.uk/home/studyatlincoln/undergraduatecourses/computerinformationsystemsbsc/';
		$course['courseTitle'] = 'BSc (Hons) Computer Information Systems';
		$course['distanceLearningOnly'] = 0;
		$course['employmentDetailsURL'] = 'http://www.lincoln.ac.uk/home/studyatlincoln/undergraduatecourses/computerinformationsystemsbsc/#10257';
		$course['feeWaiver'] = 0;
		$course['feesConfirmation'] = 1;
		$course['learningTeachingURL'] = 'http://www.lincoln.ac.uk/home/studyatlincoln/undergraduatecourses/computerinformationsystemsbsc/#10255';
		$course['levelOfAward'] = 'F';
		$course['maxFeeEngland'] = 9000;
		$course['maxFeeNI'] = 9000;
		$course['meansTestedSupport'] = 1;
		$course['partTimeOnly'] = 0;
		$course['fullJacs'][0] = 'G500';
		$course['supportDetailsURL'] = 'http://www.lincoln.ac.uk/home/studyatlincoln/undergraduatecourses/feesandfunding/';
		$course['teacherTraining'] = 0;
		$course['ucasProgrammeCode'] = 'G500';
		$course['variableFee'] = 0;
		$course['ilr'][0]['code'] = '1278825';
		$course['ilr'][0]['year'] = 'BOTH';
		$course['courseStages'][0]['ltaStage'] = 1;
		$course['courseStages'][0]['learningAndTeaching']['ltMethodIndicator'] = 'A';
		$course['courseStages'][0]['learningAndTeaching']['scheduledPercentage'] = 23.6;
		$course['courseStages'][0]['learningAndTeaching']['independentStudyPercentage'] = 76.4;
		$course['courseStages'][0]['learningAndTeaching']['placementStudyPercentage'] =  0.0;
		$course['courseStages'][0]['assessment']['assessmentMethodIndicator'] = 'A';
		$course['courseStages'][0]['assessment']['courseWorkPercentage'] = 81;
		$course['courseStages'][0]['assessment']['practicalExamPercentage'] = 11.0;
		$course['courseStages'][0]['assessment']['writtenExamPercentage'] = 8.0;
		$course['courseStages'][1]['ltaStage'] = 2;
		$course['courseStages'][1]['learningAndTeaching']['ltMethodIndicator'] = 'A';
		$course['courseStages'][1]['learningAndTeaching']['scheduledPercentage'] = 17.0;
		$course['courseStages'][1]['learningAndTeaching']['independentStudyPercentage'] = 83.0;
		$course['courseStages'][1]['learningAndTeaching']['placementStudyPercentage'] =  0.0;
		$course['courseStages'][1]['assessment']['assessmentMethodIndicator'] = 'A';
		$course['courseStages'][1]['assessment']['courseWorkPercentage'] = 83.0;
		$course['courseStages'][1]['assessment']['practicalExamPercentage'] = 17.0;
		$course['courseStages'][1]['assessment']['writtenExamPercentage'] = 0.0;
		$course['courseStages'][2]['ltaStage'] = 3;
		$course['courseStages'][2]['learningAndTeaching']['ltMethodIndicator'] = 'A';
		$course['courseStages'][2]['learningAndTeaching']['scheduledPercentage'] = 13.8;
		$course['courseStages'][2]['learningAndTeaching']['independentStudyPercentage'] = 86.2;
		$course['courseStages'][2]['learningAndTeaching']['placementStudyPercentage'] =  0.0;
		$course['courseStages'][2]['assessment']['assessmentMethodIndicator'] = 'A';
		$course['courseStages'][2]['assessment']['courseWorkPercentage'] = 69.0;
		$course['courseStages'][2]['assessment']['practicalExamPercentage'] = 6.0;
		$course['courseStages'][2]['assessment']['writtenExamPercentage'] = 25.0;
		$course['nss']['overall']['quality'] = 75;
		$course['nss']['teaching']['explaining'] = 81;
		$course['nss']['teaching']['interesting'] = 72;
		$course['nss']['teaching']['enthusiastic'] = 78;
		$course['nss']['teaching']['stimulating'] = 70;
		$course['nss']['assessment']['criteria'] = 85;
		$course['nss']['assessment']['fair'] = 79;
		$course['nss']['assessment']['prompt'] = 58;
		$course['nss']['assessment']['comments'] = 60;
		$course['nss']['assessment']['clarify'] = 57;
		$course['nss']['academic']['support'] = 70;
		$course['nss']['academic']['contact'] = 72;
		$course['nss']['academic']['advice'] = 67;
		$course['nss']['organisation']['timetable'] = 82;
		$course['nss']['organisation']['changes'] = 76;
		$course['nss']['organisation']['organised'] = 73;
		$course['nss']['resources']['library'] = 79;
		$course['nss']['resources']['ict'] = 86;
		$course['nss']['resources']['specialist'] = 85;
		$course['nss']['development']['confidence'] = 76;
		$course['nss']['development']['communication'] = 82;
		$course['nss']['development']['unfamiliar'] = 81;
		$course['nss']['studentsUnion']['impact'] = 75;
		$course['employment']['graduateEmployment'] = 70.7;
		$course['employment']['sixMonth'] = 17483;
		$course['employment']['workOrStudy'] = 79.3;
		$course['employment']['workOnly'] = 67.1;
		$course['employment']['studyOnly'] = 8.5;
		$course['employment']['workAndStudy'] = 3.7;
		$course['employment']['other'] = 6.1;
		$course['employment']['unemployed'] = 14.6;
		$username = "root";
		$password = "root";
		$hostname = "localhost";	
		$dbh = mysql_connect($hostname, $username, $password) or die("Unable to connect to MySQL");
		mysql_select_db('modules',$dbh);
		
		$sql = "SELECT * FROM 13_programmes WHERE programme = '" . $course['ucasProgrammeCode'] . "'";
		$results = mysql_query($sql) or die('Didnt work.');
		while($row = mysql_fetch_array($results,MYSQL_ASSOC))
		{
			$course['modules'][] = $row['moduleCode'];
		}
		
		$course['entryPoints'][0]['lower'] = 160;
		$course['entryPoints'][0]['upper'] = 199;
		$course['entryPoints'][0]['amount'] = 2;
		$course['entryPoints'][1]['lower'] = 200;
		$course['entryPoints'][1]['upper'] = 239;
		$course['entryPoints'][1]['amount'] = 16;
		$course['entryPoints'][2]['lower'] = 240;
		$course['entryPoints'][2]['upper'] = 279;
		$course['entryPoints'][2]['amount'] = 21;
		$course['entryPoints'][3]['lower'] = 280;
		$course['entryPoints'][3]['upper'] = 319;
		$course['entryPoints'][3]['amount'] = 20;
		$course['entryPoints'][4]['lower'] = 320;
		$course['entryPoints'][4]['upper'] = 359;
		$course['entryPoints'][4]['amount'] = 17;
		$course['entryPoints'][5]['lower'] = 360;
		$course['entryPoints'][5]['upper'] = 399;
		$course['entryPoints'][5]['amount'] = 11;
		$course['entryPoints'][6]['lower'] = 400;
		$course['entryPoints'][6]['upper'] = 439;
		$course['entryPoints'][6]['amount'] = 5;
		$course['entryPoints'][7]['lower'] = 440;
		$course['entryPoints'][7]['upper'] = 479;
		$course['entryPoints'][7]['amount'] = 5;
		$course['entryPoints'][8]['lower'] = 480;
		$course['entryPoints'][8]['upper'] = 519;
		$course['entryPoints'][8]['amount'] = 2;
		$course['entryPoints'][9]['lower'] = 560;
		$course['entryPoints'][9]['upper'] = 599;
		$course['entryPoints'][9]['amount'] = 2;
		$course['students']['registered'] = 285;
		$course['students']['male'] = 49;
		$course['students']['female'] = 51;
		$course['students']['mature'] = 5;
		$course['students']['overseas'] = 2;
		$course['students']['fullTime'] = 92;
		$course['students']['partTime'] = 8;
		$course['classification']['first'] = 9;
		$course['classification']['upperSecond'] = 55;
		$course['classification']['lowerSecond'] = 33;
		$course['classification']['otherHonours'] = 2;
		$course['classification']['ordinaryDegree'] = 0;
		$course['classification']['notClassified'] = 1;


		$this->mongo_db->insert('courses', $course);
		return 'Inserted Lincoln G500 <br>';
	}
	
	/**
	* Function adds document to mongo with G500 course data.
	*
	* @return Confirmation message
	* @access Public
	*/
	function lincoln_g401()
	{
		$course = array();
		$course['_id'] = '123459'; //kisCourseIdentifier
		$course['kisType'] = 1;
		$course['applicationUKPRN'] = '10007151';
		$course['assessmentMethodsURL'] = 'http://www.lincoln.ac.uk/home/studyatlincoln/undergraduatecourses/gamescomputing/#6536';
		$course['coursePageURL'] = 'http://www.lincoln.ac.uk/home/studyatlincoln/undergraduatecourses/gamescomputing/';
		$course['courseTitle'] = 'BSc (Hons) Games Computing';
		$course['distanceLearningOnly'] = 0;
		$course['employmentDetailsURL'] = 'http://www.lincoln.ac.uk/home/studyatlincoln/undergraduatecourses/gamescomputing/#5011';
		$course['feeWaiver'] = 0;
		$course['feesConfirmation'] = 1;
		$course['learningTeachingURL'] = 'http://www.lincoln.ac.uk/home/studyatlincoln/undergraduatecourses/gamescomputing/#8225';
		$course['levelOfAward'] = 'F';
		$course['maxFeeEngland'] = 9000;
		$course['maxFeeNI'] = 9000;
		$course['meansTestedSupport'] = 1;
		$course['partTimeOnly'] = 0;
		$course['fullJacs'][0] = 'G401';
		$course['supportDetailsURL'] = 'http://www.lincoln.ac.uk/home/studyatlincoln/undergraduatecourses/feesandfunding/';
		$course['teacherTraining'] = 0;
		$course['ucasProgrammeCode'] = 'G401';
		$course['variableFee'] = 0;
		$course['ilr'][0]['code'] = '1878125';
		$course['ilr'][0]['year'] = 'BOTH';
		$course['courseStages'][0]['ltaStage'] = 1;
		$course['courseStages'][0]['learningAndTeaching']['ltMethodIndicator'] = 'A';
		$course['courseStages'][0]['learningAndTeaching']['scheduledPercentage'] = 23.6;
		$course['courseStages'][0]['learningAndTeaching']['independentStudyPercentage'] = 76.4;
		$course['courseStages'][0]['learningAndTeaching']['placementStudyPercentage'] =  0.0;
		$course['courseStages'][0]['assessment']['assessmentMethodIndicator'] = 'A';
		$course['courseStages'][0]['assessment']['courseWorkPercentage'] = 53.0;
		$course['courseStages'][0]['assessment']['practicalExamPercentage'] = 0.0;
		$course['courseStages'][0]['assessment']['writtenExamPercentage'] = 47.0;
		$course['courseStages'][1]['ltaStage'] = 2;
		$course['courseStages'][1]['learningAndTeaching']['ltMethodIndicator'] = 'A';
		$course['courseStages'][1]['learningAndTeaching']['scheduledPercentage'] = 23.0;
		$course['courseStages'][1]['learningAndTeaching']['independentStudyPercentage'] = 77.0;
		$course['courseStages'][1]['learningAndTeaching']['placementStudyPercentage'] =  0.0;
		$course['courseStages'][1]['assessment']['assessmentMethodIndicator'] = 'A';
		$course['courseStages'][1]['assessment']['courseWorkPercentage'] = 72.0;
		$course['courseStages'][1]['assessment']['practicalExamPercentage'] = 12.0;
		$course['courseStages'][1]['assessment']['writtenExamPercentage'] = 16.0;
		$course['courseStages'][2]['ltaStage'] = 3;
		$course['courseStages'][2]['learningAndTeaching']['ltMethodIndicator'] = 'A';
		$course['courseStages'][2]['learningAndTeaching']['scheduledPercentage'] = 15.8;
		$course['courseStages'][2]['learningAndTeaching']['independentStudyPercentage'] = 84.2;
		$course['courseStages'][2]['learningAndTeaching']['placementStudyPercentage'] =  0.0;
		$course['courseStages'][2]['assessment']['assessmentMethodIndicator'] = 'A';
		$course['courseStages'][2]['assessment']['courseWorkPercentage'] = 73.0;
		$course['courseStages'][2]['assessment']['practicalExamPercentage'] = 6.0;
		$course['courseStages'][2]['assessment']['writtenExamPercentage'] = 21.0;
		$course['nss']['overall']['quality'] = 75;
		$course['nss']['teaching']['explaining'] = 81;
		$course['nss']['teaching']['interesting'] = 72;
		$course['nss']['teaching']['enthusiastic'] = 78;
		$course['nss']['teaching']['stimulating'] = 70;
		$course['nss']['assessment']['criteria'] = 85;
		$course['nss']['assessment']['fair'] = 79;
		$course['nss']['assessment']['prompt'] = 58;
		$course['nss']['assessment']['comments'] = 60;
		$course['nss']['assessment']['clarify'] = 57;
		$course['nss']['academic']['support'] = 70;
		$course['nss']['academic']['contact'] = 72;
		$course['nss']['academic']['advice'] = 67;
		$course['nss']['organisation']['timetable'] = 82;
		$course['nss']['organisation']['changes'] = 76;
		$course['nss']['organisation']['organised'] = 73;
		$course['nss']['resources']['library'] = 79;
		$course['nss']['resources']['ict'] = 86;
		$course['nss']['resources']['specialist'] = 85;
		$course['nss']['development']['confidence'] = 76;
		$course['nss']['development']['communication'] = 82;
		$course['nss']['development']['unfamiliar'] = 81;
		$course['nss']['studentsUnion']['impact'] = 75;
		$course['employment']['graduateEmployment'] = 70.7;
		$course['employment']['sixMonth'] = 17483;
		$course['employment']['workOrStudy'] = 79.3;
		$course['employment']['workOnly'] = 67.1;
		$course['employment']['studyOnly'] = 8.5;
		$course['employment']['workAndStudy'] = 3.7;
		$course['employment']['other'] = 6.1;
		$course['employment']['unemployed'] = 14.6;
		$username = "root";
		$password = "root";
		$hostname = "localhost";	
		$dbh = mysql_connect($hostname, $username, $password) or die("Unable to connect to MySQL");
		mysql_select_db('modules',$dbh);
		
		$sql = "SELECT * FROM 13_programmes WHERE programme = '" . $course['ucasProgrammeCode'] . "'";
		$results = mysql_query($sql) or die('Didnt work.');
		while($row = mysql_fetch_array($results,MYSQL_ASSOC))
		{
			$course['modules'][] = $row['moduleCode'];
		}
		
		$course['entryPoints'][0]['lower'] = 160;
		$course['entryPoints'][0]['upper'] = 199;
		$course['entryPoints'][0]['amount'] = 2;
		$course['entryPoints'][1]['lower'] = 200;
		$course['entryPoints'][1]['upper'] = 239;
		$course['entryPoints'][1]['amount'] = 16;
		$course['entryPoints'][2]['lower'] = 240;
		$course['entryPoints'][2]['upper'] = 279;
		$course['entryPoints'][2]['amount'] = 21;
		$course['entryPoints'][3]['lower'] = 280;
		$course['entryPoints'][3]['upper'] = 319;
		$course['entryPoints'][3]['amount'] = 20;
		$course['entryPoints'][4]['lower'] = 320;
		$course['entryPoints'][4]['upper'] = 359;
		$course['entryPoints'][4]['amount'] = 17;
		$course['entryPoints'][5]['lower'] = 360;
		$course['entryPoints'][5]['upper'] = 399;
		$course['entryPoints'][5]['amount'] = 11;
		$course['entryPoints'][6]['lower'] = 400;
		$course['entryPoints'][6]['upper'] = 439;
		$course['entryPoints'][6]['amount'] = 5;
		$course['entryPoints'][7]['lower'] = 440;
		$course['entryPoints'][7]['upper'] = 479;
		$course['entryPoints'][7]['amount'] = 5;
		$course['entryPoints'][8]['lower'] = 480;
		$course['entryPoints'][8]['upper'] = 519;
		$course['entryPoints'][8]['amount'] = 2;
		$course['entryPoints'][9]['lower'] = 560;
		$course['entryPoints'][9]['upper'] = 599;
		$course['entryPoints'][9]['amount'] = 2;
		$course['students']['registered'] = 285;
		$course['students']['male'] = 49;
		$course['students']['female'] = 51;
		$course['students']['mature'] = 5;
		$course['students']['overseas'] = 2;
		$course['students']['fullTime'] = 92;
		$course['students']['partTime'] = 8;
		$course['classification']['first'] = 9;
		$course['classification']['upperSecond'] = 55;
		$course['classification']['lowerSecond'] = 33;
		$course['classification']['otherHonours'] = 2;
		$course['classification']['ordinaryDegree'] = 0;
		$course['classification']['notClassified'] = 1;



		$this->mongo_db->insert('courses', $course);
		return 'Inserted Lincoln G401 <br>';
	}
	
	/**
	* Function adds document to mongo with D490 course data.
	*
	* @return Confirmation message
	* @access Public
	*/
	function lincoln_d490()
	{
		$course = array();
		$course['_id'] = '123460'; //kisCourseIdentifier
		$course['kisType'] = 1;
		$course['applicationUKPRN'] = '10007151';
		$course['assessmentMethodsURL'] = 'http://www.lincoln.ac.uk/home/studyatlincoln/undergraduatecourses/agricultureandenvironmentalmanagement/#4690';
		$course['coursePageURL'] = 'http://www.lincoln.ac.uk/home/studyatlincoln/undergraduatecourses/agricultureandenvironmentalmanagement';
		$course['courseTitle'] = 'BSc (Hons) Agriculture and Environmental Management';
		$course['distanceLearningOnly'] = 0;
		$course['employmentDetailsURL'] = 'http://www.lincoln.ac.uk/home/studyatlincoln/undergraduatecourses/agricultureandenvironmentalmanagement/#5135';
		$course['feeWaiver'] = 0;
		$course['feesConfirmation'] = 1;
		$course['learningTeachingURL'] = 'http://www.lincoln.ac.uk/home/studyatlincoln/undergraduatecourses/agricultureandenvironmentalmanagement/#8349';
		$course['levelOfAward'] = 'F';
		$course['maxFeeEngland'] = 9000;
		$course['maxFeeNI'] = 9000;
		$course['meansTestedSupport'] = 1;
		$course['partTimeOnly'] = 0;
		$course['fullJacs'][0] = 'D490';
		$course['supportDetailsURL'] = 'http://www.lincoln.ac.uk/home/studyatlincoln/undergraduatecourses/feesandfunding/';
		$course['teacherTraining'] = 0;
		$course['ucasProgrammeCode'] = 'D490';
		$course['variableFee'] = 0;
		$course['ilr'][0]['code'] = '1874125';
		$course['ilr'][0]['year'] = 'BOTH';
		$course['courseStages'][0]['ltaStage'] = 1;
		$course['courseStages'][0]['learningAndTeaching']['ltMethodIndicator'] = 'A';
		$course['courseStages'][0]['learningAndTeaching']['scheduledPercentage'] = 21.9;
		$course['courseStages'][0]['learningAndTeaching']['independentStudyPercentage'] = 78.1;
		$course['courseStages'][0]['learningAndTeaching']['placementStudyPercentage'] =  0.0;
		$course['courseStages'][0]['assessment']['assessmentMethodIndicator'] = 'A';
		$course['courseStages'][0]['assessment']['courseWorkPercentage'] = 75.0;
		$course['courseStages'][0]['assessment']['practicalExamPercentage'] = 6.0;
		$course['courseStages'][0]['assessment']['writtenExamPercentage'] = 19.0;
		$course['courseStages'][1]['ltaStage'] = 2;
		$course['courseStages'][1]['learningAndTeaching']['ltMethodIndicator'] = 'E';
		$course['courseStages'][1]['learningAndTeaching']['scheduledPercentage'] = 21.9;
		$course['courseStages'][1]['learningAndTeaching']['independentStudyPercentage'] = 78.1;
		$course['courseStages'][1]['learningAndTeaching']['placementStudyPercentage'] =  0.0;
		$course['courseStages'][1]['assessment']['assessmentMethodIndicator'] = 'A';
		$course['courseStages'][1]['assessment']['courseWorkPercentage'] = 64.0;
		$course['courseStages'][1]['assessment']['practicalExamPercentage'] = 0.0;
		$course['courseStages'][1]['assessment']['writtenExamPercentage'] = 36.0;
		$course['courseStages'][2]['ltaStage'] = 3;
		$course['courseStages'][2]['learningAndTeaching']['ltMethodIndicator'] = 'E';
		$course['courseStages'][2]['learningAndTeaching']['scheduledPercentage'] = 21.9;
		$course['courseStages'][2]['learningAndTeaching']['independentStudyPercentage'] = 78.1;
		$course['courseStages'][2]['learningAndTeaching']['placementStudyPercentage'] =  0.0;
		$course['courseStages'][2]['assessment']['assessmentMethodIndicator'] = 'A';
		$course['courseStages'][2]['assessment']['courseWorkPercentage'] = 76.0;
		$course['courseStages'][2]['assessment']['practicalExamPercentage'] = 0.0;
		$course['courseStages'][2]['assessment']['writtenExamPercentage'] = 24.0;
		$course['nss']['overall']['quality'] = 75;
		$course['nss']['teaching']['explaining'] = 86;
		$course['nss']['teaching']['interesting'] = 77;
		$course['nss']['teaching']['enthusiastic'] = 75;
		$course['nss']['teaching']['stimulating'] = 77;
		$course['nss']['assessment']['criteria'] = 63;
		$course['nss']['assessment']['fair'] = 66;
		$course['nss']['assessment']['prompt'] = 51;
		$course['nss']['assessment']['comments'] = 51;
		$course['nss']['assessment']['clarify'] = 45;
		$course['nss']['academic']['support'] = 68;
		$course['nss']['academic']['contact'] = 78;
		$course['nss']['academic']['advice'] = 69;
		$course['nss']['organisation']['timetable'] = 67;
		$course['nss']['organisation']['changes'] = 56;
		$course['nss']['organisation']['organised'] = 66;
		$course['nss']['resources']['library'] = 63;
		$course['nss']['resources']['ict'] = 77;
		$course['nss']['resources']['specialist'] = 70;
		$course['nss']['development']['confidence'] = 70;
		$course['nss']['development']['communication'] = 71;
		$course['nss']['development']['unfamiliar'] = 67;
		$course['nss']['studentsUnion']['impact'] = 75;
		//$course['employment']['graduateEmployment'] = 70.7;
		//$course['employment']['sixMonth'] = 17483;
		//$course['employment']['workOrStudy'] = 79.3;
		//$course['employment']['workOnly'] = 67.1;
		//$course['employment']['studyOnly'] = 8.5;
		//$course['employment']['workAndStudy'] = 3.7;
		//$course['employment']['other'] = 6.1;
		//$course['employment']['unemployed'] = 14.6;
		//$course['studentsUnion']['impact'] = 75.0;
		$username = "root";
		$password = "root";
		$hostname = "localhost";	
		$dbh = mysql_connect($hostname, $username, $password) or die("Unable to connect to MySQL");
		mysql_select_db('modules',$dbh);
		
		$sql = "SELECT * FROM 13_programmes WHERE programme = '" . $course['ucasProgrammeCode'] . "'";
		$results = mysql_query($sql) or die('Didnt work.');
		while($row = mysql_fetch_array($results,MYSQL_ASSOC))
		{
			$course['modules'][] = $row['moduleCode'];
		}

		$course['entryPoints'][0]['lower'] = 160;
		$course['entryPoints'][0]['upper'] = 199;
		$course['entryPoints'][0]['amount'] = 7;
		$course['entryPoints'][1]['lower'] = 200;
		$course['entryPoints'][1]['upper'] = 239;
		$course['entryPoints'][1]['amount'] = 12;
		$course['entryPoints'][2]['lower'] = 240;
		$course['entryPoints'][2]['upper'] = 279;
		$course['entryPoints'][2]['amount'] = 15;
		$course['entryPoints'][3]['lower'] = 280;
		$course['entryPoints'][3]['upper'] = 319;
		$course['entryPoints'][3]['amount'] = 8;
		$course['entryPoints'][4]['lower'] = 320;
		$course['entryPoints'][4]['upper'] = 359;
		$course['entryPoints'][4]['amount'] = 16;
		$course['entryPoints'][5]['lower'] = 360;
		$course['entryPoints'][5]['upper'] = 399;
		$course['entryPoints'][5]['amount'] = 32;
		$course['entryPoints'][6]['lower'] = 400;
		$course['entryPoints'][6]['upper'] = 439;
		$course['entryPoints'][6]['amount'] = 6;
		$course['entryPoints'][7]['lower'] = 440;
		$course['entryPoints'][7]['upper'] = 479;
		$course['entryPoints'][7]['amount'] = 3;
		$course['students']['registered'] = 250;
		$course['students']['male'] = 14;
		$course['students']['female'] = 86;
		$course['students']['mature'] = 18;
		$course['students']['overseas'] = 3;
		$course['students']['fullTime'] = 40;
		$course['students']['partTime'] = 60;
		$course['classification']['first'] = 10;
		$course['classification']['upperSecond'] = 40;
		$course['classification']['lowerSecond'] = 45;
		$course['classification']['otherHonours'] = 5;
		$course['classification']['ordinaryDegree'] = 0;
		$course['classification']['notClassified'] = 0;
		$this->mongo_db->insert('courses', $course);
		return 'Inserted Lincoln D490 <br>';
	}
	
	/**
	* Function adds document to mongo with W290 course data.
	*
	* @return Confirmation message
	* @access Public
	*/
	function lincoln_w290()
	{
		$course = array();
		$course['_id'] = '123461'; //kisCourseIdentifier
		$course['kisType'] = 1;
		$course['applicationUKPRN'] = '10007151';
		$course['assessmentMethodsURL'] = 'http://www.lincoln.ac.uk/home/studyatlincoln/undergraduatecourses/graphicdesign/#4572';
		$course['coursePageURL'] = 'http://www.lincoln.ac.uk/home/studyatlincoln/undergraduatecourses/graphicdesign';
		$course['courseTitle'] = 'BA (Hons) Graphic Design';
		$course['distanceLearningOnly'] = 0;
		$course['employmentDetailsURL'] = 'http://www.lincoln.ac.uk/home/studyatlincoln/undergraduatecourses/graphicdesign/#4961';
		$course['feeWaiver'] = 0;
		$course['feesConfirmation'] = 1;
		$course['learningTeachingURL'] = 'http://www.lincoln.ac.uk/home/studyatlincoln/undergraduatecourses/graphicdesign/#8175';
		$course['levelOfAward'] = 'F';
		$course['maxFeeEngland'] = 9000;
		$course['maxFeeNI'] = 9000;
		$course['meansTestedSupport'] = 1;
		$course['partTimeOnly'] = 0;
		$course['fullJacs'][0] = 'W290';
		$course['supportDetailsURL'] = 'http://www.lincoln.ac.uk/home/studyatlincoln/undergraduatecourses/feesandfunding/';
		$course['teacherTraining'] = 0;
		$course['ucasProgrammeCode'] = 'W290';
		$course['variableFee'] = 0;
		$course['ilr'][0]['code'] = '1274123';
		$course['ilr'][0]['year'] = 'BOTH';
		$course['courseStages'][0]['ltaStage'] = 1;
		$course['courseStages'][0]['learningAndTeaching']['ltMethodIndicator'] = 'A';
		$course['courseStages'][0]['learningAndTeaching']['scheduledPercentage'] = 31.0;
		$course['courseStages'][0]['learningAndTeaching']['independentStudyPercentage'] = 69.0;
		$course['courseStages'][0]['learningAndTeaching']['placementStudyPercentage'] =  0.0;
		$course['courseStages'][0]['assessment']['assessmentMethodIndicator'] = 'A';
		$course['courseStages'][0]['assessment']['courseWorkPercentage'] = 100.0;
		$course['courseStages'][0]['assessment']['practicalExamPercentage'] = 0.0;
		$course['courseStages'][0]['assessment']['writtenExamPercentage'] = 0.0;
		$course['courseStages'][1]['ltaStage'] = 2;
		$course['courseStages'][1]['learningAndTeaching']['ltMethodIndicator'] = 'A';
		$course['courseStages'][1]['learningAndTeaching']['scheduledPercentage'] = 27.0;
		$course['courseStages'][1]['learningAndTeaching']['independentStudyPercentage'] = 73.0;
		$course['courseStages'][1]['learningAndTeaching']['placementStudyPercentage'] =  0.0;
		$course['courseStages'][1]['assessment']['assessmentMethodIndicator'] = 'A';
		$course['courseStages'][1]['assessment']['courseWorkPercentage'] = 100.0;
		$course['courseStages'][1]['assessment']['practicalExamPercentage'] = 0.0;
		$course['courseStages'][1]['assessment']['writtenExamPercentage'] = 0.0;
		$course['courseStages'][2]['ltaStage'] = 3;
		$course['courseStages'][2]['learningAndTeaching']['ltMethodIndicator'] = 'A';
		$course['courseStages'][2]['learningAndTeaching']['scheduledPercentage'] = 25.0;
		$course['courseStages'][2]['learningAndTeaching']['independentStudyPercentage'] = 75.0;
		$course['courseStages'][2]['learningAndTeaching']['placementStudyPercentage'] =  0.0;
		$course['courseStages'][2]['assessment']['assessmentMethodIndicator'] = 'A';
		$course['courseStages'][2]['assessment']['courseWorkPercentage'] = 100.0;
		$course['courseStages'][2]['assessment']['practicalExamPercentage'] = 0.0;
		$course['courseStages'][2]['assessment']['writtenExamPercentage'] = 0.0;
		$course['nss']['overall']['quality'] = 80;
		$course['nss']['teaching']['explaining'] = 82;
		$course['nss']['teaching']['interesting'] = 85;
		$course['nss']['teaching']['enthusiastic'] = 87;
		$course['nss']['teaching']['stimulating'] = 79;
		$course['nss']['assessment']['criteria'] = 75;
		$course['nss']['assessment']['fair'] = 82;
		$course['nss']['assessment']['prompt'] = 73;
		$course['nss']['assessment']['comments'] = 75;
		$course['nss']['assessment']['clarify'] = 74;
		$course['nss']['academic']['support'] = 79;
		$course['nss']['academic']['contact'] = 80;
		$course['nss']['academic']['advice'] = 74;
		$course['nss']['organisation']['timetable'] = 79;
		$course['nss']['organisation']['changes'] = 68;
		$course['nss']['organisation']['organised'] = 60;
		$course['nss']['resources']['library'] = 80;
		$course['nss']['resources']['ict'] = 87;
		$course['nss']['resources']['specialist'] = 71;
		$course['nss']['development']['confidence'] = 81;
		$course['nss']['development']['communication'] = 84;
		$course['nss']['development']['unfamiliar'] = 83;
		$course['nss']['studentsUnion']['impact'] = 75;
		$course['employment']['graduateEmployment'] = 85.7;
		$course['employment']['sixMonth'] = 14192;
		$course['employment']['workOrStudy'] = 94.2;
		$course['employment']['workOnly'] = 88.4;
		$course['employment']['studyOnly'] = 2.9;
		$course['employment']['workAndStudy'] = 2.9;
		$course['employment']['other'] = 1.4;
		$course['employment']['unemployed'] = 4.3;
		$username = "root";
		$password = "root";
		$hostname = "localhost";	
		$dbh = mysql_connect($hostname, $username, $password) or die("Unable to connect to MySQL");
		mysql_select_db('modules',$dbh);
		
		$sql = "SELECT * FROM 13_programmes WHERE programme = '" . $course['ucasProgrammeCode'] . "'";
		$results = mysql_query($sql) or die('Didnt work.');
		while($row = mysql_fetch_array($results,MYSQL_ASSOC))
		{
			$course['modules'][] = $row['moduleCode'];
		}

		$course['entryPoints'][0]['lower'] = 0;
		$course['entryPoints'][0]['upper'] = 119;
		$course['entryPoints'][0]['amount'] = 1;
		$course['entryPoints'][1]['lower'] = 160;
		$course['entryPoints'][1]['upper'] = 199;
		$course['entryPoints'][1]['amount'] = 7;
		$course['entryPoints'][2]['lower'] = 200;
		$course['entryPoints'][2]['upper'] = 239;
		$course['entryPoints'][2]['amount'] = 12;
		$course['entryPoints'][3]['lower'] = 240;
		$course['entryPoints'][3]['upper'] = 279;
		$course['entryPoints'][3]['amount'] = 19;
		$course['entryPoints'][4]['lower'] = 280;
		$course['entryPoints'][4]['upper'] = 319;
		$course['entryPoints'][4]['amount'] = 15;
		$course['entryPoints'][5]['lower'] = 320;
		$course['entryPoints'][5]['upper'] = 359;
		$course['entryPoints'][5]['amount'] = 19;
		$course['entryPoints'][6]['lower'] = 360;
		$course['entryPoints'][6]['upper'] = 399;
		$course['entryPoints'][6]['amount'] = 19;
		$course['entryPoints'][7]['lower'] = 400;
		$course['entryPoints'][7]['upper'] = 439;
		$course['entryPoints'][7]['amount'] = 3;
		$course['entryPoints'][8]['lower'] = 440;
		$course['entryPoints'][8]['upper'] = 479;
		$course['entryPoints'][8]['amount'] = 4;
		$course['entryPoints'][9]['lower'] = 480;
		$course['entryPoints'][9]['upper'] = 519;
		$course['entryPoints'][9]['amount'] = 2;
		$course['students']['registered'] = 975;
		$course['students']['male'] = 39;
		$course['students']['female'] = 61;
		$course['students']['mature'] = 11;
		$course['students']['overseas'] = 4;
		$course['students']['fullTime'] = 95;
		$course['students']['partTime'] = 5;
		$course['classification']['first'] = 9;
		$course['classification']['upperSecond'] = 43;
		$course['classification']['lowerSecond'] = 42;
		$course['classification']['otherHonours'] = 5;
		$course['classification']['ordinaryDegree'] = 0;
		$course['classification']['notClassified'] = 1;

		$this->mongo_db->insert('courses', $course);
		return 'Inserted Lincoln W290 <br>';
	}
	
	/**
	* Function adds document to mongo with N400 course data.
	*
	* @return Confirmation message
	* @access Public
	*/
	function lincoln_n400()
	{
		$course = array();
		$course['_id'] = '123462'; //kisCourseIdentifier
		$course['kisType'] = 1;
		$course['applicationUKPRN'] = '10007151';
		$course['assessmentMethodsURL'] = 'http://www.lincoln.ac.uk/home/studyatlincoln/undergraduatecourses/accountancyandfinance/#6464';
		$course['coursePageURL'] = 'http://www.lincoln.ac.uk/home/studyatlincoln/undergraduatecourses/accountancyandfinance/';
		$course['courseTitle'] = 'BA (Hons) Accountancy and Finance';
		$course['distanceLearningOnly'] = 0;
		$course['employmentDetailsURL'] = 'http://www.lincoln.ac.uk/home/studyatlincoln/undergraduatecourses/accountancyandfinance/#4939';
		$course['feeWaiver'] = 0;
		$course['feesConfirmation'] = 1;
		$course['learningTeachingURL'] = 'http://www.lincoln.ac.uk/home/studyatlincoln/undergraduatecourses/accountancyandfinance/#4551';
		$course['levelOfAward'] = 'F';
		$course['maxFeeEngland'] = 9000;
		$course['maxFeeNI'] = 9000;
		$course['meansTestedSupport'] = 1;
		$course['partTimeOnly'] = 0;
		$course['fullJacs'][0] = 'N400';
		$course['supportDetailsURL'] = 'http://www.lincoln.ac.uk/home/studyatlincoln/undergraduatecourses/feesandfunding/';
		$course['teacherTraining'] = 0;
		$course['ucasProgrammeCode'] = 'N400';
		$course['variableFee'] = 0;
		$course['ilr'][0]['code'] = '3294123';
		$course['ilr'][0]['year'] = 'BOTH';
		$course['accreditation']['dependency'] = 0;
		$course['accreditation']['dependencyURL'] = 'http://www.lincoln.ac.uk/home/studyatlincoln/undergraduatecourses/accountancyandfinance/#5636';
		$course['accreditationType'] = 'Accredited by ACCA';
		$course['accreditationURL'] = 'http://www.accaglobal.com/en.html';
		$course['accreditationCode'] = 'ACCA101';
		$course['courseStages'][0]['ltaStage'] = 1;
		$course['courseStages'][0]['learningAndTeaching']['ltMethodIndicator'] = 'A';
		$course['courseStages'][0]['learningAndTeaching']['scheduledPercentage'] = 22.3;
		$course['courseStages'][0]['learningAndTeaching']['independentStudyPercentage'] = 77.7;
		$course['courseStages'][0]['learningAndTeaching']['placementStudyPercentage'] =  0.0;
		$course['courseStages'][0]['assessment']['assessmentMethodIndicator'] = 'A';
		$course['courseStages'][0]['assessment']['courseWorkPercentage'] = 34.0;
		$course['courseStages'][0]['assessment']['practicalExamPercentage'] = 13.0;
		$course['courseStages'][0]['assessment']['writtenExamPercentage'] = 53.0;
		$course['courseStages'][1]['ltaStage'] = 2;
		$course['courseStages'][1]['learningAndTeaching']['ltMethodIndicator'] = 'A';
		$course['courseStages'][1]['learningAndTeaching']['scheduledPercentage'] = 20.5;
		$course['courseStages'][1]['learningAndTeaching']['independentStudyPercentage'] = 79.5;
		$course['courseStages'][1]['learningAndTeaching']['placementStudyPercentage'] =  0.0;
		$course['courseStages'][1]['assessment']['assessmentMethodIndicator'] = 'A';
		$course['courseStages'][1]['assessment']['courseWorkPercentage'] = 65.0;
		$course['courseStages'][1]['assessment']['practicalExamPercentage'] = 0.0;
		$course['courseStages'][1]['assessment']['writtenExamPercentage'] = 35.0;
		$course['courseStages'][2]['ltaStage'] = 3;
		$course['courseStages'][2]['learningAndTeaching']['ltMethodIndicator'] = 'A';
		$course['courseStages'][2]['learningAndTeaching']['scheduledPercentage'] = 20.6;
		$course['courseStages'][2]['learningAndTeaching']['independentStudyPercentage'] = 79.4;
		$course['courseStages'][2]['learningAndTeaching']['placementStudyPercentage'] =  0.0;
		$course['courseStages'][2]['assessment']['assessmentMethodIndicator'] = 'A';
		$course['courseStages'][2]['assessment']['courseWorkPercentage'] = 66.0;
		$course['courseStages'][2]['assessment']['practicalExamPercentage'] = 4.0;
		$course['courseStages'][2]['assessment']['writtenExamPercentage'] = 30.0;
		$course['nss']['overall']['quality'] = 91;
		$course['nss']['teaching']['explaining'] = 100;
		$course['nss']['teaching']['interesting'] = 91;
		$course['nss']['teaching']['enthusiastic'] = 100;
		$course['nss']['teaching']['stimulating'] = 91;
		$course['nss']['assessment']['criteria'] = 93;
		$course['nss']['assessment']['fair'] = 91;
		$course['nss']['assessment']['prompt'] = 91;
		$course['nss']['assessment']['comments'] = 83;
		$course['nss']['assessment']['clarify'] = 85;
		$course['nss']['academic']['support'] = 91;
		$course['nss']['academic']['contact'] = 96;
		$course['nss']['academic']['advice'] = 96;
		$course['nss']['organisation']['timetable'] = 93;
		$course['nss']['organisation']['changes'] = 91;
		$course['nss']['organisation']['organised'] = 100;
		$course['nss']['resources']['library'] = 96;
		$course['nss']['resources']['ict'] = 96;
		$course['nss']['resources']['specialist'] = 91;
		$course['nss']['development']['confidence'] = 87;
		$course['nss']['development']['communication'] = 96;
		$course['nss']['development']['unfamiliar'] = 91;
		$course['nss']['studentsUnion']['impact'] = 75;
		$course['employment']['graduateEmployment'] = 61.9;
		$course['employment']['sixMonth'] = 17483;
		$course['employment']['workOrStudy'] = 82.8;
		$course['employment']['workOnly'] = 72.4;
		$course['employment']['studyOnly'] = 10.3;
		$course['employment']['workAndStudy'] = 0.0;
		$course['employment']['other'] = 0.0;
		$course['employment']['unemployed'] = 17.2;
		$username = "root";
		$password = "root";
		$hostname = "localhost";	
		$dbh = mysql_connect($hostname, $username, $password) or die("Unable to connect to MySQL");
		mysql_select_db('modules',$dbh);
		
		$sql = "SELECT * FROM 13_programmes WHERE programme = '" . $course['ucasProgrammeCode'] . "'";
		$results = mysql_query($sql) or die('Didnt work.');
		while($row = mysql_fetch_array($results,MYSQL_ASSOC))
		{
			$course['modules'][] = $row['moduleCode'];
		}
		
		$course['entryPoints'][0]['lower'] = 160;
		$course['entryPoints'][0]['upper'] = 199;
		$course['entryPoints'][0]['amount'] = 10;
		$course['entryPoints'][1]['lower'] = 200;
		$course['entryPoints'][1]['upper'] = 239;
		$course['entryPoints'][1]['amount'] = 10;
		$course['entryPoints'][2]['lower'] = 240;
		$course['entryPoints'][2]['upper'] = 279;
		$course['entryPoints'][2]['amount'] = 20;
		$course['entryPoints'][3]['lower'] = 280;
		$course['entryPoints'][3]['upper'] = 319;
		$course['entryPoints'][3]['amount'] = 30;
		$course['entryPoints'][4]['lower'] = 320;
		$course['entryPoints'][4]['upper'] = 359;
		$course['entryPoints'][4]['amount'] = 10;
		$course['entryPoints'][5]['lower'] = 360;
		$course['entryPoints'][5]['upper'] = 399;
		$course['entryPoints'][5]['amount'] = 10;
		$course['entryPoints'][6]['lower'] = 480;
		$course['entryPoints'][6]['upper'] = 519;
		$course['entryPoints'][6]['amount'] = 5;
		$course['students']['registered'] = 140;
		$course['students']['male'] = 64;
		$course['students']['female'] = 36;
		$course['students']['mature'] = 13;
		$course['students']['overseas'] = 6;
		$course['students']['fullTime'] = 95;
		$course['students']['partTime'] = 5;
		$course['classification']['first'] = 10;
		$course['classification']['upperSecond'] = 35;
		$course['classification']['lowerSecond'] = 40;
		$course['classification']['otherHonours'] = 15;
		$course['classification']['ordinaryDegree'] = 0;
		$course['classification']['notClassified'] = 0;


		$this->mongo_db->insert('courses', $course);
		return 'Inserted Lincoln N400 <br>';
	}
	
	/**
	* Function adds document to mongo with N400 course data.
	*
	* @return Confirmation message
	* @access Public
	*/
	function lincoln_cn85()
	{
		$course = array();
		$course['_id'] = '123463'; //kisCourseIdentifier
		$course['kisType'] = 1;
		$course['applicationUKPRN'] = '10007151';
		$course['assessmentMethodsURL'] = 'http://www.lincoln.ac.uk/home/studyatlincoln/undergraduatecourses/psychologyandmarketing/#4672';
		$course['coursePageURL'] = 'http://www.lincoln.ac.uk/home/studyatlincoln/undergraduatecourses/psychologyandmarketing/';
		$course['courseTitle'] = 'BSc (Hons) Psychology and Marketing';
		$course['distanceLearningOnly'] = 0;
		$course['employmentDetailsURL'] = 'http://www.lincoln.ac.uk/home/studyatlincoln/undergraduatecourses/psychologyandmarketing/#5101';
		$course['feeWaiver'] = 0;
		$course['feesConfirmation'] = 1;
		$course['learningTeachingURL'] = 'http://www.lincoln.ac.uk/home/studyatlincoln/undergraduatecourses/psychologyandmarketing/#8315';
		$course['levelOfAward'] = 'F';
		$course['maxFeeEngland'] = 9000;
		$course['maxFeeNI'] = 9000;
		$course['meansTestedSupport'] = 1;
		$course['partTimeOnly'] = 0;
		$course['fullJacs'][0] = 'NC85';
		$course['supportDetailsURL'] = 'http://www.lincoln.ac.uk/home/studyatlincoln/undergraduatecourses/feesandfunding/';
		$course['teacherTraining'] = 0;
		$course['ucasProgrammeCode'] = 'NC85';
		$course['variableFee'] = 0;
		$course['ilr'][0]['code'] = '3424123';
		$course['ilr'][0]['year'] = 'BOTH';
		$course['courseStages'][0]['ltaStage'] = 1;
		$course['courseStages'][0]['learningAndTeaching']['ltMethodIndicator'] = 'A';
		$course['courseStages'][0]['learningAndTeaching']['scheduledPercentage'] = 18.9;
		$course['courseStages'][0]['learningAndTeaching']['independentStudyPercentage'] = 81.1;
		$course['courseStages'][0]['learningAndTeaching']['placementStudyPercentage'] =  0.0;
		$course['courseStages'][0]['assessment']['assessmentMethodIndicator'] = 'A';
		$course['courseStages'][0]['assessment']['courseWorkPercentage'] = 29.0;
		$course['courseStages'][0]['assessment']['practicalExamPercentage'] = 11.0;
		$course['courseStages'][0]['assessment']['writtenExamPercentage'] = 60.0;
		$course['courseStages'][1]['ltaStage'] = 2;
		$course['courseStages'][1]['learningAndTeaching']['ltMethodIndicator'] = 'A';
		$course['courseStages'][1]['learningAndTeaching']['scheduledPercentage'] = 20.3;
		$course['courseStages'][1]['learningAndTeaching']['independentStudyPercentage'] = 79.7;
		$course['courseStages'][1]['learningAndTeaching']['placementStudyPercentage'] =  0.0;
		$course['courseStages'][1]['assessment']['assessmentMethodIndicator'] = 'A';
		$course['courseStages'][1]['assessment']['courseWorkPercentage'] = 35.0;
		$course['courseStages'][1]['assessment']['practicalExamPercentage'] = 2.0;
		$course['courseStages'][1]['assessment']['writtenExamPercentage'] = 63.0;
		$course['courseStages'][2]['ltaStage'] = 3;
		$course['courseStages'][2]['learningAndTeaching']['ltMethodIndicator'] = 'A';
		$course['courseStages'][2]['learningAndTeaching']['scheduledPercentage'] = 28.5;
		$course['courseStages'][2]['learningAndTeaching']['independentStudyPercentage'] = 71.5;
		$course['courseStages'][2]['learningAndTeaching']['placementStudyPercentage'] =  0.0;
		$course['courseStages'][2]['assessment']['assessmentMethodIndicator'] = 'A';
		$course['courseStages'][2]['assessment']['courseWorkPercentage'] = 46.0;
		$course['courseStages'][2]['assessment']['practicalExamPercentage'] = 12.0;
		$course['courseStages'][2]['assessment']['writtenExamPercentage'] = 42.0;
		$course['nss']['overall']['quality'] = 88;
		$course['nss']['teaching']['explaining'] = 94;
		$course['nss']['teaching']['interesting'] = 78;
		$course['nss']['teaching']['enthusiastic'] = 82;
		$course['nss']['teaching']['stimulating'] = 90;
		$course['nss']['assessment']['criteria'] = 92;
		$course['nss']['assessment']['fair'] = 83;
		$course['nss']['assessment']['prompt'] = 68;
		$course['nss']['assessment']['comments'] = 72;
		$course['nss']['assessment']['clarify'] = 60;
		$course['nss']['academic']['support'] = 76;
		$course['nss']['academic']['contact'] = 78;
		$course['nss']['academic']['advice'] = 64;
		$course['nss']['organisation']['timetable'] = 84;
		$course['nss']['organisation']['changes'] = 85;
		$course['nss']['organisation']['organised'] = 84;
		$course['nss']['resources']['library'] = 93;
		$course['nss']['resources']['ict'] = 94;
		$course['nss']['resources']['specialist'] = 89;
		$course['nss']['development']['confidence'] = 77;
		$course['nss']['development']['communication'] = 80;
		$course['nss']['development']['unfamiliar'] = 78;
		$course['nss']['studentsUnion']['impact'] = 75;
		$course['employment']['graduateEmployment'] = 63.8;
		$course['employment']['sixMonth'] = 14308;
		$course['employment']['workOrStudy'] = 90.3;
		$course['employment']['workOnly'] = 76.6;
		$course['employment']['studyOnly'] = 9.5;
		$course['employment']['workAndStudy'] = 4.2;
		$course['employment']['other'] = 3.1;
		$course['employment']['unemployed'] = 6.7;
		$course['studentsUnion']['impact'] = 75.0;
		$username = "root";
		$password = "root";
		$hostname = "localhost";	
		$dbh = mysql_connect($hostname, $username, $password) or die("Unable to connect to MySQL");
		mysql_select_db('modules',$dbh);
		
		$sql = "SELECT * FROM 13_programmes WHERE programme = '" . $course['ucasProgrammeCode'] . "'";
		$results = mysql_query($sql) or die('Didnt work.');
		while($row = mysql_fetch_array($results,MYSQL_ASSOC))
		{
			$course['modules'][] = $row['moduleCode'];
		}
		
		$course['entryPoints'][0]['lower'] = 0;
		$course['entryPoints'][0]['upper'] = 119;
		$course['entryPoints'][0]['amount'] = 1;
		$course['entryPoints'][1]['lower'] = 160;
		$course['entryPoints'][1]['upper'] = 199;
		$course['entryPoints'][1]['amount'] = 2;
		$course['entryPoints'][2]['lower'] = 200;
		$course['entryPoints'][2]['upper'] = 239;
		$course['entryPoints'][2]['amount'] = 9;
		$course['entryPoints'][3]['lower'] = 240;
		$course['entryPoints'][3]['upper'] = 279;
		$course['entryPoints'][3]['amount'] = 18;
		$course['entryPoints'][4]['lower'] = 280;
		$course['entryPoints'][4]['upper'] = 319;
		$course['entryPoints'][4]['amount'] = 28;
		$course['entryPoints'][5]['lower'] = 320;
		$course['entryPoints'][5]['upper'] = 359;
		$course['entryPoints'][5]['amount'] = 17;
		$course['entryPoints'][6]['lower'] = 360;
		$course['entryPoints'][6]['upper'] = 399;
		$course['entryPoints'][6]['amount'] = 15;
		$course['entryPoints'][7]['lower'] = 400;
		$course['entryPoints'][7]['upper'] = 439;
		$course['entryPoints'][7]['amount'] = 6;
		$course['entryPoints'][8]['lower'] = 440;
		$course['entryPoints'][8]['upper'] = 479;
		$course['entryPoints'][8]['amount'] = 3;
		$course['entryPoints'][9]['lower'] = 480;
		$course['entryPoints'][9]['upper'] = 519;
		$course['entryPoints'][9]['amount'] = 1;
		$course['entryPoints'][10]['lower'] = 520;
		$course['entryPoints'][10]['upper'] = 559;
		$course['entryPoints'][10]['amount'] = 1;
		$course['entryPoints'][11]['lower'] = 560;
		$course['entryPoints'][11]['upper'] = 599;
		$course['entryPoints'][11]['amount'] = 1;
		$course['students']['registered'] = 540;
		$course['students']['male'] = 16;
		$course['students']['female'] = 84;
		$course['students']['mature'] = 9;
		$course['students']['overseas'] = 2;
		$course['students']['fullTime'] = 87;
		$course['students']['partTime'] = 13;
		$course['classification']['first'] = 9;
		$course['classification']['upperSecond'] = 52;
		$course['classification']['lowerSecond'] = 36;
		$course['classification']['otherHonours'] = 4;
		$course['classification']['ordinaryDegree'] = 0;
		$course['classification']['notClassified'] = 0; 


		$this->mongo_db->insert('courses', $course);
		return 'Inserted Lincoln CN85 <br>';
	}

	
	


	/**
	* Function removes existing documents for kis from mongodb.
	*
	* @return Confirmation message
	* @access Public
	*/
	function remove_kis_data()
	{
		$this->mongo_db->drop_collection('courseData', 'kisInstitutions');
		$this->mongo_db->drop_collection('courseData', 'courses');
		$this->mongo_db->drop_collection('courseData', 'modules');
		return 'Removed KIS institution and course data collections.<br>';
	}
	
	
	
	/**
	* Function adds module content from mysql db
	*
	* @return Confirmation message
	* @access Public
	*/
	public function get_modules_sql()
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
			$module['moduleSynopsis'] = preg_replace('/[^(\x20-\x7F)]*/','', nl2br($row['moduleSynopsis']));
			$module['outlineSyllabus'] = preg_replace('/[^(\x20-\x7F)]*/','', nl2br($row['outlineSyllabus']));
			$module['ltMethods'] = preg_replace('/[^(\x20-\x7F)]*/','', nl2br($row['l_tMethods']));
			if($row['accreditation'] != '')
				$module['accreditation'] = $row['accreditation'];
			else
				$module['accreditation'] = '';
			$module['indicativeReading'] = preg_replace('/[^(\x20-\x7F)]*/','', nl2br($row['indicativeReading']));
			$module['learningOutcomes'] = array();
			
			$sql4 = "SELECT * FROM 05_learningOutcomes INNER JOIN 06_moduleLearningOutcomes ON 06_moduleLearningOutcomes.outcomeID = 05_learningOutcomes.outcomeID WHERE 06_moduleLearningOutcomes.moduleCode = '" . $module['_id'] . "'";
			$outcomes = mysql_query($sql4) or die('Could not execute outcomes query.');
						
			while($row1 = mysql_fetch_array($outcomes,MYSQL_ASSOC))
			{
				$module['learningOutcomes'][] = preg_replace('/[^(\x20-\x7F)]*/','',$row1['outcomeText']);
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
			$pre = mysql_query($sql9) or die('Could not execute barred combinations query.');
			while($row5 = mysql_fetch_array($pre,MYSQL_ASSOC))
			{
				$module['barredCombinations'][] = $row5['moduleCode2'];
			}
			
			$this->mongo_db->insert('modules', $module);
			$returning.= 'Inserted: ' . $module['_id'] . '<br>';
		}
		
		return $returning;
		
		
	

	}
	
	public function xcri($url = 'http://127.0.0.1/coursedata/dummyData/xcri.xml')
	{
		if(isset($_GET['url']))
			$url = $_GET['url'];
		
		$xcriArray = $this->xml2array(file_get_contents($url));
		$provider = $xcriArray['catalog']['provider'];
		$institution = array();
		$institution['_id'] = 0;
		foreach($provider['dc:identifier'] as $identifier)
		{
				if((isset($identifier['attr']['xsi:type'])) && ($identifier['attr']['xsi:type'] == 'ukrlp:ukprn'))
					$institution['_id'] = intval($identifier['value']);
				else
					$institution['identifiers'][] = $identifier['value'];
		}
		
		if(isset($provider['mlo:url']))
			$institution['url'] = $provider['mlo:url']['value'];
			
		if(isset($provider['mlo:location']['mlo:postcode']))
			$institution['location']['postcode'] = $provider['mlo:location']['mlo:postcode']['value'];
			
		if(isset($provider['mlo:location']['mlo:address']))
		{
			foreach($provider['mlo:location']['mlo:address'] as $addressLine)
			{
				if((isset($addressLine['attr']['xsi:type'])) && ($addressLine['attr']['xsi:type'] == 'geo:lat'))
					$institution['location']['latitude'] = $addressLine['value'];
				elseif((isset($addressLine['attr']['xsi:type'])) && ($addressLine['attr']['xsi:type'] == 'geo:long'))
					$institution['location']['longitude'] = $addressLine['value'];
				else
					$institution['location']['address'][] = $addressLine['value'];
			}
		}
		
		if(isset($provider['mlo:location']['mlo:phone']))
			$institution['telephone'] = $provider['mlo:location']['mlo:phone']['value'];
		
		$this->mongo_db->where(array('_id' => $institution['_id']))
						->set(array('identifiers' => $institution['identifiers'], 
						'location' => $institution['location'], 'url' => $institution['url'], 
						'telephone' => $institution['telephone']))->update('institutions');
		
		for($i = 0; $i < count($xcriArray['catalog']['provider']['course']); $i++)
		{
			$courses = array();
			$course = $xcriArray['catalog']['provider']['course'][$i];
			
			$courses['_id'] = '';
			$courses['identifiers'] = array();
			foreach($course['dc:identifier'] as $identifier)
			{
				if((isset($identifier['attr']['xsi:type'])) && ($identifier['attr']['xsi:type'] == 'ucas:courseID'))
					$courses['_id'] = $identifier['value'];
				elseif((isset($identifier['attr']['xsi:type'])) && ($identifier['attr']['xsi:type'] == 'courseDataProgramme:internalID'))
					$courses['identifiers']['internalID'] = $identifier['value'];
				else
					$courses['identifiers'][] = $identifier['value'];
			}
			if(isset($course['dc:description']))
				$courses['description'] = $course['dc:description']['value'];
			
			if(isset($course['presentation'][0]))
			{	
				foreach($course['presentation'] as $presentation)
				{
					$thisPresentation = array();
					if(isset($presentation['dc:identifier']))
						$thisPresentation['identifiers'] = $presentation['dc:identifier'];
					if(isset($presentation['mlo:duration']))
						$thisPresentation['duration'] = $presentation['mlo:duration']['value'];
					if(isset($presentation['studyMode']))
						$thisPresentation['studyMode'] = $presentation['studyMode']['value'];
					if(isset($presentation['attendanceMode']))
						$thisPresentation['attendanceMode'] = $presentation['attendanceMode']['value'];
					if(isset($presentation['attendancePattern']))
						$thisPresentation['attendancePattern'] = $presentation['attendancePattern']['value'];
					$courses['presentation'][] = $thisPresentation;
				}
			}
			elseif(isset($course['presentation']))
			{
				if(isset($course['presentation']['dc:identifier']))
						$thisPresentation['identifiers'] = $course['presentation']['dc:identifier'];
				if(isset($course['presentation']['mlo:duration']))
					$thisPresentation['duration'] = $course['presentation']['mlo:duration']['value'];
				if(isset($course['presentation']['studyMode']))
					$thisPresentation['studyMode'] = $course['presentation']['studyMode']['value'];
				if(isset($course['presentation']['attendanceMode']))
					$thisPresentation['attendanceMode'] = $course['presentation']['attendanceMode']['value'];
				if(isset($course['presentation']['attendancePattern']))
					$thisPresentation['attendancePattern'] = $course['presentation']['attendancePattern']['value'];
				$courses['presentation'][] = $thisPresentation;
			}
			
			$this->mongo_db->where(array('ucasProgrammeCode' => strval(($courses['_id']))))
						->set(array('identifiers' => $courses['identifiers']));
			if(isset($courses['description'])) 
						$this->mongo_db->set(array('description' => $courses['description']));
			if(isset($courses['presentation']))
						$this->mongo_db->set(array('presentation' => $courses['presentation']))->update('courses');	
		}
				
}
		
	
	
	
	
	/** 
 	* xml2array() will convert the given XML text to an array in the XML structure. 
 	* Link: http://www.bin-co.com/php/scripts/xml2array/ 
 	* Arguments : $contents - The XML text 
 	*                $get_attributes - 1 or 0. If this is 1 the function will get the attributes as well as the tag values - this results in a different array structure in the return value.
 	*                $priority - Can be 'tag' or 'attribute'. This will change the way the resulting array sturcture. For 'tag', the tags are given more importance.
 	* Return: The parsed XML in an array form. Use print_r() to see the resulting array structure.
 	* Examples: $array =  xml2array(file_get_contents('feed.xml')); 
 	*              $array =  xml2array(file_get_contents('feed.xml', 1, 'attribute')); 
 	*/ 
	function xml2array($contents, $get_attributes=1, $priority = 'attribute') { 
    if(!$contents) return array(); 

    if(!function_exists('xml_parser_create')) { 
        //print "'xml_parser_create()' function not found!"; 
        return array(); 
    } 

    //Get the XML parser of PHP - PHP must have this module for the parser to work 
    $parser = xml_parser_create(''); 
    xml_parser_set_option($parser, XML_OPTION_TARGET_ENCODING, "UTF-8"); # http://minutillo.com/steve/weblog/2004/6/17/php-xml-and-character-encodings-a-tale-of-sadness-rage-and-data-loss 
    xml_parser_set_option($parser, XML_OPTION_CASE_FOLDING, 0); 
    xml_parser_set_option($parser, XML_OPTION_SKIP_WHITE, 1); 
    xml_parse_into_struct($parser, trim($contents), $xml_values); 
    xml_parser_free($parser); 

    if(!$xml_values) return;//Hmm... 

    //Initializations 
    $xml_array = array(); 

    $current = &$xml_array; //Refference 

    //Go through the tags. 
    $repeated_tag_index = array();//Multiple tags with same name will be turned into an array
    foreach($xml_values as $data) { 
        unset($attributes,$value);//Remove existing values, or there will be trouble 

        //This command will extract these variables into the foreach scope 
        // tag(string), type(string), level(int), attributes(array). 
        extract($data);//We could use the array by itself, but this cooler. 

        $result = array(); 
        $attributes_data = array(); 
         
        if(isset($value)) { 
            if($priority == 'tag') $result = $value; 
            else $result['value'] = $value; //Put the value in a assoc array if we are in the 'Attribute' mode
        } 

        //Set the attributes too. 
        if(isset($attributes) and $get_attributes) { 
            foreach($attributes as $attr => $val) { 
                if($priority == 'tag') $attributes_data[$attr] = $val; 
                else $result['attr'][$attr] = $val; //Set all the attributes in a array called 'attr' 
            } 
        } 

        //See tag status and do the needed. 
        if($type == "open") {//The starting of the tag '<tag>' 
            $parent[$level-1] = &$current; 
            if(!is_array($current) or (!in_array($tag, array_keys($current)))) { //Insert New tag
                $current[$tag] = $result; 
                if($attributes_data) $current[$tag. '_attr'] = $attributes_data; 
                $repeated_tag_index[$tag.'_'.$level] = 1; 

                $current = &$current[$tag]; 

            } else { //There was another element with the same tag name 

                if(isset($current[$tag][0])) {//If there is a 0th element it is already an array 
                    $current[$tag][$repeated_tag_index[$tag.'_'.$level]] = $result; 
                    $repeated_tag_index[$tag.'_'.$level]++; 
                } else {//This section will make the value an array if multiple tags with the same name appear together
                    $current[$tag] = array($current[$tag],$result);//This will combine the existing item and the new item together to make an array
                    $repeated_tag_index[$tag.'_'.$level] = 2; 
                     
                    if(isset($current[$tag.'_attr'])) { //The attribute of the last(0th) tag must be moved as well
                        $current[$tag]['0_attr'] = $current[$tag.'_attr']; 
                        unset($current[$tag.'_attr']); 
                    } 

                } 
                $last_item_index = $repeated_tag_index[$tag.'_'.$level]-1; 
                $current = &$current[$tag][$last_item_index]; 
            } 

        } elseif($type == "complete") { //Tags that ends in 1 line '<tag />' 
            //See if the key is already taken. 
            if(!isset($current[$tag])) { //New Key 
                $current[$tag] = $result; 
                $repeated_tag_index[$tag.'_'.$level] = 1; 
                if($priority == 'tag' and $attributes_data) $current[$tag. '_attr'] = $attributes_data;

            } else { //If taken, put all things inside a list(array) 
                if(isset($current[$tag][0]) and is_array($current[$tag])) {//If it is already an array... 

                    // ...push the new element into that array. 
                    $current[$tag][$repeated_tag_index[$tag.'_'.$level]] = $result; 
                     
                    if($priority == 'tag' and $get_attributes and $attributes_data) { 
                        $current[$tag][$repeated_tag_index[$tag.'_'.$level] . '_attr'] = $attributes_data; 
                    } 
                    $repeated_tag_index[$tag.'_'.$level]++; 

                } else { //If it is not an array... 
                    $current[$tag] = array($current[$tag],$result); //...Make it an array using using the existing value and the new value
                    $repeated_tag_index[$tag.'_'.$level] = 1; 
                    if($priority == 'tag' and $get_attributes) { 
                        if(isset($current[$tag.'_attr'])) { //The attribute of the last(0th) tag must be moved as well
                             
                            $current[$tag]['0_attr'] = $current[$tag.'_attr']; 
                            unset($current[$tag.'_attr']); 
                        } 
                         
                        if($attributes_data) { 
                            $current[$tag][$repeated_tag_index[$tag.'_'.$level] . '_attr'] = $attributes_data; 
                        } 
                    } 
                    $repeated_tag_index[$tag.'_'.$level]++; //0 and 1 index is already taken 
                } 
            } 

        } elseif($type == 'close') { //End of tag '</tag>' 
            $current = &$parent[$level-1]; 
        } 
    } 
     
    return($xml_array); 
	}  

	
	
	
}


/* End of file dummy_data_model.php */
/* Location: ./models/dummy_data_model.php */