<?php

    $con = mysqli_connect('localhost', 'root');
    mysqli_select_db($con, 'freshpick');
    $sql = "SELECT * FROM product Where Featured=1";
    $featured = $con->query($sql);

?>



<!DOCTYPE html>
<html lange="en">
    <head>
        <title> FreshPick </title>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <script src="https://ajax.com.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device=width, initial-scale+1.0">
        <title>document</title>
    </head>
    <body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">FreshPick</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Products
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Cheese</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Vegetables</a>
        </div>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>
<div class="col-md-2"></div>
<div class="col-ms-8">
<div class="row">
    <h2 class="text-center">Top Products</h2> <br> <br>
    <?php
        while($product = mysqli_fetch_assoc($featured)):
    ?>

    <div class="col-md-5">
        <h4><?=$product['product_name'];?></h4>
        <img src="<?= $product['Image'];?>"alt="<?= $product['product_name'];?>"/>
        <p class="lprice">Rs <?=$product['product_price'];?></p>
        <a href="details.php">
            <button type="button" class="btn btn-success" data-toggle="modal" data-target="detals-1">More</button>
        </a>
    </div>
    <?php endwhile; ?>
</div>
</div>

    </body>
</html>