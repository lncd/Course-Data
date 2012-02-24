<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Modules extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -  
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in 
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see http://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
		$results = array();
		
		if(isset($_GET['code']))
			$this->mongo_db->where('_id', $_GET['code']);
			
		if(isset($_GET['title']))
			$this->mongo_db->like('title', $_GET['title']);
		
		if(isset($_GET['department']))
			$this->mongo_db->like('owningDepartment', $_GET['department']);
			
		if(isset($_GET['subject']))
			$this->mongo_db->like('subject', $_GET['subject']);
		
		if(isset($_GET['synopsis'])){
			$parameters = explode(',', $_GET['synopsis']);
			foreach($parameters as $p)
				$this->mongo_db->like('moduleSynopsis', $p);
		}
		
		if(isset($_GET['syllabus'])){
			$parameters = explode(',', $_GET['syllabus']);
			foreach($parameters as $p)
				$this->mongo_db->like('outlineSyllabus', $p);
		}
		
		if(isset($_GET['jacs'])){
			$parameters = explode(',', $_GET['jacs']);
			foreach($parameters as $p)
				$this->mongo_db->like('jacsCodes', $p);
		}
		
		if(isset($_GET['outcomes'])){
			$parameters = explode(',', $_GET['outcomes']);
			foreach($parameters as $p)
				$this->mongo_db->like('learningOutcomes', $p);
		}
			
		$output = $this->mongo_db->get('modules');
			
		$results['modules'] = $output;
		
		echo '<pre>'; 
		print_r($results); 
		echo '</pre>';
	}
	
	
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */