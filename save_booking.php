<?php

$conn = mysqli_connect("localhost", "root", "", "tourism");

if (!$conn) {
    mysqli_connect_error();
}

$destination_id = $_POST['destination_id'];
$full_name      = $_POST['full_name'];
$email          = $_POST['email'];
$phone          = $_POST['phone'];
$trip_date      = $_POST['trip_date'];
$message        = $_POST['message'];

$sql = "INSERT INTO bookings (destination_id, full_name, email, phone, trip_date, message)
        VALUES ('$destination_id', '$full_name', '$email', '$phone', '$trip_date', '$message')";

if (mysqli_query($conn, $sql)) {
    echo "<h2>Your booking has been saved successfully!</h2>";
    echo "<a href='index.php'>Return to Home</a>";
} else {
    mysqli_error($conn);
}


?>
