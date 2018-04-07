<html>
<head>
<title>
My App
</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/css/materialize.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/js/materialize.min.js"></script>
 <script
  src="https://code.jquery.com/jquery-2.2.4.min.js"
  integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
  crossorigin="anonymous"></script>   
  <script
  src="https://code.jquery.com/jquery-3.3.1.min.js"
  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
  crossorigin="anonymous"></script>
<style>
body
{
	margin: 0px;
	padding: 0px;
	font-family: "QuickSand";
	overflow: hidden;
background: #000000;  /* fallback for old browsers */
background: -webkit-linear-gradient(to bottom, #434343, #000000);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to bottom, #434343, #000000); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
color:white;
}
.pick
{
	outline-offset: 0;
	outline: 0;
	border: 1px solid black;
	font-family: "QuickSand";
	font-weight: bolder;
	border-radius: 3px;
	width: 260px;
}
.io
{
	background-color:#e67e22;
	font-family: "QuickSand";
	font-weight: bolder;
}
.io:hover
{
	cursor: pointer;
	background: #e74c3c;
	color:white;
}
.launched
{
	font-size: 24px;
}
.w3-animate-top1{position:relative;animation:animatetop 0.4s}@keyframes animatetop{from{top:-300px;opacity:0} to{top:0;opacity:1}}
.w3-animate-top{position:relative;animation:animatetop 0.8s}@keyframes animatetop{from{top:-300px;opacity:0} to{top:0;opacity:1}}
.w3-animate-left{position:relative;animation:animateleft 0.4s}@keyframes animateleft{from{left:-300px;opacity:0} to{left:0;opacity:1}}
.w3-animate-right{position:relative;animation:animateright 0.8s}@keyframes animateright{from{right:-300px;opacity:0} to{right:0;opacity:1}}
</style>
</head>
<body>
	<section class="i1 w3-animate-right">
		<center><div class="col-sm-12">
			<p class="launched"><b><font color="#f39c12" >Confess</font><b><br>&amp;<br>Let the secrets roll!</p><br><br>
<form method="post" action="/welcome">
<input type="text" class="form-control-sm pick" placeholder="Enter Name" name="uname"  style="color: white;" required><br><br>
<input type="Password" class="form-control-sm pick" placeholder="Enter Password" name="upass" style="color: white;"  required><br><br>
<button type="submit" class="btn btn-default io waves-effect waves-light w3-animate-top">Log In</button>
		</form>
<a href="\shift" class="sign">Don't have an account? Sign up here!</a><br><br>
<center>Made by Amit Singh Sansoya</center><br><br><br>
	</div></center>
	</section>

</body>
</html>