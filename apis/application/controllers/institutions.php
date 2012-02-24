<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Institutions extends CI_Controller {

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
		
		if(isset($_GET['id']))
			$this->mongo_db->where('_id', intval($_GET['id']));
		
		if(isset($_GET['name']))
			$this->mongo_db->like('kisInstitutionName', $_GET['name']);
			
		$output = $this->mongo_db->get('kisInstitutions');
		if($output != null)
		{
			$results['error'] = 0;
			$results['count'] = count($output);
		}
		else
			$results['error'] = 1;
		$results['kisInstitutions'] = $output;
		
		echo '<pre>'; 
		print_r($results); 
		echo '</pre>';
	}
	
	
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */