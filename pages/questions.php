<!DOCTYPE html>
<html lang="en">

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

    

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<?php
session_start();

?>
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 67d1c04d23bb6d913532054eec0ceaa9450be163
>>>>>>> df5a6a1d49c718160b06376cd2354971ddb53257
<?php
    $conn=mysqli_connect("127.0.0.1","root","","dd");
    if (mysqli_connect_errno()){echo "Failed to connect to MySQL: " .
    mysqli_connect_error();}
    $partID = mysqli_real_escape_string($conn, $_POST['bodypart']);

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

    ?>
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
=======
>>>>>>> 17c6febae14fb6db518cd0d53dd4a6017a11e690
>>>>>>> 67d1c04d23bb6d913532054eec0ceaa9450be163
>>>>>>> df5a6a1d49c718160b06376cd2354971ddb53257
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
                    <h1 class="page-header">Question</h1>
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
             <form id="demo-form2" action="result.php" method = "post" data-parsley-validate class="form-horizontal form-label-left">
                        <table>
              <thead>
                <tr>
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 17c6febae14fb6db518cd0d53dd4a6017a11e690
>>>>>>> 67d1c04d23bb6d913532054eec0ceaa9450be163
>>>>>>> df5a6a1d49c718160b06376cd2354971ddb53257
                  <th>Quetion1</th>
                </tr>
              </thead>
              <tbody id="id01"></tbody>
            </table>

                                    <div class="form-group">
                                            <div class="col-md-2 col-sm-2 col-xs-2">

                                                <?php
                                                 $connection = mysqli_connect("localhost","root","","dd");
                                                if (mysqli_connect_errno()){
                                                $error = "Failed to connect to MySQL: " . mysqli_connect_error();
                                                }
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 67d1c04d23bb6d913532054eec0ceaa9450be163
>>>>>>> df5a6a1d49c718160b06376cd2354971ddb53257
                                                $sql = "SELECT DISTINCT question.question, answer.ansID, answer.answer FROM question
