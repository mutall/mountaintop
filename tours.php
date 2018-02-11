<?php
require_once 'include/crud.php';
$crud = new crud();
include ('include/header.php');
?>

<div class="container-fluid">
    <div class="row content">
        <div class="col-sm-9">
            <div class="places">
                    <?php
                    $sql = "select * from itinerary";
                    $result = $crud->getData($sql);
                    foreach ($result as $key => $value) {
                        ?>
                        <figure class="figure" data-toggle="modal" data-target="#<?php echo $value['itinerary']; ?>">
                            <img src="images/places/<?php echo $value['image']; ?>"/>
                            <figcaption class="caption">
                                <p class="some_caption"><?php echo $value['caption']; ?></p>
                            </figcaption>
                        </figure>
                    <?php }
                    ?>
            </div>

            <form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
                <input type = "hidden" name = "cmd" value = "_s-xclick">
                <input type = "hidden" name = "hosted_button_id" value = "3Z7WEWFELWAW2">
                <table>
                    <tr>
                        <td><input type = "hidden" name = "on0" value = "ITINERARY">ITINERARY</td>
                    </tr>
                    <tr>
                        <td><select name = "os0">
                                <option value = "6 Day Maasai Mara">6 Day Maasai Mara </option>
                                <option value = "7 Day Aberdare">7 Day Aberdare </option>
                                <option value = "8 Day Mt Kenya">8 Day Mt Kenya </option>
                                <option value = "3 Day Thompson fall">3 Day Thompson fall</option>
                            </select> </td>
                    </tr>
                </table>
                <input type = "hidden" name = "currency_code" value = "USD">
                <input type = "image" src = "https://www.paypalobjects.com/en_US/i/btn/btn_paynowCC_LG.gif" border = "0" name = "submit" alt = "PayPal - The safer, easier way to pay online!">
                <img alt = "" border = "0" src = "https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width = "1" height = "1">
            </form>

            <h4>Leave a Comment:</h4>
            <form role = "form">
                <div class = "form-group">
                    <textarea class = "form-control" rows = "3" required></textarea>
                </div>
                <button type = "submit" class = "btn btn-success">Submit</button>
            </form>
            <br><br>

            <p><span class = "badge">2</span> Comments:</p><br>

            <div class = "row">
                <div class = "col-sm-2 text-center">
                    <img src = "images/man.png" class = "img-circle" height = "65" width = "65" alt = "Avatar">
                </div>
                <div class = "col-sm-10">
                    <h4>Samuel <small>Jan 2, 2017, 9:12 PM</small></h4>
                    <p>Such an adventure it was. Thank you mountaintop for your hospitality and good work</p>
                    <br>
                </div>
                <div class = "col-sm-2 text-center">
                    <img src = "images/man.png" class = "img-circle" height = "65" width = "65" alt = "Avatar">
                </div>
                <div class = "col-sm-10">
                    <h4>Muraya <small>Sep 25, 2016, 8:25 PM</small></h4>
                    <p>Had so much fun at lake Nakuru</p>
                    <br>
                    <p><span class = "badge">1</span> Comment:</p><br>
                    <div class = "row">
                        <div class = "col-sm-2 text-center">
                            <img src = "images/girl.png" class = "img-circle" height = "65" width = "65" alt = "Avatar">
                        </div>
                        <div class = "col-xs-10">
                            <h4>Veronica <small>Sep 25, 2016, 8:28 PM</small></h4>
                            <p>Me too!WOW!</p>
                            <br>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</div>
<!--modal boxes-->
<?php foreach ($result as $key => $value) { ?>

    <div id = "<?php echo $value['itinerary']; ?>" class = "modal fade" role = "dialog">
        <div class = "modal-dialog">

            <!--Modal content-->
            <div class = "modal-content">
                <div class = "modal-header">
                    <button type = "button" class = "close" data-dismiss = "modal">&times;
                    </button>
                    <h4 class="modal-title"><?php echo $value['title']; ?></h4>
                </div>
                <div class="modal-body">
                    <p>
                        <?php
                        echo $value['description'];
                        ?>
                    </p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>

        </div>
    </div>

    <?php
}
include ('include/footer.php');
?>
