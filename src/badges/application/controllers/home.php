<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Home.php File Doc Comment
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
 * Home
 *
 * @category DummyData
 * @package  DummyData
 * @author   Jamie Mahoney <jmahoney@lincoln.ac.uk>
 * @license  http://www.php.net/license/3_01.txt  PHP License 3.01
 * @link     coursedata.blogs.lincoln.ac.uk
 */
class Home extends CI_Controller {

	/**
	* Default function for controller.
	*
	* @return Nothing
	* @access Public
	*/
	public function index()
	{
			$this->load->model('assertions','assertions', true);
			$data['assertions'] = $this->assertions->earn_badge('002944',1,'jmahoney@lincoln.ac.uk');
			$output  = $this->load->view('header_view', '', true);
			$output .= $this->load->view('nav_view', '', true);
			$output .= $this->load->view('index_view', $data, true);
			$output .= $this->load->view('footer_view', '', true);

			$this->output->set_output($output);
	}
}

// End of file home.php 
// Location: ./controllers/home.php