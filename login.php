<?php
require_once 'include/database.php';
$db = new database();
$mysqli = $db->connection;
session_start();
include ('include/header.php');
?>

<form action="login.php" method="post">
    <div class="myForm">
        <label for="Email">Email</label>
        <input type="text" name="mail" placeholder="Enter email" required="required"/>
    </div>
    <div class="myForm">
        <label for="password">Password</label>
        <input type="password" name="pass" placeholder="Enter Password" required="required"/>
    </div>
    <div class="myForm">
        <input type="submit" class="btn btn-group-sm" name="submit" value="LOGIN"/>
    </div>
</form>

<?php
//when you press submit get the post values
if (isset($_POST['submit'])) {
    $email = $_POST['mail'];
    $pass = $_POST['pass'];
//get all values for email and password which corresponds to the posted values
    $sql = "select * from users where email='$email' AND password='$pass'";
//Error reporting
    if (!$result = $mysqli->query($sql)) {
        die("Error: " . $sql . "<br>" . $mysqli->error);
    }
// do a check for number of rows in a result, if the email or password dont 
//match return an error message      
    $check = mysqli_num_rows($result);
    if ($check == 0) {
        echo '<script>alert("Incorrect Email and Password Combination."); window.open("login.php","_self")</script>';
    }
// assign a session to the email address 
    else {
        $_SESSION['mail'] = $email;
        echo "<script>window.open('admin.php','_self')</script>";
    }
}
?>
</div>
</div>
</body>
</html>