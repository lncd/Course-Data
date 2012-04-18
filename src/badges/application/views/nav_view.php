<div class="navbar navbar-fixed-top">
  <div class="navbar-inner">
    <div class="container">
      <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </a>
      <a class="brand" href="<?php echo base_url(); ?>">Badges!!!!!</a>
      <div class="nav-collapse">
        <ul class="nav">
          <?php if($this->session->userdata('id'))
              echo '
                    <li><a href="' . base_url() . 'home">Home</a></li>
                    <li><a href="' . base_url() . 'messages">Messages</a></li>
                    <li><a href="' . base_url() . 'pages_admin">Pages</a></li>
                    <li><a href="landing_page/logout">Logout</a></li>
                    ';
              else
              echo
          '<li class="active"><a href="<?php echo base_url(); ?>">Home</a></li>
           <li><a href="https://sso.lincoln.ac.uk/oauth?response_type=code&client_id=N6SZA99tmajsCDPyeQ9N6OKp5Z923K7z&redirect_uri=http://localhost/learninglab/signin/redirect&scope=user.basic,user.courses,user.contact&state=1471">Login</a></li>';?>
        </ul>
      </div><!--/.nav-collapse -->
    </div>
  </div>
</div>