<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');
/**
 * MyClass File Doc Comment
 *
 * PHP Version 5
 *
 * @category DummyData
 * @package  DummyData
 * @author   Jamie Mahoney <jmahoney127@googlemail.com>
 * @license  http://www.php.net/license/3_01.txt  PHP License 3.01
 * @link     coursedata.blogs.lincoln.ac.uk
 *
 */

/**
 * Dummy_Data
 *
 * @category DummyData
 * @package  DummyData
 * @author   Jamie Mahoney <jmahoney127@googlemail.com>
 * @license  http://www.php.net/license/3_01.txt  PHP License 3.01
 * @link     coursedata.blogs.lincoln.ac.uk
 */

class Dummy_data extends CI_Controller {

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
		$data['output'].= $this->_create_kis_data();
		$this->load->view('dummyData.php', $data);
		$this->dummy_data_model->xcri('http://localhost:8888/cdata/src/xcri.xml');
	}
		
	/**
	* Private function that creates kis data in mongo.
	*
	* @return Output text
	* @access Private
	*/
	private function _create_kis_data()
	{
		//Create documents for KIS institutions
		$output = $this->dummy_data_model->lincoln_kis();

		//Create documents for KIS courses
		$output.= $this->dummy_data_model->lincoln_g403();
		$output.= $this->dummy_data_model->lincoln_p500();
		$output.= $this->dummy_data_model->lincoln_g500();
		$output.= $this->dummy_data_model->lincoln_g401();
		$output.= $this->dummy_data_model->lincoln_d490();
		$output.= $this->dummy_data_model->lincoln_w290();
		$output.= $this->dummy_data_model->lincoln_n400();
		$output.= $this->dummy_data_model->lincoln_cn85();
		$output.= $this->dummy_data_model->get_modules_sql();
		return $output;
	}
}

// End of file dummy_data.php 
// Location: ./controllers/dummy_data.php