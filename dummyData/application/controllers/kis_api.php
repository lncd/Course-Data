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

class Kis_api extends CI_Controller {

	/**
	* Default function for controller.
	*
	* @return Nothing
	* @access Public
	*/
	public function index()
	{        
		$this->load->model('dummy_data_model');
		$data['output'] = $this->dummy_data_model->remove_kis_data();
		$this->load->view('dummyData.php', $data);
	}
	
	/**
	* Function takes query parameters, queries mongo and loads view with data.
	*
	* @return Query results
	* @access Public
	*/
	public function get_course()
	{
		$this->load->model('kis_data_model');
		$criteria = array();
		$count = 0;
		$and = 1;
		foreach($_GET as $key => $value)
		{
			if($key == 'courseID')
				$criteria[$count]['key'] = '_id';
			elseif($key == 'providerID')
				$criteria[$count]['key'] = 'applicationUKPRN';
			elseif($key == 'courseCode')
				$criteria[$count]['key'] = 'ucasProgrammeCode';
			elseif($key == 'accrediting')
				$criteria[$count]['key'] = 'accreditingBodyCode';
			elseif($key == 'teacher')
				$criteria[$count]['key'] = 'teacherTraining';
			elseif($key == 'jacs')
				$criteria[$count]['key'] = 'fullJacs';
			elseif($key == 'courseName')
				$criteria[$count]['key'] = 'courseTitle';
				
			$criteria[$count]['value'] =  $value;
			$count++;
		}
		
		$data['output'] = $this->kis_data_model->getCourseData($criteria,$and);
		$this->load->view('kisData.php', $data);
	}
	
	public function modules_of()
	{
		$this->load->model('kis_data_model');
		if($_GET['courseID'])
			$data['output'] = $this->kis_data_model->getModules($_GET['courseID']);
		
		$this->load->view('kisData.php', $data);

	}
	
}


/* End of file dummy_data.php */
/* Location: ./application/controllers/dummy_data.php */