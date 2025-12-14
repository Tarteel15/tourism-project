<?php
$conn = mysqli_connect("localhost", "root", "", "tourism");

if (!$conn) {
     mysqli_connect_error();
}

$destination_id = $_GET['id'];
?>
<!DOCTYPE html>
<html>
<head>
    <title>Book Your Trip</title>
    <link rel="stylesheet" href="booking.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
</head>
<body class="container py-5">

<h2 class="mb-4">Book Your Trip Now</h2>

<div class="book-container">
    <h2>Fill Your Information</h2>

    <form action="save_booking.php" method="POST">

        <label>Full Name</label>
        <input type="text" name="full_name">

        <label>Email</label>
        <input type="email" name="email">

        <label>Phone</label>
        <input type="text" name="phone">

        <label>Date</label>
        <input type="date" name="trip_date">

        <label>Message</label>
        <textarea name="message"></textarea>

        <input type="hidden" name="destination_id" value="<?php echo $_GET['id']; ?>">

        <button class="btn-confirm">Confirm Booking</button>
    </form>

</div>


</body>
</html>
