<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="GatePass.WebForm1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
       
    <link rel="stylesheet" href="slider.css"/>
   <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>JUS- My Profile</title>
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/icon" href="assets/images/favicon.ico"/>
    <!-- Font Awesome -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
     <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <!-- Slick slider -->
    <link href="assets/css/slick.css" rel="stylesheet">
    <!-- Gallery Lightbox -->
    <link href="assets/css/magnific-popup.css" rel="stylesheet">
    <!-- Skills Circle CSS  -->
    <link rel="stylesheet" type="text/css" href="https://unpkg.com/circlebars@1.0.3/dist/circle.css">
    

    <!-- Main Style -->
    <link href="style.css" rel="stylesheet">

    <!-- Fonts -->

    <!-- Google Fonts Raleway -->
	<link href="https://fonts.googleapis.com/css?family=Raleway:300,400,400i,500,500i,600,700" rel="stylesheet">
	<!-- Google Fonts Open sans -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,400i,600,700,800" rel="stylesheet">
 
      <link rel="stylesheet" type="text/css" href="style2.css">

</head>

  



<body>

   <!--START SCROLL TOP BUTTON -->    <a class="scrollToTop" href="#">
      <i class="fa fa-angle-up"></i>
    </a>
  <!-- END SCROLL TOP BUTTON -->
  	
  	<!-- Start Header -->
	
	<!-- End Header -->

	<!-- Start main content -->
	<main>
		<!-- Start About -->
		<section id="mu-about">
  <div class="loginbox">
    <img src="avatar.jpg" class="avatar">
       <h1>My Profile</h1>
        <form id="form1" runat="server" style="text-align:center;">

        
              <asp:ImageMap ImageUrl="~/pp.jpg" ID="ImageMap1" runat="server" ImageAlign="AbsMiddle" Height="200px" Width="150px" align="left">
            </asp:ImageMap>
              <b><asp:Label ID="Label1" runat="server" Text="Parthrajsinh Vaghela"></asp:Label><br /></b>
               <br /> <asp:Label ID="Label4" runat="server" Text="312 Gala Magnus, South Bopal, <br/>Ahmedabad, Gujarat 380058"></asp:Label><br />
                <br /> <asp:Label ID="Label5" runat="server" Text="abcinfo@gmail.com"></asp:Label><br />
              <br /> <asp:Label ID="Label2" runat="server" Text="Contact Details "></asp:Label><br />
             <br />  <asp:Label ID="Label3" runat="server" Text="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Id Card Number "></asp:Label><br />

            <br /><asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Buttons1_click" />


          </form>

</div>
		</section>
		<!-- End About -->
        <header id="mu-hero">
		<div class="container">
			<nav class="navbar navbar-expand-lg navbar-light mu-navbar">
		
				<!-- image based logo -->
			    <a class="navbar-brand mu-logo" href=" ">
                    <img src="images/01.png" alt="IMG"  style="width: 100px ;height: 50px;align-content:center" ></a> 
			  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			    <span class="fa fa-bars"></span>
			  </button>

			  <div class="collapse navbar-collapse " id="navbarSupportedContent" style="float:right;">
			    <ul class="navbar-nav mr-auto mu-navbar-nav" style="float:right;">
			      <li class="nav-item" >
			        <a href="login.aspx">Home</a>
			      </li>
			      <li class="nav-item"><a href="Webform1.aspx">Welcome Security Gaurd</a></li>
			      <li class="nav-item"><a href="CS.aspx">Enter Gatepass</a></li>
			      <li class="nav-item"><a href="Display.aspx">Exit Gatepass</a></li>
			     <li class="nav-item active">
			        <a href="login.aspx">Log Out</a>
			      </li>
			    </ul>
			  </div>
			</nav>
		</div>
	</header>
	</main>
	
	<!-- End main content -->	
			
			
	

	
	<!-- JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
	<!-- Slick slider -->
    <script type="text/javascript" src="assets/js/slick.min.js"></script>
    <!-- Progress Bar -->
    <script src="https://unpkg.com/circlebars@1.0.3/dist/circle.js"></script>
    <!-- Filterable Gallery js -->
    <script type="text/javascript" src="assets/js/jquery.filterizr.min.js"></script>
    <!-- Gallery Lightbox -->
    <script type="text/javascript" src="assets/js/jquery.magnific-popup.min.js"></script>
    <!-- Counter js -->
    <script type="text/javascript" src="assets/js/counter.js"></script>
    <!-- Ajax contact form  -->
    <script type="text/javascript" src="assets/js/app.js"></script>
    
	
    <!-- Custom js -->
    <script type="text/javascript" src="assets/js/custom.js"></script>
    
    <script src="jquery.min.js"></script>
    <script src="main.js"></script>
    <script src="typed.js"></script>
    <script src="js/bootstrap.min.js">

    </script>
	<!-- About us Skills Circle progress  -->
	<script>
		// First circle
	    new Circlebar({
        element : "#circle-1",
        type : "progress",
	      maxValue:  "90"
	    });
		
		// Second circle
	    new Circlebar({
        element : "#circle-2",
        type : "progress",
	      maxValue:  "84"
	    });

	    // Third circle
	    new Circlebar({
        element : "#circle-3",
        type : "progress",
	      maxValue:  "60"
	    });

	    // Fourth circle
	    new Circlebar({
        element : "#circle-4",
        type : "progress",
	      maxValue:  "74"
	    });

	</script>
    
    <p>
        &nbsp;</p>
    
  </body>

</html>
