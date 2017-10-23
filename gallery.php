<?php
require_once "include/crud.php";
$crud = new crud();

$sql = "select * from picture where picture.location='gallery'";
$result = $crud->getData($sql);
include("include/header.php");
?>
<div class="panel-group">
    <div class="images">
        <?php foreach ($result as $key => $value) { ?>
            <figure>
                <a class="grouped_elements">
                    <img class="fancybox"
                         src="images/<?php echo $value['name']; ?>" 
                         alt="<?php echo $value['name']; ?>" 
                         width="120" height="120" />
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
<script type="text/javascript" src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script>
    $(function ($) {
        var addToAll = false;
        var gallery = true;
        var titlePosition = 'inside';
        $(addToAll ? 'img' : 'img.fancybox').each(function () {
            var $this = $(this);
            var title = $this.attr('title');
            var src = $this.attr('data-big') || $this.attr('src');
            var a = $('<a href="#" class="fancybox"></a>').attr('href', src).attr('title', title);
            $this.wrap(a);
        });
        if (gallery)
            $('a.fancybox').attr('rel', 'fancyboxgallery');
        $('a.fancybox').fancybox({
            titlePosition: titlePosition
        });
    });
    $.noConflict();
</script>
</body>

</html>