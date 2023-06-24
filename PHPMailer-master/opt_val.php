<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

// Retrieve form data
$enteredOTP = $_POST['otp'];
$email = $_POST['email'];

// Database configuration
$servername = "venkat";
$username = "venkat";
$password = "Venkatramana6668";$dbname = "rguktn_db";

// Create a connection
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Prepare the SQL statement to retrieve the OTP for the given email
$sql = "SELECT otp FROM otp WHERE email = ? ORDER BY generated_at DESC LIMIT 1";

// Prepare the statement
$stmt = $conn->prepare($sql);

// Bind the email parameter to the statement
$stmt->bind_param("s", $email);

// Execute the statement
$stmt->execute();

// Get the result
$result = $stmt->get_result();

// Check if a row is returned
if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    $storedOTP = $row['otp'];

    // Validate the entered OTP
    if ($enteredOTP === $storedOTP) {
        echo "OTP is valid. You can proceed.";
        // Perform further actions or redirect to a success page
    } else {
        echo "Invalid OTP. Please try again.";
        // Redirect back to the OTP entry page or display an error message
    }
} else {
    echo "No OTP found for the given email.";
    // Redirect back to the OTP entry page or display an error message
}

$stmt->close();
$conn->close();
?>
