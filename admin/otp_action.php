<?php
session_start();
include('database.php');

$enteredOTP = $_POST['otp'];

// Retrieve the corresponding OTP record from the database
$sql = "SELECT * FROM otp WHERE email = '$email' AND is_verified = 0 ORDER BY id DESC LIMIT 1";
$result = $conn->query($sql);

if ($result->num_rows == 1) {
    $row = $result->fetch_assoc();
    $storedOTP = $row['otp'];
    $name = $row['name'];
    
    if ($enteredOTP == $storedOTP) {
        // OTP is valid, mark it as verified
        $sql = "UPDATE otp SET is_verified = 1 WHERE id = " . $row['id'];
        if ($conn->query($sql) === true) {
            echo 'OTP verification successful! Welcome, ' . $name . '!';
            // Additional logic after successful OTP verification
        } else {
            echo 'Error updating OTP verification status: ' . $conn->error;
        }
    } else {
        echo 'Invalid OTP! Please try again.';
    }
} else {
    echo 'No OTP record found for this email.';
}

$conn->close();
header('Location:student_signup.php');

?>
