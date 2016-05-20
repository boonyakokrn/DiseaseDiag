<!DOCTYPE html>
<html lang="en">
<?php
session_start();
?>
<head>

	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <title>SB Admin 2 - Bootstrap Admin Theme</title>

    <!-- Bootstrap Core CSS -->
    <link href="../bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- Timeline CSS -->
    <link href="../dist/css/timeline.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="../bower_components/morrisjs/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

</head>
<?php
	$conn=mysqli_connect("127.0.0.1","root","","dd");
	if (mysqli_connect_errno()){echo "Failed to connect to MySQL: " .
	mysqli_connect_error();}
	$ansID1 = mysqli_real_escape_string($conn, $_POST['ans1']);
	$ansID2 = mysqli_real_escape_string($conn, $_POST['ans2']);
	$ansID3 = mysqli_real_escape_string($conn, $_POST['ans3']);
	$ansID4 = mysqli_real_escape_string($conn, $_POST['ans4']);
	$ansID5 = mysqli_real_escape_string($conn, $_POST['ans5']);
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 67d1c04d23bb6d913532054eec0ceaa9450be163
>>>>>>> df5a6a1d49c718160b06376cd2354971ddb53257
  $qID1 = mysqli_real_escape_string($conn, $_SESSION["qID"][0]);
  $qID2 = mysqli_real_escape_string($conn, $_SESSION["qID"][1]);
  $qID3 = mysqli_real_escape_string($conn, $_SESSION["qID"][2]);
  $qID4 = mysqli_real_escape_string($conn, $_SESSION["qID"][3]);
  $qID5 = mysqli_real_escape_string($conn, $_SESSION["qID"][4]);
	$sesID  = mysqli_real_escape_string($conn, $_SESSION['sesId']);

	mysql_query("START TRANSACTION");
	$sql = "INSERT INTO listSes (sesID,qID, ansID)
VALUES ('$sesID','$qID1', '$ansID1'), ('$sesID','$qID2', '$ansID2'), ('$sesID','$qID3', '$ansID3'), ('$sesID','$qID4', '$ansID4'), ('$sesID','$qID5', '$ansID5');";
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
=======
	$sesID  = mysqli_real_escape_string($conn, $_SESSION['sesId']);

	$partID = mysqli_real_escape_string($conn, $_SESSION['partID']);

	mysql_query("START TRANSACTION");
	$sql0 = "INSERT INTO session(partID) VALUES('$partID');";
	$a1 = 1;
	if (!mysqli_query($conn,$sql0)) {
	$a1 = 0;
	die('Error: ' . mysqli_error($conn));
	}
	if ($a1) {
    mysql_query("COMMIT");
	} else {        
    mysql_query("ROLLBACK");
	}
	echo "The data has been added into the database0.";
	



	mysql_query("START TRANSACTION");
	$sql = "INSERT INTO listSes (sesID,qID, ansID)
VALUES ('$sesID','00001', '$ansID1'), ('$sesID','00002', '$ansID2'), ('$sesID','00003', '$ansID3'), ('$sesID','00004', '$ansID4'), ('$sesID','00005', '$ansID5');";
>>>>>>> 17c6febae14fb6db518cd0d53dd4a6017a11e690
>>>>>>> 67d1c04d23bb6d913532054eec0ceaa9450be163
>>>>>>> df5a6a1d49c718160b06376cd2354971ddb53257
	$a2 = 1;
	if (!mysqli_query($conn,$sql)) {
	$a2 = 0;
	die('Error: ' . mysqli_error($conn));
	}
	
	if ($a2) {
    mysql_query("COMMIT");
} else {        
    mysql_query("ROLLBACK");
}
	echo "The data has been added into the database.";
	mysqli_close($conn);
	

	?>

<body>

  <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">Disease Diagnosis</a>
            </div>
            <!-- /.navbar-header -->

            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li>
                        <img src="eiei.jpg" alt="Mountain View" style="width:200px;height:200px;margin-left: 25px;-moz-border-radius: 50px;-webkit-border-radius: 50px;">
                        </li>
                        <li>
                            <a href="index.html"><i class="glyphicon glyphicon-user"></i> Profile</a>
                        </li>
                        <li>
                            <a href="index.html"><i class="glyphicon glyphicon-search"></i> Diagnose</a>
                        </li>
                        <li>
                            <a href="index.html"><i class="glyphicon glyphicon-off"></i>  Sign Out</a>
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Result</h1>
                </div> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                
                <br>
