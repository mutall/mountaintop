<?php
require_once "include/crud.php";
$crud = new crud();

$sql = "select * from picture where picture.location='gallery'";
$result = $crud->getData($sql);
include ('include/header.php');
?>
<ul class="tabs">
  <li class="active">WILDLIFE</li>
  <li>HOTELS</li>
  <li>TOUR VAN</li>
  <li>TEAM</li>
</ul>
<div class="panel-group">
    <div class="images">
        <?php foreach ($result as $key => $value) { ?>
            <figure>
                <a data-lightbox="images" 
                data-title="<?php echo $value['caption']; ?>"
                href="images/<?php echo $value['name']; ?>">
                    <img src="images/<?php echo $value['name']; ?>" 
                         alt="<?php echo $value['name']; ?>" 
                         width="120" height="120"
                          />
                </a>
                <figcaption>
                    <?php echo $value['caption']; ?>
                </figcaption>
            </figure>
            <?php
        }
        ?>
    </div>
</div>
</div>
</body>
</html>