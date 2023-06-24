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

// SQL query to create the messages table
$sql = "CREATE TABLE IF NOT EXISTS messages (
    id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    subject VARCHAR(255) NOT NULL,
    message TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)";

if ($conn->query($sql) === TRUE) {
    echo "Table 'messages' created or already exists.";
} else {
    echo "Error creating table: " . $conn->error;
}

$conn->close();

// Handle form submission
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Retrieve form data
    $name = $_POST['name'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $subject = $_POST['subject'];
    $message = $_POST['message'];

    // Insert all inputs into the database (replace with your database configuration)
    $conn = new mysqli($servername, $username, $password, $dbname);
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Prepare the SQL statement with placeholders
    $sql = "INSERT INTO messages (name, email, phone, subject, message) VALUES (?, ?, ?, ?, ?)";
    
    // Prepare the statement
    $stmt = $conn->prepare($sql);
    
    // Bind the parameters to the statement
    $stmt->bind_param("sssss", $name, $email, $phone, $subject, $message);

    if ($stmt->execute() === TRUE) {
        echo "Data inserted successfully";
    } else {
        echo "Error inserting data: " . $stmt->error;
    }

    $stmt->close();
    $conn->close();

    // Send email to admin using PHPMailer
    $adminEmail = "n190818@rguktn.ac.in";
    $adminSubject = "New Message: $subject";
    $adminMessage = "A new message has been received from the contact form:\n\nName: $name\nEmail: $email\nPhone: $phone\nSubject: $subject\nMessage: $message";

    $mail = new PHPMailer(true);
    try {
        // Enable verbose debug output
        //$mail->SMTPDebug = SMTP::DEBUG_SERVER;

        // Set SMTP configuration
        $mail->isSMTP();
        $mail->Host = 'smtp.gmail.com';
        $mail->SMTPAuth = true;
        $mail->Username = 'n190983@rguktn.ac.in';
        $mail->Password = 'gmnjvpatyhzvhnvz';
        $mail->SMTPSecure = 'ssl';
        $mail->Port = 465;

        // Set sender and recipient
        $mail->setFrom($email, $name);
        $mail->addAddress($adminEmail);

        // Set email content
        $mail->Subject = $adminSubject;
        $mail->Body = $adminMessage;

        // Send the email
        $mail->send();
        echo "<script>alert('Email sent successfully');</script>";
    } catch (Exception $e) {
        echo "Error sending email: " . $mail->ErrorInfo;
    }

    // Redirect to a thank you page or back to the contact form
    echo "<script>alert('Thank you for your message. We will get back to you soon.');</script>";
}
?>