<div class="box-body">
            <style>
              table {
                border: 1px solid #ddd;
                border-collapse: collapse;
                border-spacing: 0;
                width: 100%;
              }
              th, td {
                padding: 8px;
                text-align: left;
                border-bottom: 1px solid #ddd;
              }
              th{
                background-color: #ADD8E6;
              }

              tr:hover{background-color:#f5f5f5}
              table tr:nth-child(odd) {
                background-color: #f1f1f1;
                }
                table tr:nth-child(even) {
                  background-color: #ffffff;
                }

              button {
                background-color: #4CAF50; /* Green */
                border: none;
                color: white;
                padding: 8px 16px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 14px;
                -webkit-transition-duration: 0.4s; /* Safari */
                transition-duration: 0.4s;
                cursor: pointer;
                }
                button:hover {
                  opacity: 0.75;
                }
            </style>

            <!-- /.box-body -->
          </div>

            
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <!-- /.row -->
            

            <div class="row">
<<<<<<< HEAD
             <form id="demo-form2"  action="index2.html" method = "post" data-parsley-validate class="form-horizontal form-label-left">
                        <table>
              <thead>
                <tr>
                  <th>The predicted result is</th>
=======
             <form id="demo-form2" action="movie2.php" method = "post" data-parsley-validate class="form-horizontal form-label-left">
                        <table>
              <thead>
                <tr>
<<<<<<< HEAD
                  <th>The predicted result is</th>
=======
<<<<<<< HEAD
                  <th>The predicted result is</th>
=======
                  <th>You have the opportunity to</th>
>>>>>>> 17c6febae14fb6db518cd0d53dd4a6017a11e690
>>>>>>> 67d1c04d23bb6d913532054eec0ceaa9450be163
>>>>>>> df5a6a1d49c718160b06376cd2354971ddb53257
                </tr>
              </thead>
              <tbody id="id01"></tbody>
              <tbody id="id02"></tbody>
            </table>
                            <div>
            <table>
              <thead>
                <tr>
<<<<<<< HEAD
                  <th>Suggestions</th>
=======
<<<<<<< HEAD
                  <th>Suggestions</th>
=======
<<<<<<< HEAD
                  <th>Suggestions</th>
=======
                  <th>Quetion2</th>
>>>>>>> 17c6febae14fb6db518cd0d53dd4a6017a11e690
>>>>>>> 67d1c04d23bb6d913532054eec0ceaa9450be163
>>>>>>> df5a6a1d49c718160b06376cd2354971ddb53257
                </tr>
              </thead>
              <tbody id="id03"></tbody>
            </table>
        </div>
<<<<<<< HEAD


 <div class="ln_solid"></div>
                                        <div class="form-group">
                                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                                <button type="submit" id ="cancelForm" class="btn btn-primary">Cancel</button>
                                                <button type="submit"  id="submitForm" class="btn btn-success">Submit</button>
                                            </div>
                                        </div>
=======
<<<<<<< HEAD

=======
<<<<<<< HEAD

=======
                            <div>
            <table>
              <thead>
                <tr>
                  <th>Quetion2</th>
                </tr>
              </thead>
              <tbody id="id04"></tbody>
            </table>
        </div>  
>>>>>>> 17c6febae14fb6db518cd0d53dd4a6017a11e690
>>>>>>> 67d1c04d23bb6d913532054eec0ceaa9450be163
     

>>>>>>> df5a6a1d49c718160b06376cd2354971ddb53257

                            

</form>
        </div>
                                        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

   
        <!-- form validation -->
        <script type="text/javascript">
            
        </script>
        <!-- /form validation -->
        <!-- editor -->
        <script>
            $(document).ready(function () {
                $('input[name="ans1"]').click(function () {
                    //$('#descr').val($('#editor').html());
                    var ans1 = $('input[name="ans1"]').val()
                    console.log(ans1);
                });


                

            });

            


                loadCharges();
    function loadCharges(){
      var xmlhttp = new XMLHttpRequest();
     // var url = "http://localhost/gentelella-master/production/loadMovie.php";
     //New folder\startbootstrap-sb-admin-2-1.0.8\pages
     var url = "http://localhost/eiei/startbootstrap-sb-admin-2-1.0.8/pages/loadResult.php";
      xmlhttp.onreadystatechange=function() {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
          displayResponse(xmlhttp.responseText);
          }
        }
      xmlhttp.open("GET", url, true);
      xmlhttp.send();
      }

      function displayResponse(response) {
        var arr = JSON.parse(response);
        var i;
        var out = "<tbody>";
        for(i = 0; i < 1; i++) {

           out += "<tr><td>" +
          arr[i].disName +
          "</td></tr>";
        }
        out += "</tbody>";

         var out2 = "<tbody>";
        for(i = 0; i < 1; i++) {

           out2 += "<tr><td>" +
          arr[i].disDesc +
          "</td></tr>";
        }
        var out3 = "<tbody>";
<<<<<<< HEAD
        for(i = 0; i < arr.length; i++) {
=======
<<<<<<< HEAD
        for(i = 0; i < arr.length; i++) {
=======
<<<<<<< HEAD
        for(i = 0; i < arr.length; i++) {
=======
        for(i = 0; i < 1; i++) {
>>>>>>> 17c6febae14fb6db518cd0d53dd4a6017a11e690
>>>>>>> 67d1c04d23bb6d913532054eec0ceaa9450be163
>>>>>>> df5a6a1d49c718160b06376cd2354971ddb53257

           out3 += "<tr><td>" +
          arr[i].cureDesc +
          "</td></tr>";
        }
        out3 += "</tbody>";
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
        var out4 = "<tbody>";
        for(i = 0; i < 1; i++) {

           out4 += "<tr><td>" +
          arr[i].suggest +
          "</td></tr>";
        }
        out4 += "</tbody>";
>>>>>>> 17c6febae14fb6db518cd0d53dd4a6017a11e690
>>>>>>> 67d1c04d23bb6d913532054eec0ceaa9450be163
>>>>>>> df5a6a1d49c718160b06376cd2354971ddb53257
        //$('select#itemCode').append(out);
        document.getElementById("id01").innerHTML = out;
        document.getElementById("id02").innerHTML = out2;
        document.getElementById("id03").innerHTML = out3;
        document.getElementById("id04").innerHTML = out4;
      }

        function openNewWindow(movieID)
          {
            window.open("http://localhost/gentelella-master/production/viewMovieInfo.php?movieID="+movieID);
          }

      function deleteCast(movieID) {
        var xmlhttp = new XMLHttpRequest();
        var url = "http://localhost/gentelella-master/production/deleteMovie.php?movieID="+movieID;
        xmlhttp.onreadystatechange=function() {
          if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
          //displayResponse(xmlhttp.responseText);
          loadCharges();
        }
      }
      xmlhttp.open("GET", url, true);
      xmlhttp.send();
    }

        </script>
</body>


</html>