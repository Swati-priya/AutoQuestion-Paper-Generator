<!DOCTYPE html>
<?php
session_start();
?>
<html>
<head>
    <title>users page</title>
	<link rel="stylesheet" href="1.css" type="text/css">
		
		<script src="jquery-2.0.3.js">

		</script>
	<style>
	  .dropdown {
      position: relative;
      display: inline-block;
    }

    .dropbtn {
      background-color: rgb(51, 150, 153);
      border-radius:5px;
      color: white;
      padding: 10px;
      font-size: 20px;
      border: none;
      cursor: pointer;
    }

    .dropdown-content {
      display: none;
      position: absolute;
      right: 0;
      background-color: #f9f9f9;
      min-width: 160px;
      box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
      z-index: 1;
    }

    .dropdown-content a {
      color: black;
      padding: 12px 16px;
      text-decoration: none;
      display: block;
    }

    .dropdown-content a:hover {background-color: gainsboro}

    .dropdown:hover .dropdown-content {
      display: block;
    }

    .dropdown:hover .dropbtn {
      background-color: rgb(26, 83, 93);
    }
    .dropdown-content a:link, .dropdown-content a:visited {
      text-decoration: none!important;
      color:rgb(26, 83, 93);
    }
    .dropdown:hover>.dropdown-content a:hover {
      color:rgb(26, 83, 93);
    }

    .bottom {
        height :500px;
        position:  inherit;
        background-color: rgb(31, 104, 117);
        color:white;
        padding: 20px;
        padding-left:60px;
        margin: 10px 0px 0px 0px;
    }
    h4{
        color:white;
        font-size:2em;
        margin-left:0%;
        font-weight:lighter;
    }
    .foot{
        letter-spacing:1px;
        color:white;
        padding:20px;
        text-align:center;
        background-color:rgb(26, 83, 93);
    }

	h2{
		margin-top:50px;
		font-weight:lighter;
	}
	#customers {
		font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
		border-collapse: collapse;
		width: 100%;
	}

	#customers td, #customers th {
		border: 1px solid #ddd;
		padding: 8px;
	}

	#customers tr:nth-child(even){background-color: #f2f2f2;color:black;}
	#customers tr:nth-child(odd){background-color: white;color:black;}

	#customers tr:hover {background-color: #ddd;}

	#customers th {
		padding-top: 12px;
		padding-bottom: 12px;
		text-align: left;
		background-color: rgb(26, 83, 93);
		color: white;
	}
	</style>
</head>
	<body>
<?php	

 include ('header.php');
?> 
<div class="bottom">
  <h4><u>Welcome To Adiministrator Panel</u></h4>
  <div class="menubar">
    <div class="dropdown">
        <button class="dropbtn">Users</button>
        <div class="dropdown-content" style="left:0;">
          <a href ="users.php">Show Users</a>
          <a href="delusers.php">Delete users</a>
        </div>
    </div>
    <div class="dropdown">
      <button class="dropbtn">Papers</button>
      <div class="dropdown-content" style="left:0;">
        <a href ="add1word.php">Add new short question</a>
        <a href ="addbrief.php">Add new brief question</a>
        <a href ="addmcq.php">Add new MCQ</a>
      </div>
    </div>
  </div>
  <hr>
  <?php
	echo "<h2>List of current users..</h2>";
	include ('connection.php');

	$result=mysqli_query($conn ,"Select * from tbuser");
	$rows = mysqli_num_rows($result);
	echo "<table id='customers'>
			<tr> 
				<th>First name</th> 
				<th>Last name</th> 
				<th>Contact</th>
				<th>College</th>
				<th>Board</th>
				<th>Email</th>
				<th>Password</th>
				<th>Address</th>
				<th>Country</th>
				<th>Description</th>
				<th>Type</th>
			</tr>";
	
	for ($j = 0 ; $j < $rows ; ++$j)
		{
			$row = mysqli_fetch_row($result); 
			echo "<tr>";   
			for ($k = 0 ; $k < 11 ; ++$k) 
			echo "<td>$row[$k]</td>"; 
			echo "</tr>"; 
		}
	echo "</table>"; 
	
  ?>
</div>

<div class="foot">
    Made With <img src="Vector.svg"> By MCA Techies Of MNNIT
</div>

</body>
</html>
