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

class Kis_data_model extends CI_Model {

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
	* Function queries mongo with passed query parameters and returns the results.
	* @return Query results
	* @access Public
	*/
	function getCourseData($criteria,$and)
	{
		if(count($criteria))
		{
			foreach($criteria as $criterion)
			{
				$this->mongo_db->where($criterion['key'], $criterion['value']);
			}
			$result = array();
			
			
			$result['error'] = 0;
			$result['courses'] = $this->mongo_db->get('kisCourses');
			
			return json_encode($result);
		}
	}
	
	function getModules($criteria)
	{
	}
	
	
}