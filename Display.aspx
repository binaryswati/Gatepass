<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Display.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">

          <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
       
    <link rel="stylesheet" href="slider.css"/>
   <!-- Required meta tags -->
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
 

    <title>JUS- Display Images</title>
    <style type="text/css">
        body
        {
            font-family: Arial;
            font-size: 10pt;
        }
    </style>
     <link rel="stylesheet" type="text/css" href="stylecam.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script src='<%=ResolveUrl("~/Webcam_Plugin/jquery.webcam.js") %>' type="text/javascript"></script>
<script type="text/javascript">
var pageUrl = '<%=ResolveUrl("~/CS.aspx") %>';
$(function () {
    jQuery("#webcam").webcam({
        width: 320,
        height: 240,
        mode: "save",
        swffile: '<%=ResolveUrl("~/Webcam_Plugin/jscam.swf") %>',
        debug: function (type, status) {
            $('#camStatus').append(type + ": " + status + '<br /><br />');
        },
        onSave: function (data) {
            $.ajax({
                type: "POST",
                url: pageUrl + "/GetCapturedImage",
                data: '',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (r) {
                    $("[id*=imgCapture]").css("visibility", "visible");
                    $("[id*=imgCapture]").attr("src", r.d);
                },
                failure: function (response) {
                    alert(response.d);
                }
            });
        },
        onCapture: function () {
            webcam.save(pageUrl);
        }
    });
});
function Capture() {
    webcam.capture();
    return false;
}
</script>
    
   <!--START SCROLL TOP BUTTON -->    <a class="scrollToTop" href="#">
      <i class="fa fa-angle-up"></i>
    </a>
  <!-- END SCROLL TOP BUTTON -->
  	
   <div class="lgo">
			    <a class="navbar-brand mu-logo" href=" " style="ma">
                    <img src="images/01.png" align="right" alt="IMG"  style="width: 100px ;height: 50px;align-content:center; float:right; margin-right:0;" ></a> 
    </div>
    <div class="loginborder2" align="center">Exit Gate Pass</div>
      	<!-- Start Header -->
	<header id="mu-hero" style="margin-top:2.5%;">
		<div class="container">
			<nav class="navbar navbar-expand-lg navbar-light mu-navbar" style="margin-bottom:0px;">
		
			
			  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			    <span class="fa fa-bars"></span>
			  </button>

			  <div class="collapse navbar-collapse" id="navbarSupportedContent">
			    <ul class="navbar-nav mr-auto mu-navbar-nav">
			      
                    <li class="nav-item">
			        <a href="login.aspx">Home</a>
			      </li>
			      
			      <li class="nav-item"><a href="CS.aspx">Enter Gatepass</a></li>
			      <li class="nav-item"><a href="Display.aspx">Exit Gatepass</a></li>
                     

                    <div class="rgt">
                    <li class="nav-item"><a href="#">Welcome Security Guard</a></li>
			     <li class="nav-item active">
			        <a href="login.aspx">Log Out</a>
			      </li></div>
			    </ul>
			  </div>
			</nav>
		</div>
	</header>
	<!-- End Header --><!-- End Header -->
<form id="form1" runat="server">
    <div id="a2">
    <a href="#demo" class="btn btn-danger" data-toggle="collapse">Show Details</a>
        </div>
    <div id="demo" class="collapse">

    <div class="loginbox">
    <img src="pp.jpg" class="avatar">
       <h1>Staff Profile
              </h1>
       <div id="frm">
           <!--   <asp:ImageMap ImageUrl="~/pp.jpg" ID="ImageMap1" runat="server" ImageAlign="AbsMiddle" Height="100px" Width="75px" align="left">
            </asp:ImageMap>-->
          <b><u>Name</u></b>    <b><asp:Label ID="Label1" runat="server" Text=": Parthrajsinh Vaghela"></asp:Label><br /></b>
               <br /> <b><u>Address</u></b> <asp:Label ID="Label4" runat="server" Text=": 312, F type;

                 Security Guard colony,

                  Kurla (East), Mumbai – 400071.       "></asp:Label><br />
                <br /> <b><u>Email</u></b> <asp:Label ID="Label5" runat="server" Text=":  abcinfo@gmail.com"></asp:Label><br />
            
             <br />  <b><u>Id</u></b> <asp:Label ID="Label3" runat="server" Text=": 101 "></asp:Label><br />

          </div>
        </div>
     <div class="loginbox2">
<table border="2" cellpadding="10" cellspacing="10">
   <!-- <tr>
        <td align="center">
            <u>Live Camera</u>
        </td>
        <td>
        </td>
        <td align="center">
            <u>Captured Picture</u>
        </td>
    </tr>
    <tr>
        <td>
            <div id="webcam">
            </div>
        </td>
        <td>
            &nbsp;
        </td>
        <td>
            <asp:Image ID="imgCapture" runat="server" Style="visibility: hidden; width: 320px;
                height: 240px" />
        </td>
    </tr>-->

    <tr >
        <div class="loginbox2" >
        <td colspan="2" >

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" ShowHeader="false" CssClass="overflow-auto"  CellPadding="10" cellspacing="10">
    <Columns>
       
        <asp:ImageField DataImageUrlField="Value" ControlStyle-Height="300" ControlStyle-Width="400"  />
    </Columns>
</asp:GridView>

        </td>
            </div>
    </tr>
</table>

         </div>
<br />
<!--<asp:Button ID="btnCapture" Text="Capture" runat="server" OnClientClick="return Capture();" />
    <asp:Button ID="btnDisplay" runat="server" OnClick="btnDisplay_Click" Text="Click here to Display" />-->
<br />
<span id="camStatus"></span></div>
</form>
</body>
</html>
