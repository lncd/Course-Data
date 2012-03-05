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
		$returned = $this->_test_api();
		$data['amount_test'] = $returned['results']['amount'];
		$data['amount_pass'] = $returned['results']['pass'];
		$data['amount_fail'] = $returned['results']['fail'];
		$data['errors'] = $returned['errors'];
		$this->load->view('dummyData.php', $data);
		$this->dummy_data_model->xcri('http://localhost:8888/cdata/src/xcri.xml');
	}
	
	/**
	* Function to test api is functioning as expected
	*
	* @param string $filename Filename of testing strategy document
	* 
	* @return Nothing
	* @access Private
	* @throws Exception when something goes wrong
	*/
	private function _test_api($filename = 'strategy.txt')
	{
		$lines = array();
		$handle = @fopen($filename, 'r');
	if($handle)
	{
		while(($buffer = fgets($handle, 4096)) !== FALSE)
	  {
			$lines[] = explode(';', $buffer);
	  }
		if( ! feof($handle))
		{
			echo "Error: unexpected fgets() fail\n";
		}
			fclose($handle);
			$results = array('amount' => sizeof($lines) - 1, 'pass' => 0, 'fail' => 0);
			$errors = array();
			try
			{
				if((sizeof($lines[0])) === 1)
				{
					$newlines = array('\t','\n','\r','\x20\x20','\0','\x0B');
					$url_base = str_replace($newlines, '', html_entity_decode($lines[0][0]));
				}
				else
					throw new Exception('Line 1 did not contain the base url.');
					
				for($i = 1; $i < sizeof($lines); $i++)
				{
					$get_url = $url_base . $lines[$i][0] . '?' . $lines[$i][1];
					$get_url = str_replace(' ', '', $get_url);
					$check = json_decode(file_get_contents($get_url));
					
					if(($check->error === strval($lines[$i][2])) AND ($check->count === strval($lines[$i][3])))
						$results['pass'] += 1;
					else
					{
						$results['fail'] += 1;
						$errors[] = 'API: ' . $lines[$i][0] . '. Criteria: ' . $lines[$i][1];
					}
				}
			}
			catch(Exception $error_message)
			{
				echo $error_message;
			}

			return array('results' => $results, 'errors' => $errors);
	}
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