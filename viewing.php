<?php
require_once 'include/crud.php';
$crud = new crud();
switch ($_GET['id']) {
    case 'book':
        view_bookings();

        break;
    case 'edit':
        edit_users();
}
?>

<?php

function view_bookings() {
    global $crud;
    ?>
    <div class="table-responsive">
        <table class="table table-hover">
            <tr id="head_row">
                <th>First Name</th>
                <th>Last Name</th>
                <th>Mobile</th>
                <th>Email</th>
                <th>Date</th>
                <th>City</th>
                <th>Time of Day</th>
                <th>Days</th>
                <th>Nights</th>
                <th>Children</th>
                <th>comment</th>
            </tr>

            <?php
            //Get all details from the database
            $sql = "SELECT first_name, last_name, phone_no, email, `date`, city, time_of_day, approx_no_days, approx_no_nights, no_of_children, comment "
                    . " FROM client";

            $result= $crud->getData($sql);
            //use fetch statement to populate the table
            foreach ($result as $key => $value) {
                ?>
                <tr class="myTr">
                    <td><?php echo $value ['first_name']; ?> </td>
                    <td><?php echo $value ['last_name']; ?> </td>
                    <td><?php echo $value ['phone_no']; ?> </td>
                    <td><?php echo $value ['email']; ?> </td>
                    <td><?php echo $value ['date']; ?> </td>
                    <td><?php echo $value ['city']; ?> </td>
                    <td><?php echo $value ['time_of_day']; ?> </td>
                    <td><?php echo $value ['approx_no_days']; ?> </td>
                    <td><?php echo $value ['approx_no_nights']; ?> </td>
                    <td><?php echo $value ['no_of_children']; ?> </td>
                    <td><?php echo $value ['comment']; ?> </td>
                </tr> 
            <?php } ?>

        </table>
    </div>
<?php }
?>

<?php

function edit_users() {
    global $crud;
    ?>
    <div class="table-responsive">
        <table class="table table-hover">
            <tr id="head_row">
                <th>Thumb</th>
                <th>name</th>
                <th>email</th>
                <th>action</th>
            </tr>
            <?php
            //Get all details from the database
            $sql = "SELECT * FROM users";

            $result=$crud->getData($sql);
            //use fetch statement to populate the table
            foreach ($result as $key => $value) {
            ?>
                <tr class="myTr">
                    <td><?php echo $value ['thumb']; ?> </td>
                    <td><?php echo $value ['first_name'] . $value ['last_name']; ?> </td>
                    <td id="mail"><?php echo $value ['email']; ?> </td>
                    <td class="edit"><button type="button" data-toggle="modal" data-target="#deleteUser" onclick="parent(this)">DELETE USER</button></td>
                </tr>

            <?php }
            ?>
        </table>
        <center><button type="button" data-toggle="modal" data-target="#addUser">ADD NEW</button></center>
    </div>
    <?php
}
