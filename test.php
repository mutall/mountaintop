<?php
require_once 'include/crud.php';

$crud= new crud();
$sql="select picture.name from picture where location='slider' ";

$result=$crud->getData($sql);
?>
<html>
    <head></head>
    <body>
        <div>
        <?php
        foreach ($result as $key => $value) { ?>
        <div class="item">
            <img src="images/<?php echo $value['name']; ?>"/>
        </div>
            <?php
        }
        
        ?>
        </div>
    </body>
</html>