JOIN listqa                             ON listqa.qID = question.qID
JOIN answer ON listqa.ansID = answer.ansID
JOIN listquestion ON listquestion.qID = listqa.qID
JOIN session ON session.partID = listquestion.partID 
WHERE session.partID = (SELECT partID FROM session WHERE sesID = (SELECT MAX(sesID) FROM session))
ORDER BY question.qID ASC";
                                                $result = mysqli_query($connection,$sql);
                                                 ?>
                                                <?php 
                                                //while ($row = mysqli_fetch_array($result)){
                                                for($i = 0; $i < 2; $i++) {
                                                $row = mysqli_fetch_array($result)
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
=======
                                                $sql = "SELECT a.ansID, a.answer, q.question FROM answer a, question q WHERE qID IN (SELECT qID FROM question WHERE question LIKE 'Fever%' )";
                                                $result = mysqli_query($connection,$sql);
                                                 ?>
                                                <?php 
                                                while ($row = mysqli_fetch_array($result)){
                                                //for($i = 0; $i < 1; $i++) {
>>>>>>> 17c6febae14fb6db518cd0d53dd4a6017a11e690
>>>>>>> 67d1c04d23bb6d913532054eec0ceaa9450be163
>>>>>>> df5a6a1d49c718160b06376cd2354971ddb53257
                                                ?>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="ans1" value =" <?php echo $row['ansID']; ?> "<?php echo $row['ansID']; ?> class="flat"> <?php echo $row['answer']; ?>
                                                    </label>
                                                </div>
                                                <?php } ?>
                                            </div>
                                    </div> 
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
=======
                    <!-- this function used for showing table-->
                  <th>Quetion1</th>
                </tr>
              </thead>
                    <!-- this function used for showing data from database. which values containing in java script-->
              <tbody id="id01"></tbody>
            </table>

        <div class="form-group">
            <div class="col-md-2 col-sm-2 col-xs-2">

                <?php
                    //this sql used for query answers from database 
                    $connection = mysqli_connect("localhost","root","","dd");
                    if (mysqli_connect_errno()){
                    $error = "Failed to connect to MySQL: " . mysqli_connect_error();
                    }
                    $sql = "SELECT a.ansID, a.answer, q.question FROM answer a, question q WHERE qID IN (SELECT qID FROM question WHERE question LIKE 'Fever%' )";
                    $result = mysqli_query($connection,$sql);
                    ?>
                    <?php 
                    while ($row = mysqli_fetch_array($result)){
                    ?>
                    <div class="radio">
                    <label>
                            <input type="radio" name="ans1" value =" <?php echo $row['ansID']; ?> "<?php echo $row['ansID']; ?> class="flat"> <?php echo $row['answer']; ?>
                            </label>
                    </div>
                    <?php } ?>
                    </div>
                    </div> 
>>>>>>> e0c8340b73bd9c8f4ab045899debcb1efbca7d15
>>>>>>> 17c6febae14fb6db518cd0d53dd4a6017a11e690
>>>>>>> 67d1c04d23bb6d913532054eec0ceaa9450be163
>>>>>>> df5a6a1d49c718160b06376cd2354971ddb53257
                    <div>
            <table>
              <thead>
                <tr>
                  <th>Quetion2</th>
                </tr>
              </thead>
              <tbody id="id02"></tbody>
            </table>
        </div>  
                                     <div class="form-group">
                                            <div class="col-md-2 col-sm-2 col-xs-2">

                                                <?php
                                                 $connection = mysqli_connect("localhost","root","","dd");
                                                if (mysqli_connect_errno()){
                                                $error = "Failed to connect to MySQL: " . mysqli_connect_error();
                                                }
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 67d1c04d23bb6d913532054eec0ceaa9450be163
>>>>>>> df5a6a1d49c718160b06376cd2354971ddb53257
                                                $sql = "SELECT DISTINCT question.question, answer.ansID, answer.answer FROM question
JOIN listqa                             ON listqa.qID = question.qID
JOIN answer ON listqa.ansID = answer.ansID
JOIN listquestion ON listquestion.qID = listqa.qID
JOIN session ON session.partID = listquestion.partID 
WHERE session.partID = (SELECT partID FROM session WHERE sesID = (SELECT MAX(sesID) FROM session))
ORDER BY question.qID ASC";
                                                $result = mysqli_query($connection,$sql);
                                                 ?>
                                                <?php 
                                                //while ($row = mysqli_fetch_array($result)){
                                                for($i = 0; $i < 5; $i++) {
                                                    $row = mysqli_fetch_array($result);
                                                    if ($i < 2)
                                                    {

                                                    }
                                                    else
                                                    {
                                                
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
=======
                                                $sql = "SELECT a.ansID, a.answer, q.question FROM answer a, question q WHERE qID IN (SELECT qID FROM question WHERE question LIKE 'Cough%' )";
                                                $result = mysqli_query($connection,$sql);
                                                 ?>
                                                <?php 
                                                while ($row = mysqli_fetch_array($result)){
                                                //for($i = 0; $i < 1; $i++) {
>>>>>>> 17c6febae14fb6db518cd0d53dd4a6017a11e690
>>>>>>> 67d1c04d23bb6d913532054eec0ceaa9450be163
>>>>>>> df5a6a1d49c718160b06376cd2354971ddb53257
                                                ?>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="ans2" value =" <?php echo $row['ansID']; ?> "<?php echo $row['ansID']; ?> class="flat"> <?php echo $row['answer']; ?>
                                                    </label>
                                                </div>
<<<<<<< HEAD
                                                <?php }} ?>
=======
<<<<<<< HEAD
                                                <?php }} ?>
=======
<<<<<<< HEAD
                                                <?php }} ?>
=======
                                                <?php } ?>
