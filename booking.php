<?php
include ("include/booking.php");

//
if ($_SERVER["REQUEST_METHOD"]=="POST") {
    require_once 'include/crud.php';
    $crud = new crud();
    
//get values from the form
    $first_name = $_POST['first'];
    $last_name = $_POST['last'];
    $phone_no = $_POST['phone'];
    $email = $_POST['email'];
    $date = $_POST['date'];
    $city = $_POST['city'];
    $number = $_POST['children'];
    $comments = $_POST['comment'];
//handle radio button
    if (isset($_POST['time_day'])) {
        $time = $_POST['time_day'];
    } else {
        $time = "morning";
    }
    $days = $_POST['days'];
    $nights = $_POST['nights'];
    if (isset($_POST['option'])) {
        $children = $_POST['option'];
    } else {
        $children = "no";
    }
//create the insert statements
    $sql = "INSERT INTO "
            . "client"
            . "(first_name, last_name, phone_no, email, `date`, city, "
            . "time_of_day, approx_no_days, approx_no_nights, children,"
            . " no_of_children, comment)"
            . "VALUES"
            . "('$first_name', '$last_name', $phone_no, '$email', '$date', "
            . "'$city', '$time', '$days', '$nights', '$children', '$number', "
            . "'$comments')";
    $result = $crud->execute($sql);
}




