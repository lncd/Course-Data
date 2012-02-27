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
		$this->xcri();
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
	
	public function xcri($url = 'http://localhost:8888/cdata/xcri.xml')
	{
		if(isset($_GET['url']))
			$url = $_GET['url'];
		
		$xcriArray = $this->xml2array(file_get_contents($url));
		$provider = $xcriArray['catalog']['provider'];
		$institution = array();
		$institution['_id'] = 0;
		foreach($provider['dc:identifier'] as $identifier)
		{
				if((isset($identifier['attr']['xsi:type'])) && ($identifier['attr']['xsi:type'] == 'ukrlp:ukprn'))
					$institution['_id'] = intval($identifier['value']);
				else
					$institution['identifiers'][] = $identifier['value'];
		}
		
		if(isset($provider['mlo:url']))
			$institution['url'] = $provider['mlo:url']['value'];
			
		if(isset($provider['mlo:location']['mlo:postcode']))
			$institution['location']['postcode'] = $provider['mlo:location']['mlo:postcode']['value'];
			
		if(isset($provider['mlo:location']['mlo:address']))
		{
			foreach($provider['mlo:location']['mlo:address'] as $addressLine)
			{
				if((isset($addressLine['attr']['xsi:type'])) && ($addressLine['attr']['xsi:type'] == 'geo:lat'))
					$institution['location']['latitude'] = $addressLine['value'];
				elseif((isset($addressLine['attr']['xsi:type'])) && ($addressLine['attr']['xsi:type'] == 'geo:long'))
					$institution['location']['longitude'] = $addressLine['value'];
				else
					$institution['location']['address'][] = $addressLine['value'];
			}
		}
		
		if(isset($provider['mlo:location']['mlo:phone']))
			$institution['telephone'] = $provider['mlo:location']['mlo:phone']['value'];
		
		$this->mongo_db->where(array('_id' => $institution['_id']))
						->set(array('identifiers' => 			$institution['identifiers'], 
						'location' => $institution['location'], 'url' => $institution['url'], 
						'telephone' => $institution['telephone']))->update('institutions');
		
		
		
	}
	
	
	
	
	/** 
 	* xml2array() will convert the given XML text to an array in the XML structure. 
 	* Link: http://www.bin-co.com/php/scripts/xml2array/ 
 	* Arguments : $contents - The XML text 
 	*                $get_attributes - 1 or 0. If this is 1 the function will get the attributes as well as the tag values - this results in a different array structure in the return value.
 	*                $priority - Can be 'tag' or 'attribute'. This will change the way the resulting array sturcture. For 'tag', the tags are given more importance.
 	* Return: The parsed XML in an array form. Use print_r() to see the resulting array structure.
 	* Examples: $array =  xml2array(file_get_contents('feed.xml')); 
 	*              $array =  xml2array(file_get_contents('feed.xml', 1, 'attribute')); 
 	*/ 
	function xml2array($contents, $get_attributes=1, $priority = 'attribute') { 
    if(!$contents) return array(); 

    if(!function_exists('xml_parser_create')) { 
        //print "'xml_parser_create()' function not found!"; 
        return array(); 
    } 

    //Get the XML parser of PHP - PHP must have this module for the parser to work 
    $parser = xml_parser_create(''); 
    xml_parser_set_option($parser, XML_OPTION_TARGET_ENCODING, "UTF-8"); # http://minutillo.com/steve/weblog/2004/6/17/php-xml-and-character-encodings-a-tale-of-sadness-rage-and-data-loss 
    xml_parser_set_option($parser, XML_OPTION_CASE_FOLDING, 0); 
    xml_parser_set_option($parser, XML_OPTION_SKIP_WHITE, 1); 
    xml_parse_into_struct($parser, trim($contents), $xml_values); 
    xml_parser_free($parser); 

    if(!$xml_values) return;//Hmm... 

    //Initializations 
    $xml_array = array(); 
    $parents = array(); 
    $opened_tags = array(); 
    $arr = array(); 

    $current = &$xml_array; //Refference 

    //Go through the tags. 
    $repeated_tag_index = array();//Multiple tags with same name will be turned into an array
    foreach($xml_values as $data) { 
        unset($attributes,$value);//Remove existing values, or there will be trouble 

        //This command will extract these variables into the foreach scope 
        // tag(string), type(string), level(int), attributes(array). 
        extract($data);//We could use the array by itself, but this cooler. 

        $result = array(); 
        $attributes_data = array(); 
         
        if(isset($value)) { 
            if($priority == 'tag') $result = $value; 
            else $result['value'] = $value; //Put the value in a assoc array if we are in the 'Attribute' mode
        } 

        //Set the attributes too. 
        if(isset($attributes) and $get_attributes) { 
            foreach($attributes as $attr => $val) { 
                if($priority == 'tag') $attributes_data[$attr] = $val; 
                else $result['attr'][$attr] = $val; //Set all the attributes in a array called 'attr' 
            } 
        } 

        //See tag status and do the needed. 
        if($type == "open") {//The starting of the tag '<tag>' 
            $parent[$level-1] = &$current; 
            if(!is_array($current) or (!in_array($tag, array_keys($current)))) { //Insert New tag
                $current[$tag] = $result; 
                if($attributes_data) $current[$tag. '_attr'] = $attributes_data; 
                $repeated_tag_index[$tag.'_'.$level] = 1; 

                $current = &$current[$tag]; 

            } else { //There was another element with the same tag name 

                if(isset($current[$tag][0])) {//If there is a 0th element it is already an array 
                    $current[$tag][$repeated_tag_index[$tag.'_'.$level]] = $result; 
                    $repeated_tag_index[$tag.'_'.$level]++; 
                } else {//This section will make the value an array if multiple tags with the same name appear together
                    $current[$tag] = array($current[$tag],$result);//This will combine the existing item and the new item together to make an array
                    $repeated_tag_index[$tag.'_'.$level] = 2; 
                     
                    if(isset($current[$tag.'_attr'])) { //The attribute of the last(0th) tag must be moved as well
                        $current[$tag]['0_attr'] = $current[$tag.'_attr']; 
                        unset($current[$tag.'_attr']); 
                    } 

                } 
                $last_item_index = $repeated_tag_index[$tag.'_'.$level]-1; 
                $current = &$current[$tag][$last_item_index]; 
            } 

        } elseif($type == "complete") { //Tags that ends in 1 line '<tag />' 
            //See if the key is already taken. 
            if(!isset($current[$tag])) { //New Key 
                $current[$tag] = $result; 
                $repeated_tag_index[$tag.'_'.$level] = 1; 
                if($priority == 'tag' and $attributes_data) $current[$tag. '_attr'] = $attributes_data;

            } else { //If taken, put all things inside a list(array) 
                if(isset($current[$tag][0]) and is_array($current[$tag])) {//If it is already an array... 

                    // ...push the new element into that array. 
                    $current[$tag][$repeated_tag_index[$tag.'_'.$level]] = $result; 
                     
                    if($priority == 'tag' and $get_attributes and $attributes_data) { 
                        $current[$tag][$repeated_tag_index[$tag.'_'.$level] . '_attr'] = $attributes_data; 
                    } 
                    $repeated_tag_index[$tag.'_'.$level]++; 

                } else { //If it is not an array... 
                    $current[$tag] = array($current[$tag],$result); //...Make it an array using using the existing value and the new value
                    $repeated_tag_index[$tag.'_'.$level] = 1; 
                    if($priority == 'tag' and $get_attributes) { 
                        if(isset($current[$tag.'_attr'])) { //The attribute of the last(0th) tag must be moved as well
                             
                            $current[$tag]['0_attr'] = $current[$tag.'_attr']; 
                            unset($current[$tag.'_attr']); 
                        } 
                         
                        if($attributes_data) { 
                            $current[$tag][$repeated_tag_index[$tag.'_'.$level] . '_attr'] = $attributes_data; 
                        } 
                    } 
                    $repeated_tag_index[$tag.'_'.$level]++; //0 and 1 index is already taken 
                } 
            } 

        } elseif($type == 'close') { //End of tag '</tag>' 
            $current = &$parent[$level-1]; 
        } 
    } 
     
    return($xml_array); 
	}  

	
}


/* End of file dummy_data.php */
/* Location: ./application/controllers/dummy_data.php */