>>>>>>> 17c6febae14fb6db518cd0d53dd4a6017a11e690
>>>>>>> 67d1c04d23bb6d913532054eec0ceaa9450be163
>>>>>>> df5a6a1d49c718160b06376cd2354971ddb53257
                                            </div>
                                    </div>
             <div> 
            <table>
              <thead>
                <tr>
                  <th>Quetion3</th>
                </tr>
              </thead>
              <tbody id="id03"></tbody>
            </table>
        </div>  
                                     <div class="form-group">
                                            <div class="col-md-2 col-sm-2 col-xs-2">

                                                <?php
                                                 $connection = mysqli_connect("localhost","root","","dd");
                                                if (mysqli_connect_errno()){
                                                $error = "Failed to connect to MySQL: " . mysqli_connect_error();
                                                }
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 67d1c04d23bb6d913532054eec0ceaa9450be163
>>>>>>> df5a6a1d49c718160b06376cd2354971ddb53257
                                                $sql = "SELECT DISTINCT question.question, answer.ansID, answer.answer FROM question
JOIN listqa                             ON listqa.qID = question.qID
JOIN answer ON listqa.ansID = answer.ansID
JOIN listquestion ON listquestion.qID = listqa.qID
JOIN session ON session.partID = listquestion.partID 
WHERE session.partID = (SELECT partID FROM session WHERE sesID = (SELECT MAX(sesID) FROM session))
ORDER BY question.qID ASC";
                                                $result = mysqli_query($connection,$sql);
                                                 ?>
                                                <?php 
                                                    for($i = 0; $i < 7; $i++) {
                                                    $row = mysqli_fetch_array($result);
                                                    if ($i < 5)
                                                    {

                                                    }
                                                    else
                                                    {
                                                
                                                
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
=======
                                                $sql = "SELECT a.ansID, a.answer, q.question FROM answer a, question q WHERE qID IN (SELECT qID FROM question WHERE question LIKE 'Headache%' )";
                                                $result = mysqli_query($connection,$sql);
                                                 ?>
                                                <?php 
                                                while ($row = mysqli_fetch_array($result)){
                                                //for($i = 0; $i < 1; $i++) {
>>>>>>> 17c6febae14fb6db518cd0d53dd4a6017a11e690
>>>>>>> 67d1c04d23bb6d913532054eec0ceaa9450be163
>>>>>>> df5a6a1d49c718160b06376cd2354971ddb53257
                                                ?>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="ans3" value =" <?php echo $row['ansID']; ?> "<?php echo $row['ansID']; ?> class="flat"> <?php echo $row['answer']; ?>
                                                    </label>
                                                </div>
<<<<<<< HEAD
                                                <?php }} ?>
=======
<<<<<<< HEAD
                                                <?php }} ?>
=======
<<<<<<< HEAD
                                                <?php }} ?>
=======
                                                <?php } ?>
>>>>>>> 17c6febae14fb6db518cd0d53dd4a6017a11e690
>>>>>>> 67d1c04d23bb6d913532054eec0ceaa9450be163
>>>>>>> df5a6a1d49c718160b06376cd2354971ddb53257
                                            </div>
                                    </div>
             <div> 
            <table>
              <thead>
                <tr>
                  <th>Quetion4</th>
                </tr>
              </thead>
              <tbody id="id04"></tbody>
            </table>
        </div>  
                                     <div class="form-group">
                                            <div class="col-md-2 col-sm-2 col-xs-2">

                                                <?php
                                                 $connection = mysqli_connect("localhost","root","","dd");
                                                if (mysqli_connect_errno()){
                                                $error = "Failed to connect to MySQL: " . mysqli_connect_error();
                                                }
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 67d1c04d23bb6d913532054eec0ceaa9450be163
>>>>>>> df5a6a1d49c718160b06376cd2354971ddb53257
                                                $sql = "SELECT DISTINCT question.question, answer.ansID, answer.answer FROM question
