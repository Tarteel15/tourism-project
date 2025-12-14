<?php
$conn = mysqli_connect("localhost", "root", "", "tourism");

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

if(isset($_GET['id'])){
    $id = $_GET['id'];
    $sql = "SELECT * FROM destination WHERE id = $id";
    $result = mysqli_query($conn, $sql);
    $destination = mysqli_fetch_assoc($result);

    // Get images for this destination
    $img_sql = "SELECT * FROM destination_images WHERE destination_id = $id";
    $img_result = mysqli_query($conn, $img_sql);

} else {
    echo "No destination selected!";
    exit;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <title><?php echo $destination['name']; ?> - Details</title>
    <style>
        .thumb-img { width: 150px; height: 100px; object-fit: cover; margin-right: 10px; }
        .main-img { width: 100%; max-height: 400px; object-fit: cover; margin-bottom: 20px ; }
        .info-label { font-weight: bold; }
    </style>
</head>
<body>
<div class="container my-4">

    <!-- Main Image -->
    <img src="images/<?php echo $destination['image']; ?>" class="main-img" alt="<?php echo $destination['name']; ?>">

    <!-- Name and Location -->
    <h2><?php echo $destination['name']; ?></h2>
    <p><i class="fas fa-map-marker-alt"></i> <?php echo $destination['location']; ?></p>

<!-- Basic Info -->
<h5>Basic Info</h5>
<div class="row mb-3 ">

    <!-- Price -->
    <div class="col-md-4">
        <span class="info-label">Price:</span> 200 EGP
    </div>

    <!-- Rating -->
    <div class="col-md-4">
        <span class="info-label">Rating:</span>
        <?php
        $rating = $destination['rating']; // بدون تقريب
        for($i=1; $i<=5; $i++){
            if($i <= floor($rating)){
                echo '<i class="fas fa-star" style="color:#f59e0b;"></i>'; // نجمة كاملة
            } elseif($i - $rating <= 0.5){
                echo '<i class="fas fa-star-half-alt" style="color:#f59e0b;"></i>'; // نصف نجمة
            } else {
                echo '<i class="far fa-star" style="color:#f59e0b;"></i>'; // نجمة فارغة
            }
        }
        ?>
    </div>

    <!-- Duration -->
    <div class="col-md-4">
        <span class="info-label">Duration:</span> <?php echo $destination['duration']; ?>
    </div>

</div>

    <!-- Description -->
    <h5>Description</h5>
    <p><?php echo $destination['description']; ?></p>

    <!-- Thumbnails -->
    <h5>Images</h5>
   <div class="d-flex">
    <?php while($img = mysqli_fetch_assoc($img_result)) { ?>
        <div class="image-caption-item">
            <img src="images/<?php echo $img['image_url']; ?>" class="thumb-img" alt="<?php echo $img['caption']; ?>">
            <p><?php echo $img['caption']; ?></p>
        </div>
    <?php } ?>
</div>

</div>
<div class="text-center my-4">
    <a href="book.php?id=<?php echo $destination['id']; ?>" class="btn btn-warning btn-lg" style="color:white;">Book Your Trip Now</a>
</div>


<script src="https://kit.fontawesome.com/1cd6bebb2c.js" crossorigin="anonymous"></script>
<script src="bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>

