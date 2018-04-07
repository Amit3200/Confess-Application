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
	font-weight: bolder;
}
.pick
{
	outline-offset: 0;
	outline: 0;
	border: 1px solid black;
	font-family: "QuickSand";
	font-weight: bolder;
	border-radius: 3px;
	width: 180px;
	height:80px;
	resize: none;
}
@media and (min-width: 500px)
{
	.pick{
	width:auto;
	}
}
.io
{
	background-color:#2ecc71;
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
.divText
{
	border:1px solid black;
}
.w3-animate-top1{position:relative;animation:animatetop 0.4s}@keyframes animatetop{from{top:-300px;opacity:0} to{top:0;opacity:1}}
.w3-animate-top{position:relative;animation:animatetop 0.8s}@keyframes animatetop{from{top:-300px;opacity:0} to{top:0;opacity:1}}
.w3-animate-left{position:relative;animation:animateleft 0.4s}@keyframes animateleft{from{left:-300px;opacity:0} to{left:0;opacity:1}}
.w3-animate-right{position:relative;animation:animateright 0.8s}@keyframes animateright{from{right:-300px;opacity:0} to{right:0;opacity:1}}
</style>
</head>
<body>
	<section class="i2 w3-animate-right">
		<center><div class="col-sm-12">
			<p class="launched"><b><font color="#f39c12" >Confess</font></b><br>&amp;<br>Let the secrets roll!</p><br><br>
			<h6 align="left">Welcome, {{name}}</h6>
			<center><h5>Blogs &amp; Stories</h5></center>
		<form method="post" action="/welcome1">
<textarea class="form-control-sm pick" id="po" placeholder="Enter Your Views" name="pname"></textarea>
<br><br>
<p align="right"><button type="submit" class="btn btn-default io waves-effect waves-light w3-animate-top" align="left">Post Up</button></p>
		</form>
<p align="left"><a href="/welcome3" class="btn btn-default io waves-effect waves-light w3-animate-top" align="left">View Post</a></p>
<section class="i3">
	<div class="col-sm-12" id="myProfile">
		<p></p>
	</div>
</section>
<center>Made by Amit Singh Sansoya</center><br><br><br>
	</div></center>
	</section>
<script>
    $(document).ready(function () {
        $('.io').click(function () {
            AddText();
        });

        function AddText() {
            var rndValue;
            rndValue = document.getElementById("io").value();
            $('<div class=divText>' + rndValue + '</div>').appendTo('#myProfile');
        }
    });
</script>
</body>
</html>