JOIN listqa                             ON listqa.qID = question.qID
JOIN answer ON listqa.ansID = answer.ansID
JOIN listquestion ON listquestion.qID = listqa.qID
JOIN session ON session.partID = listquestion.partID 
WHERE session.partID = (SELECT partID FROM session WHERE sesID = (SELECT MAX(sesID) FROM session))
ORDER BY question.qID ASC";
                                                $result = mysqli_query($connection,$sql);
                                                $sql1 = "SELECT MAX(sesID) AS sesID FROM session;";
                                                $result1 = mysqli_query($connection,$sql1);
                                                $sql2 = "SELECT DISTINCT listqa.qID FROM listqa
                                                        JOIN listquestion ON listquestion.qID = listqa.qID
                                                        WHERE listquestion.partID = (SELECT partID FROM session WHERE sesID = (SELECT MAX(sesID) FROM session) );";
                                                $result2 = mysqli_query($connection,$sql2);
                                                 ?>
                                                <?php 
                                                for($i = 0; $i < 9; $i++) {
                                                    $row = mysqli_fetch_array($result);
                                                    if ($i < 7)
                                                    {

                                                    }
                                                    else
                                                    {
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
=======
                                                $sql = "SELECT a.ansID, a.answer, q.question FROM answer a, question q WHERE qID IN (SELECT qID FROM question WHERE question LIKE 'Dizzy%' )";
                                                $result = mysqli_query($connection,$sql);
                                                $sql1 = "SELECT MAX(sesID) AS sesID FROM session;";
                                                $result1 = mysqli_query($connection,$sql1);
                                                $sql2 = "SELECT MAX(partID) AS partID FROM bodyPart;";
                                                $result2 = mysqli_query($connection,$sql2);
                                                 ?>
                                                <?php 
                                                while ($row = mysqli_fetch_array($result)){
                                                //for($i = 0; $i < 1; $i++) {
>>>>>>> 17c6febae14fb6db518cd0d53dd4a6017a11e690
>>>>>>> 67d1c04d23bb6d913532054eec0ceaa9450be163
>>>>>>> df5a6a1d49c718160b06376cd2354971ddb53257
                                                ?>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="ans4" value =" <?php echo $row['ansID']; ?> "<?php echo $row['ansID']; ?> class="flat"> <?php echo $row['answer']; ?>
                                                    </label>
                                                </div>
<<<<<<< HEAD
                                                <?php }} ?>
=======
<<<<<<< HEAD
                                                <?php }} ?>
=======
<<<<<<< HEAD
                                                <?php }} ?>
=======
                                                <?php } ?>
