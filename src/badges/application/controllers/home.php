<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Home.php File Doc Comment
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
 * Home
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

class Home extends CI_Controller {

	/**
	* Default function for controller.
	*
	* @return Nothing
	* @access Public
	*/
	public function index()
	{
			$output  = $this->load->view('header_view', '', true);
			$output .= $this->load->view('nav_view', '', true);
			$output .= $this->load->view('index_view', '', true);
			$output .= $this->load->view('footer_view', '', true);

			$this->output->set_output($output);
	}
}

// End of file home.php 
// Location: ./controllers/home.php