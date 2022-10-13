<?php
    include '../includes/db.php';
    $id = $_GET['identification'];
    //echo $id;
    $q = mysqli_query($conn,"DELETE FROM customers WHERE reserveId='$id'") or die(mysqli_error($conn));
    if ($q) {
        header("location:../bookedRentSpaces");
    }
?>