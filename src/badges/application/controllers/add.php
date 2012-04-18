<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * add.php File Doc Comment
 *
 * PHP Version 5
 *
 * @category Badges
 * @package  Badges
 * @author   Jamie Mahoney <jmahoney@lincoln.ac.uk>
 * @license  http://www.php.net/license/3_01.txt  PHP License 3.01
 * @link     coursedata.blogs.lincoln.ac.uk
 *
 */

/**
 * Add
 *
 * @category DummyData
 * @package  DummyData
 * @author   Jamie Mahoney <jmahoney@lincoln.ac.uk>
 * @license  http://www.php.net/license/3_01.txt  PHP License 3.01
 * @link     coursedata.blogs.lincoln.ac.uk
 */
class Add extends CI_Controller {

	/**
	* Default function for controller.
	*
	* @return Nothing
	* @access Public
	*/
	public function index()
	{
			
	}
	
	public function objective()
	{
		$this->load->model('add_model');
		
		//First, check required parameters exist and are valid
		if(($this->input->get('text')) && ($this->input->get('type')) && (is_numeric($this->input->get('type'))))
		{
			//Does the objective text is new
			if($this->add_model->check_objective_exists($this->input->get('text')) == 0)
			{	
				$this->add_model->add_objective_data($this->input->get('text'), (int)$this->input->get('type'));
				$id = $this->add_model->get_objective_id($this->input->get('text'));
				$returning = array('error' => 0, 'message' => 'Objective successfully added.', 
							'data' => array('objective_text' => mysql_escape_string($this->input->get('text')), 'objective_id' => $id));
			}
			else
			{
				$id = $this->add_model->get_objective_id($this->input->get('text'));
				$returning = array('error' => 1, 'message' => 'Objective text already exists in the database', 
							'data' => array('objective_text' => mysql_escape_string($this->input->get('text')), 'objective_id' => $id));		
			}
		}
		else
		{
				$returning = array('error' => 1, 'message' => 'Parameters are not valid. Are you passing the objective text and the type of objective (as an integer) ?');
		}
		$this->output->append_output(json_encode($returning));
	}
}

// End of file home.php 
// Location: ./controllers/home.php