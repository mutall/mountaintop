<?php
//include my crud class
require_once 'include/crud.php';
//create a new crud object
$crud= new crud();

include ('include/header.php');
?>


<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Wrapper for slides -->
    <div class="carousel-inner">
        <div class="item active">
            <img src="images/slider/slider2.jpg"/>
        </div>
        <?php
        $sql = "SELECT "
                . "picture.name "
                . "FROM "
                . "picture "
                . "WHERE "
                . "location = 'slider'";
                
        $result_slider= $crud->getData($sql);
        foreach ($result_slider as $key => $value) {
            ?>
        <div class="item">
            <img src="images/slider/<?php echo $value['name']; ?>"/>
        </div>

        <?php
            }
        ?>

    </div>
    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
<div class="places">
    <h1>PLACES TO VISIT</h1>
    <?php
    $sql1 = "SELECT "
            . "picture.name, picture.caption "
            . "FROM "
            . "picture "
            . "WHERE "
            . "filter='places'";

    $result_places = $crud->getData($sql1);
    foreach ($result_places as $key => $value) {
        ?>
        <figure class="figure">
            <a data-fancybox="gallery" href="#<?php echo $value['caption']; ?>">
                <img src="images/<?php echo $value['name']; ?>">
            </a>
            <figcaption class="caption">
                <p class="some_caption"><?php echo $value['caption']; ?></p>
            </figcaption>
        </figure>
        <?php
    }
    ?>
</div>
<?php include ('include/footer.php'); ?>