>>>>>>> 17c6febae14fb6db518cd0d53dd4a6017a11e690
>>>>>>> 67d1c04d23bb6d913532054eec0ceaa9450be163
>>>>>>> df5a6a1d49c718160b06376cd2354971ddb53257
                                                <?php 
                                                while ($row = mysqli_fetch_array($result1)){
                                                ?>
                                                <?php 
                                                 $_SESSION['sesId'] =  $row['sesID'];

                                            } ?>
                                              <?php 
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 67d1c04d23bb6d913532054eec0ceaa9450be163
>>>>>>> df5a6a1d49c718160b06376cd2354971ddb53257

                                                $_SESSION['qID'] = array();
                                                while ($row = mysqli_fetch_array($result2)){
                                                ?>
                                                <?php 
                                                 array_push($_SESSION['qID'],$row['qID']);
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
=======
                                                while ($row = mysqli_fetch_array($result2)){
                                                ?>
                                                <?php 
                                                 $_SESSION['partID'] =  $row['partID'];
>>>>>>> 17c6febae14fb6db518cd0d53dd4a6017a11e690
>>>>>>> 67d1c04d23bb6d913532054eec0ceaa9450be163
>>>>>>> df5a6a1d49c718160b06376cd2354971ddb53257

                                            } ?>



                                            </div>
                                    </div>
             <div> 
            <table>
              <thead>
                <tr>
                  <th>Quetion5</th>
                </tr>
              </thead>
              <tbody id="id05"></tbody>
            </table>
        </div>  
                                     <div class="form-group">
                                            <div class="col-md-2 col-sm-2 col-xs-2">

                                                <?php
                                                 $connection = mysqli_connect("localhost","root","","dd");
                                                if (mysqli_connect_errno()){
                                                $error = "Failed to connect to MySQL: " . mysqli_connect_error();
                                                }
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 67d1c04d23bb6d913532054eec0ceaa9450be163
>>>>>>> df5a6a1d49c718160b06376cd2354971ddb53257
                                                $sql = "SELECT DISTINCT question.question, answer.ansID, answer.answer FROM question
JOIN listqa                             ON listqa.qID = question.qID
JOIN answer ON listqa.ansID = answer.ansID
JOIN listquestion ON listquestion.qID = listqa.qID
JOIN session ON session.partID = listquestion.partID 
WHERE session.partID = (SELECT partID FROM session WHERE sesID = (SELECT MAX(sesID) FROM session))
ORDER BY question.qID ASC";
                                                $result = mysqli_query($connection,$sql);
                                                 ?>
                                                <?php 
                                                for($i = 0; $i < 9; $i++) {
                                                    $row = mysqli_fetch_array($result);
                                                    if ($i < 7)
                                                    {

                                                    }
                                                    else
                                                    {
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
=======
                                                $sql = "SELECT a.ansID, a.answer, q.question FROM answer a, question q WHERE qID IN (SELECT qID FROM question WHERE question LIKE 'Sore throat%' )";
                                                $result = mysqli_query($connection,$sql);
                                                 ?>
                                                <?php 
                                                while ($row = mysqli_fetch_array($result)){
                                                //for($i = 0; $i < 1; $i++) {
>>>>>>> 17c6febae14fb6db518cd0d53dd4a6017a11e690
>>>>>>> 67d1c04d23bb6d913532054eec0ceaa9450be163
>>>>>>> df5a6a1d49c718160b06376cd2354971ddb53257
                                                ?>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="ans5" value =" <?php echo $row['ansID']; ?> "<?php echo $row['ansID']; ?> class="flat"> <?php echo $row['answer']; ?>
                                                    </label>
                                                </div>
<<<<<<< HEAD
                                                <?php }} ?>
=======
<<<<<<< HEAD
                                                <?php }} ?>
=======
<<<<<<< HEAD
                                                <?php }} ?>
=======
                                                <?php } ?>
>>>>>>> 17c6febae14fb6db518cd0d53dd4a6017a11e690
>>>>>>> 67d1c04d23bb6d913532054eec0ceaa9450be163
>>>>>>> df5a6a1d49c718160b06376cd2354971ddb53257
                                            </div>
                                    </div>           


                                        <div class="ln_solid"></div>
                                        <div class="form-group">
                                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                                <button type="submit" id ="cancelForm" class="btn btn-primary">Cancel</button>
<<<<<<< HEAD
                                                <button type="submit"  id="submitForm" class="btn btn-success">Submit</button>
=======
<<<<<<< HEAD
                                                <button type="submit"  id="submitForm" class="btn btn-success">Submit</button>
=======
<<<<<<< HEAD
                                                <button type="submit"  id="submitForm" class="btn btn-success">Submit</button>
=======
                                                <button type="submit" id="submitForm" class="btn btn-success">Submit</button>
>>>>>>> 17c6febae14fb6db518cd0d53dd4a6017a11e690
>>>>>>> 67d1c04d23bb6d913532054eec0ceaa9450be163
>>>>>>> df5a6a1d49c718160b06376cd2354971ddb53257
                                            </div>
                                        </div>
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
     var url = "http://localhost/eiei/startbootstrap-sb-admin-2-1.0.8/pages/loadQuestion.php";
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
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
        //this function used for showing first question. Which query from database
