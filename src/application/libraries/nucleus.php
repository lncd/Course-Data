<?php

class Nucleus {

	function output($results, $code = 200, $message = NULL, $error = FALSE)
	{		
		// Output message if present
		$output['message'] = NULL;

		if (isset($message) && $message !== NULL)
		{
			switch ($code)
			{
				case 204:
					$message = '204 No content found: ' . $message;
					break;
				case 400:
					$message = '400 Bad request: ' . $message;
					break;
				case 401:
					$message = '401 Unauthorized: ' . $message;
					break;
				case 403:
					$message = '403 Forbidden: ' . $message;
					break;
				case 404:
					$message = '404 Not found: ' . $message;
					break;
				case 405:
					$message = '405 Method not allowed: ' . $message;
					break;
				case 500:
					$message = '500 Internal Server Error: ' . $message;
					break;
				case 501:
					$message = '501 Not Implemented: ' . $message;
					break;
			}

			$output['message'] = $message;
		}

		if ($error === TRUE)
		{
			$output['error'] = TRUE;
		}

		elseif ($code >= 400)
		{
			$output['error'] = TRUE;
		}

		else
		{
			$output['error'] = FALSE;
		}

		// Code
		$output['status_code'] = $code;

		// HTTP Status Cat
		$output['status_cat'] = 'http://httpcats.herokuapp.com/' . $code;

		// Perform results counting.
		$output['num_results'] = count($results);

		// Neatly bundle the results.
		$output['results'] = $results;

		// Move back up the scope to the CI object.
		$CI =& get_instance();

		// Output using the REST controller.
		$CI->response($output, 200);

	}

}

// EOF