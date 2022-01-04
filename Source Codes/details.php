<?php

    $con = mysqli_connect('localhost', 'root');
    mysqli_select_db($con, 'freshpick');
    $sql = "SELECT * FROM product Where Features=1";
    $featured = $con->query($sql);

?>
<div class="col-md-2"></div>
<div class="col-ms-8">
<div class="row">
    <h2 class="text-center">Products Details:</h2> <br>
    <?php
        while($product = mysqli_fetch_assoc($featured)):
    ?>

    <div class="col-md-5">
        <h4><?=$product['product_name'];?></h4>
        <img src="<?= $product['Image'];?>"alt="<?= $product['product_name'];?>"/>
        <p class="bname">Rs <?=$product['marchent_name'];?></p>
        <p class="lprice">Rs <?=$product['product_price'];?></p>
        <p class="desc">Rs <?=$product['product_description'];?></p>
    </div>
    <?php endwhile; ?>
</div>
</div>