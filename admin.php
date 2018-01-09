<?php
require_once 'include/database.php';
$db = new database();
$mysqli = $db->connection;

session_start();
//check if the session variable isset return false if there is no session variable
if (isset($_SESSION['mail'])) {
//select all emails where the email corresponds to the inputed value
    $sql = "select email from users";
//Query the results
    if (!$result = $mysqli->query($sql)) {
        die($sql . "Error " . $mysqli->error);
    }
    ?>
    <html>
        <head>
            <title>admin</title>
            <meta charset="utf-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1" />
            <link rel="icon" href="images/favicon.png" type="image/png" />
            <link rel="stylesheet" href="assets/css/main.css" />
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
            <script src="assets/js/mountainTop.js"></script>
            <style>
                .add_photos{
                    width: 50%;
                    margin: 0 auto;
                }
                .add_photos h4{
                    font-family: "carrois-gothic","scada" ,san-seriff;
                }
            </style>
            <script>
            </script>
        </head>

        <body class="homepage" onload="toast()">
            <div id="page-wrapper">
                <!-- Header -->
                <div id="header-wrapper">
                    <header id="header" class="container">
                        <!-- Logo -->
                        <div id="logo">
                            <img src="images/new_logo.jpg">
                        </div>
                        <!-- Nav -->
                        <nav id="navi">
                            <ul>
                                <li><a href="index.php">HOME</a></li>
                                <li class="current"><a href="admin.html">ADMIN</a></li>
                                <li><a href="logout.php">LOGOUT</a></li>
                            </ul>
                        </nav>
                    </header>
                </div>
                <div id="snackbar">DONT FORGET TO LOGOUT BEFORE YOU LEAVE</div>
                <div class="panel-group" id="accordion">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" onclick="populate('book', 'viewing.php?id=')" data-parent="#accordion" href="#collapse1"><center>
                                        VIEW BOOKINGS</center></a>
                            </h4>
                        </div>
                        <div id="collapse1" class="panel-collapse collapse in">
                            <div class="panel-body" id="book"></div>
                        </div>
                    </div>

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" onclick="populate('edit', 'viewing.php?id=')" data-parent="#accordion" href="#collapse2">
                                    <center>EDIT USERS</center></a>
                            </h4>
                        </div>
                        <div id="collapse2" class="panel-collapse collapse">
                            <div class="panel-body" id="edit"></div>
                        </div>
                    </div>

                </div>
                <div class="add_photos">
                    <h4>ADD GALLERY PHOTOS</h4>
                    <form action="upload.php" method="post" enctype="multipart/form-data">
                        <input type="file" name="image" id="img">
                        <label for="subject">
                            LOCATION</label>
                        <select id="subject" name="location" class="form-control" required="required">
                            <option value="na" selected="">Choose One:</option>
                            <option value="slider">HOMEPAGE(SLIDER)</option>
                            <option value="places">HOMEPAGE(PLACES)</option>
                            <option value="inner">PLACES(INNER)</option>
                            <option value="gallery">GALLERY PAGE</option>
                        </select>
                        <input type="text" name="caption" placeholder="Enter a caption">
                        <input type="submit" value="Upload" name="submit">
                    </form>
                </div>
                <input type="button" value="ADD ITINERARY" data-toggle="modal" data-target="#myModal"
            </div>


            <!-- Modal -->
            <div id="deleteUser" class="modal fade" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Delete User</h4>
                        </div>
                        <div class="modal-body">
                            <p>ARE YOU SURE YOU WANT TO REMOVE THIS USER</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" onclick="">YES, DELETE</button>
                            <button type="button" class="btn btn-default" data-dismiss="modal">NO, CLOSE</button>
                        </div>
                    </div>

                </div>
            </div>
            <div id="myModal" class="modal fade" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-body">    
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <form action="uploadTours.php" method="post" enctype="multipart/form-data">
                                <input type="file" name="image" id="img">
                                <input type="text" name="caption" id="caption" placeholder="Enter a caption">
                                <label for="subject">
                                    TOUR</label>
                                <select id="subject" name="section" class="form-control" required="required">
                                    <option value="na" selected="">Choose One:</option>
                                    <option value="kenya">kenya tour</option>
                                    <option value="tanzania">tanzania tour</option>
                                    <option value="uganda">uganda tour</option>
                                </select>
                                <input type="text" name="title" id="title" placeholder="Itinerary title">
                                <textarea class="form-control" rows="5" id="comment" name="description" placeholder="itinerary description">
                                </textarea>
                                <input type="submit" value="insert"/>
                                <input type="reset" value="cancel"/>
                            </form>
                        </div>
                    </div>

                </div>
            </div>
            <div id="addUser" class="modal fade" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Add a New User</h4>
                        </div>
                        <div class="modal-body">
                            <form action="viewing.php?function=add" method="post">
                                <label for="name">FIRST NAME</label>
                                <input type="text" size="20" name="fname" required="required"/>

                                <label for="name">LAST NAME</label>
                                <input type="text" size="20" name="lname" required="required"/>

                                <label for="email">EMAIL</label>
                                <input type="email" size="50" name="mail" requiredat="required"/>

                                <label for="password">Enter new password</label>
                                <input type="password" required="required" id="pass1" name="pass1" placeholder="password"/>
                                <input type="password" required="required" id="pass2" name="pass2" placeholder="re-enter password"/>

                        </div>
                        <div class="modal-footer">
                            <input type="submit" onclick="confirm()" class="btn btn-default"/>
                            <input type="reset" class="btn btn-default" data-dismiss="modal" value="CANCEL"/>
                        </div>
                        </form>
                    </div>

                </div>
            </div>

        </body>
    </html>
    <?php
} else {
    echo '<script>window.open("login.php","_self")</script>';
}
