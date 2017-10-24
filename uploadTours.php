<?php

require 'include/crud.php';

$crud = new crud();
if (isset($_FILES['image'])) {
    //create an empty arry to store the eroors
    $errors = array();

    //get the file name 
    $file_name = $_FILES['image']['name'];
    //get the size of the file
    $file_size = $_FILES['image']['size'];
    //Temp directory where the file is saved, will be moved later to images 
    //folder
    $file_tmp = $_FILES['image']['tmp_name'];
    //image type, jpg, jpeg or png 
    $file_type = $_FILES['image']['type'];

    //explode: Returns an array of strings, each of which is a substring of //stringformed by splitting it on boundaries formed by the string //delimiter.
    //then get the end pointer which is either jpeg, jpg, or png
    $file_ext = end(explode('.', $_FILES['image']['name']));

    $extensions = array("jpeg", "jpg", "png");

    //if the ectensions is not theones in the array raise an error
    if (in_array($file_ext, $extensions) === false) {
        $errors[] = "extension not allowed, please choose a JPEG or PNG file.";
    }

    //if file size is more than 2mb raise an error
    if ($file_size > 2097152) {
        $errors[] = 'File size must be excately 2 MB';
    }

    //upload the picture if no error was detected otherwise print out the //error

    if (empty($errors) == true) {
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {

            $section = $_POST['section'];
            $title = $_POST['title'];
            $description = $_POST['description'];
            $caption = $_POST['caption'];

            //find out how to insert into linked tables mysql
            $sql = "Insert into itinerary(`title`, `caption`, `image`, description)"
                    . " Values ('$title','$caption','$file_name', '$description')";
            $result = $crud->execute($sql);
            move_uploaded_file($file_tmp, "images/" . $file_name);
            echo "Success";
        }
    } else {
        print_r($errors);
    }
}
?>