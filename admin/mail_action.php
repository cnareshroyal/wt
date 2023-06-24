<?php
session_start();
include('database.php');
ini_set('display_errors', 1);
error_reporting(E_ALL);

require '/opt/lampp/htdocs/collage_website-master/PHPMailer-master/src/PHPMailer.php';
require '/opt/lampp/htdocs/collage_website-master/PHPMailer-master/src/SMTP.php';
require '/opt/lampp/htdocs/collage_website-master/PHPMailer-master/src/Exception.php';

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

// Retrieve form data
$name = $_POST['sname'];
$email = $_POST['email'];

// Generate OTP
$otp = mt_rand(100000, 999999);


date_default_timezone_set('Asia/Kolkata');
// Calculate expiration time (e.g., 5 minutes from now)
$expiresAt = date('Y-m-d H:i:s', strtotime('+5 minutes'));

// Insert data into OTP table
$sql = "INSERT INTO otp (name, email, otp, is_verified, expires_at) VALUES ('$name', '$email', '$otp', 0, '$expiresAt')";
if ($conn->query($sql) === true) {
    // OTP inserted successfully
    // Send OTP to the user's email
    $mail = new PHPMailer(true);

    try {
        // Set SMTP configuration
        $mail->isSMTP();
        $mail->Host = 'smtp.gmail.com';
        $mail->SMTPAuth = true;
        $mail->Username = 'n190983@rguktn.ac.in';
        $mail->Password = 'gmnjvpatyhzvhnvz';
        $mail->SMTPSecure = 'ssl';
        $mail->Port = 465;
        
        // Sender and recipient details
        $mail->setFrom('n190983@rguktn.ac.in.com', 'venkat'); // Update with your email and name
        $mail->addAddress($email, $sname); // Email and name of the recipient

        // Email content
        $mail->Subject = 'OTP Verification';
        $mail->Body = 'Your OTP: ' . $otp;

        // Send email
        $mail->send();
        echo 'OTP sent successfully!';
    } catch (Exception $e) {
        echo 'Error: ' . $mail->ErrorInfo;
        error_log($mail->ErrorInfo); // Log the error message to the PHP error log
    }
} else {
    echo 'Error inserting OTP: ' . $conn->error;
}

$conn->close();
header('Location: otp_verification.php');
?>