>>>>>>> e0c8340b73bd9c8f4ab045899debcb1efbca7d15
>>>>>>> 17c6febae14fb6db518cd0d53dd4a6017a11e690
>>>>>>> 67d1c04d23bb6d913532054eec0ceaa9450be163
>>>>>>> df5a6a1d49c718160b06376cd2354971ddb53257
        var out = "<tbody>";
        for(i = 0; i < 1; i++) {

           out += "<tr><td>" +
          arr[i].question +
          "</td></tr>";
        }
        out += "</tbody>";
<<<<<<< HEAD

=======
<<<<<<< HEAD

=======
<<<<<<< HEAD

=======
<<<<<<< HEAD

=======
        //this function used for showing second question. Which query from database
>>>>>>> e0c8340b73bd9c8f4ab045899debcb1efbca7d15
>>>>>>> 17c6febae14fb6db518cd0d53dd4a6017a11e690
>>>>>>> 67d1c04d23bb6d913532054eec0ceaa9450be163
>>>>>>> df5a6a1d49c718160b06376cd2354971ddb53257
        var out2 = "<tbody>";
        for(i = 1; i < 2; i++) {

           out2 += "<tr><td>" +
          arr[i].question +
          "</td></tr>";
        }
        out2 += "</tbody>";
        var out3 = "<tbody>";
        for(i = 2; i < 3; i++) {
<<<<<<< HEAD

=======
<<<<<<< HEAD

=======
<<<<<<< HEAD

=======
<<<<<<< HEAD

=======
        //this function used for showing third question. Which query from database
>>>>>>> e0c8340b73bd9c8f4ab045899debcb1efbca7d15
>>>>>>> 17c6febae14fb6db518cd0d53dd4a6017a11e690
>>>>>>> 67d1c04d23bb6d913532054eec0ceaa9450be163
>>>>>>> df5a6a1d49c718160b06376cd2354971ddb53257
           out3 += "<tr><td>" +
          arr[i].question +
          "</td></tr>";
        }
        out3 += "</tbody>";
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
        //this function used for showing fourth question. Which query from database
>>>>>>> e0c8340b73bd9c8f4ab045899debcb1efbca7d15
>>>>>>> 17c6febae14fb6db518cd0d53dd4a6017a11e690
>>>>>>> 67d1c04d23bb6d913532054eec0ceaa9450be163
>>>>>>> df5a6a1d49c718160b06376cd2354971ddb53257
        var out4 = "<tbody>";
        for(i = 3; i < 4; i++) {

           out4 += "<tr><td>" +
          arr[i].question +
          "</td></tr>";
        }
        out4 += "</tbody>";
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
        //this function used for showing fifth question. Which query from database
>>>>>>> e0c8340b73bd9c8f4ab045899debcb1efbca7d15
>>>>>>> 17c6febae14fb6db518cd0d53dd4a6017a11e690
>>>>>>> 67d1c04d23bb6d913532054eec0ceaa9450be163
>>>>>>> df5a6a1d49c718160b06376cd2354971ddb53257
        var out5 = "<tbody>";
        for(i = 4; i < 5; i++) {

           out5 += "<tr><td>" +
          arr[i].question +
          "</td></tr>";
        }
        out5 += "</tbody>";
        //$('select#itemCode').append(out);
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
        //this fuction used for contain value then send to show on table
>>>>>>> e0c8340b73bd9c8f4ab045899debcb1efbca7d15
>>>>>>> 17c6febae14fb6db518cd0d53dd4a6017a11e690
>>>>>>> 67d1c04d23bb6d913532054eec0ceaa9450be163
>>>>>>> df5a6a1d49c718160b06376cd2354971ddb53257
        document.getElementById("id01").innerHTML = out;
        document.getElementById("id02").innerHTML = out2;
        document.getElementById("id03").innerHTML = out3;
        document.getElementById("id04").innerHTML = out4;
        document.getElementById("id05").innerHTML = out5;
      }


        </script>

</body>

</html>
