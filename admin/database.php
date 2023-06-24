<?php 

$servername = "venkat";
$username = "venkat";
$password = "Venkatramana6668";
$dbname = "rguktn_db";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

if($conn)
{
    //echo"//connected";
}
// Check connection
if ($conn->connect_error) {
    //die("Connection failed: " . $conn->connect_error);
}
?>
