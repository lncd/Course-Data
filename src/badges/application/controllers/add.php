
<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * add.php File Doc Comment
 *
 * PHP Version 5
 *
 * @category Badges
 * @package  Badges
 * @author   Jamie Mahoney <jmahoney@lincoln.ac.uk>
 * @license  GNU Affero General Public License 3.0
 * @link     coursedata.blogs.lincoln.ac.uk
 *
 */

/**
 * Add
 *
 * @category Badges
 * @package  Badges
 * @author   Jamie Mahoney <jmahoney@lincoln.ac.uk>
 * @license  GNU Affero General Public License 3.0
 * @link     coursedata.blogs.lincoln.ac.uk
 *
 */
 
/*
	Copyright 2012 University of Lincoln
	
	
	This file is part of Badges.

    Badges is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Affero Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    Badges is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with Badges.  If not, see <http://www.gnu.org/licenses/>. 
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
	
	/**
	* API function for adding an objective
	*
	* @return Success or error messages.
	* @access Public
	*/
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
	
	/**
	* API function to mark an objective as complete for a user.
	*
	* @return Success or error messages.
	* @access Public
	*/
	public function objective_complete()
	{
		$this->load->model('add_model');
		
		//First, check required parameters exist and are valid
		if(($this->input->get('person')) && ($this->input->get('objective')) && ($this->input->get('email')) && (is_numeric($this->input->get('objective'))))
		{
			//Has the person already completed the objective?
			if($this->add_model->check_objective_complete($this->input->get('person'), $this->input->get('objective')) == 0)
			{
				$this->add_model->add_completed_objective($this->input->get('person'), $this->input->get('objective'));
				$awarded = $this->add_model->check_new_badges($this->input->get('person'), $this->input->get('objective'), $this->input->get('email'));
				$returning = array('error' => 0, 'message' => 'Objective completion successfully added', 'badges_awarded' => $awarded);
			}
			else
			{
				$returning = array('error' => 1, 'message' => 'Objective has already been completed by this user.');
			}
		}
		else
		{
			$returning = array('error' => 1, 'message' => 'Parameters are not valid. Are you passing the person identifier and the objective_id (as an integer) ?');
		}
		
		$this->output->append_output(json_encode($returning));
	}
	
	/**
	* API function to add an objective type to the system
	*
	* @return Success or error messages
	* @access Public
	*/
	public function objective_type()
	{
		$this->load->model('add_model');
		
		//First, check that the required parameters have been passed
		if($this->input->get('text'))
		{
			//Make string safe
			$type_text = mysql_escape_string($this->input->get('text'));
			
			//Does the objective type text already exist in the database?
			if($this->add_model->check_objective_type($type_text) == 0)
			{
				$this->add_model->add_objective_type($type_text);
				$id = $this->add_model->get_objective_type_id($type_text);
				$returning = array('error' => 0, 'message' => 'Objective type successfully added to database', 'data' => array('objective_type_text' => $type_text, 'objective_type_id' => $id));
			}
			else
			{
				$id = $this->add_model->get_objective_type_id($type_text);
				$returning = array('error' => 1, 'message' => 'Objective type text already exists in the database', 'data' => array('objective_type_text' => $type_text, 'objective_type_id' => $id));
			}
		}
		else
		{
			$returning = array('error' => 1, 'message' => 'The parameter "text" was not passed, or is not valid.');
		}
		
		$this->output->append_output(json_encode($returning));
	}
	 
}

// End of file home.php 
// Location: ./controllers/add.php