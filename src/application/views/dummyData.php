<?php error_reporting(E_ALL);
ini_set('display_errors', '1'); ?>

<!doctype html>
<!--[if IEMobile 7 ]><html class="no-js iem7" lang="en"><![endif]-->
<!--[if lt IE 7 ]><html class="no-js ie ie6" lang="en"><![endif]-->
<!--[if IE 7 ]><html class="no-js ie ie7" lang="en"><![endif]-->
<!--[if IE 8 ]><html class="no-js ie ie8" lang="en"><![endif]-->
<!--[if IE 9 ]><html class="no-js ie ie9" lang="en"><![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html class="no-js not-ie" lang="en"><!--<![endif]-->
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<link rel="dns-prefetch" href="//cwd.online.lincoln.ac.uk">
	<link rel="dns-prefetch" href="//c94471.r71.cf3.rackcdn.com">
	<link rel="dns-prefetch" href="//c94471.ssl.cf3.rackcdn.com">
	<link rel="dns-prefetch" href="//c95725.r25.cf3.rackcdn.com">
	<link rel="dns-prefetch" href="//c95725.ssl.cf3.rackcdn.com">

	<title>ON Course - Dummy Data Creation</title>
	
	<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0">
	<link rel="shortcut icon" href="http://c94471.r71.cf3.rackcdn.com/favicon.ico">
	<link rel="apple-touch-icon" href="http://c94471.r71.cf3.rackcdn.com/icon.png">

	<link rel="stylesheet" href="http://c94471.r71.cf3.rackcdn.com/cwd.css">
	<script src="http://c94471.r71.cf3.rackcdn.com/modernizr.js"></script>
		
</head>

<body>

	<header id="cwd_header" role="banner">
	
		<section class="cwd_container">
	
			<hgroup class="grid_12" id="cwd_hgroup">
						
				<a href="/">
					<h1>Dummy Data Creation</h1>
					<h2>ON Course</h2>
				</a>
							
			</hgroup>

		</section>
			
	</header>
	
	<nav class="cwd_container" role="navigation">
		<ul id="cwd_navigation" class="grid_12">  
			<li class="current"><a href="/">Home</a></li>  
    	</ul>  
	</nav>
	
	<section class="cwd_container" id="cwd_content" role="main">
	
		<div class="grid_12">
		<h2>Data Creation Progress:</h2>
		<?php echo $output; ?>
		<hr>
		<h2>API Testing:</h2>
		<p>Tests carried out: <?php echo $amountTest; ?></p>
		<p>Tests passed: <?php echo $amountPass; ?></p>
		<p>Tests failed: <?php echo $amountFail; ?></p>
		<?php if(isset($errors)) { ?>
		<h3>Errors:</h3>
			<?php foreach($errors as $error)
					echo $error . '<br>';
					}
			?>
		
		</div>
		
		
		<footer class="cwd_container" id="cwd_footer" role="contentinfo">
			
		<section class="push_6 grid_6 last">
			<p class="align-right">
				<small>
					&copy; University of Lincoln &middot; 
					<a href="http://lincoln.ac.uk/home/legal/index.htm" target="_blank">Policy statements</a>
				</small>
			</p>
		</section>
			
	</footer>

	<!-- Put all JavaScript code below this line -->
	<script src="http://c94471.r71.cf3.rackcdn.com/jquery.js" type="text/javascript"></script>
	<!--[if (lt IE 9) & (!IEMobile)]>
		<script src="http://c94471.r71.cf3.rackcdn.com/selectivizr-1.0.1.js"></script>
	<![endif]-->
	<script src="http://c94471.r71.cf3.rackcdn.com/cwd.js" type="text/javascript"></script>
	
</body>
</html>