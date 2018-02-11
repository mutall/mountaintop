<?php
require_once "include/crud.php";
$crud = new crud();

$sql = "select * from picture where picture.location='gallery'";
$result = $crud->getData($sql);
include ('include/header.php');
?>
<div class="toolbar">
  <button class="myBtn fil-cat" href="#" data-rel="all">All</button>
  <button class="myBtn fil-cat" href="#" data-rel="acc">Accomodation</button>
  <button class="myBtn fil-cat" href="#" data-rel="act">Activities</button>
  <button class="myBtn fil-cat" href="#" data-rel="scene">Scenaries</button>
  <button class="myBtn fil-cat" href="#" data-rel="wild">Wildlife</button>
</div>
<div style="clear:both"></div>
<div class="panel-group">
<?php foreach ($result as $key => $value) { ?>

    <div class="images scale-anm <?php echo $value['id'];?> all">
          <a href="images/<?php echo $value['name']; ?>" data-fancybox data-caption="<?php echo $value['caption'];?>">
            <img src="images/<?php echo $value['name']; ?>"
               alt="<?php echo $value['name']; ?>"
               width="250px" height="200px"
                 /></a>
      </div>
            <?php
        }
        ?>
</div>
<div style="clear:both"></div>
</div>
<script>
$(document).ready(function() {
$(function() {
var selectedClass = "";
$(".fil-cat").click(function(){
selectedClass = $(this).attr("data-rel");
 $(".panel-group").fadeTo(100, 0.1);
$(".panel-group div").not("."+selectedClass).fadeOut().removeClass('scale-anm');
setTimeout(function() {
  $("."+selectedClass).fadeIn().addClass('scale-anm');
  $(".panel-group").fadeTo(300, 1);
}, 300);

});
});
	/* This is basic - uses default settings */
  $("[data-fancybox]").fancybox({});
  });

</script>
</body>
</html>
