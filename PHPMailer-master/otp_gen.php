<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

require '/opt/lampp/htdocs/collage_website-master/PHPMailer-master/src/PHPMailer.php';
require '/opt/lampp/htdocs/collage_website-master/PHPMailer-master/src/SMTP.php';
require '/opt/lampp/htdocs/collage_website-master/PHPMailer-master/src/Exception.php';

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

// Create the messages table if it doesn't exist
$servername = "venkat";
$username = "venkat";
$password = "Venkatramana6668";$dbname = "rguktn_db";

// Create a connection
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// SQL query to create the OTP table
$sql = "CREATE TABLE IF NOT EXISTS otp (
    id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    otp VARCHAR(10) NOT NULL,
    email VARCHAR(255) NOT NULL,
    generated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)";

if ($conn->query($sql) === TRUE) {
    echo "Table 'otp' created or already exists.";
} else {
    echo "Error creating table: " . $conn->error;
}

$conn->close();

// Handle form submission
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Retrieve form data
    $otp = generateOTP(); // Replace with your OTP generation logic
    $email = $_POST['email'];
    $generatedTime = date('Y-m-d H:i:s');

    // Insert OTP, email, and generated time into the OTP table (replace with your database configuration)
    $conn = new mysqli($servername, $username, $password, $dbname);
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Prepare the SQL statement with placeholders
    $sql = "INSERT INTO otp (otp, email, generated_at) VALUES (?, ?, ?)";
    
    // Prepare the statement
    $stmt = $conn->prepare($sql);
    
    // Bind the parameters to the statement
    $stmt->bind_param("sss", $otp, $email, $generatedTime);

    if ($stmt->execute() === TRUE) {
        echo "OTP inserted successfully";
    } else {
        echo "Error inserting OTP: " . $stmt->error;
    }

    $stmt->close();
    $conn->close();

    // Send OTP to the user's email using PHPMailer
    $userEmail = $email;
    $userSubject = "OTP Verification";
    $userMessage = "Your OTP is: $otp";

    $mail = new PHPMailer(true);
    try {
        // Enable verbose debug output
        //$mail->SMTPDebug = SMTP::DEBUG_SERVER;

        // Set SMTP configuration
        $mail->isSMTP();
        $mail->Host = 'smtp.gmail.com';
        $mail->SMTPAuth = true;
        $mail->Username = 'n190983@rguktn.ac.in'; // Replace with your email address
        $mail->Password = 'gmnjvpatyhzvhnvz'; // Replace with your email password
        $mail->SMTPSecure = 'ssl';
        $mail->Port = 465;

        // Set sender and recipient
        $mail->setFrom('$email', '$email'); // Replace with your email address and name
        $mail->addAddress($userEmail);

        // Set email content
        $mail->Subject = $userSubject;
        $mail->Body = $userMessage;

        // Send the email
        $mail->send();
        echo "<script>alert('OTP sent successfully to your email');</script>";
    } catch (Exception $e) {
        echo "Error sending email: " . $mail->ErrorInfo;
    }
}

// Function to generate OTP (replace with your OTP generation logic)
function generateOTP() {
    return mt_rand(100000, 999999);
}
?>
