<?php   
 session_start();  
 $conn = mysql_connect("localhost", "root", "test1234");
  $shoppingcart=mysql_select_db("shoppingcart", $conn);
 if(isset($_POST["add_to_cart"]))  
 {  
      if(isset($_SESSION["shopping_cart"]))  
      {  
           $item_array_id = array_column($_SESSION["shopping_cart"], "item_id");  
           if(!in_array($_GET["id"], $item_array_id))  
           {  
                $count = count($_SESSION["shopping_cart"]);  
                $item_array = array(  
                     'item_id'               =>     $_GET["id"],  
                     'item_name'               =>     $_POST["hidden_name"],  
                     'item_price'          =>     $_POST["hidden_price"],  
                     'item_quantity'          =>     $_POST["quantity"]  
                );  
                $_SESSION["shopping_cart"][$count] = $item_array;  
           }  
           else  
           {  
                //echo '<script>alert("Item Already Added")</script>';  
                //echo '<script>window.location="index.php"</script>';  
				header('Location: index.php');
           }  
      }  
      else  
      {  
           $item_array = array(  
                'item_id'               =>     $_GET["id"],  
                'item_name'               =>     $_POST["hidden_name"],  
                'item_price'          =>     $_POST["hidden_price"],  
                'item_quantity'          =>     $_POST["quantity"]  
           );  
           $_SESSION["shopping_cart"][0] = $item_array;  
      }  
 }  
 if(isset($_GET["action"]))  
 {  
      if($_GET["action"] == "delete")  
      {  
           foreach($_SESSION["shopping_cart"] as $keys => $values)  
           {  
                if($values["item_id"] == $_GET["id"])  
                {  
                     unset($_SESSION["shopping_cart"][$keys]);  
                 
                     echo '<script>window.location="cart_1.php"</script>';  
                }  
           }  
      }  
 }  
 ?>  <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Kids gifts for NZ with Personal Message">
    <meta name="author" content="Kids gifts for NZ with Personal Message">
    <title>Gifts4nz</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->

<body>
	<header id="header"><!--header-->		
	<div class="container">
			<div class="header-middle "><!--header-middle-->
			
				<div class="row" >
					<!--<div class="col-md-12 col-sm-12 col-xs-12">
						<!--<div class="logo ">-->
							<img src="images/4.png" alt="logo1" style="max-width:100%"/></a>
						<!--</div>-->
					<!--</div>-->
				</div>
			</div>
		</div><!--/header-middle-->
	
		<div class="header-bottom"><!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-9">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="mainmenu pull-left">
							<ul class="nav navbar-nav collapse navbar-collapse">
								<li><a href="index.php" >Home</a></li>
								<li><a href="his.php">His</a></li>
								<li><a href="her.php">Her</a></li>
								<li><a href="kids.php" class="active">Kids</a></li>
								<li class="dropdown"><a href="specials.php">Special Occasions<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="specials.php">Birthdays</a></li>
										<li><a href="specials.php">Christmas</a></li>
										<li><a href="specials.php">Celebrations</a></li>
										<li><a href="specials.php">Weddings</a></li>
                                    </ul>
                                </li> 
								<li><a href="cart_1.php #contact-page">Contact</a></li>
								<li><a href="cart_1.php#cart_items"><i class="fa fa-shopping-cart"></i> Cart</a></li>
							</ul>
						</div>
					</div>
					<!--<div class="shop-menu ">
							<ul class="nav navbar-nav">
								<li><a href="cart_1.php#cart_items"><i class="fa fa-shopping-cart"></i> Cart</a></li>
							</ul>
						</div>-->
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->
	
	<section id="slider"><!--slider-->
		
			<div class="row">
				<div class="col-sm-12">
					<div id="slider-carousel" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
							<li data-target="#slider-carousel" data-slide-to="1"></li>
							<li data-target="#slider-carousel" data-slide-to="2"></li>
						</ol>
						
						<div class="carousel-inner">
							<div class="item active">
								<div class="col-sm-6">
									<h1><span>Gifts</span>4nz</h1>
									<h2 style="color:#d22322;">Free Delivery on any Products with your own personal message</h2>
								</div>
								<div class="col-sm-6">
									<img src="images/slider/christmas.jpg" class="girl img-responsive" alt="christmas" />
								</div>
							</div>
							<div class="item">
								<div class="col-sm-6">
									<h1><span>Gifts</span>4nz</h1>
									<h2 style="color:#d22322;">Free Delivery on any Products with your own personal message</h2>
								</div>
								<div class="col-sm-6">
									<img src="images/slider/kids.jpg" class="girl img-responsive" alt="kids" />
								</div>
							</div>
							
							<div class="item">
								<div class="col-sm-6">
									<h1><span>Gifts</span>4nz</h1>
									<h2 style="color:#d22322;">Free Delivery on any Products with your own personal message</h2>
								</div>
								<div class="col-sm-6">
									<img src="images/slider/wedding.jpg" class="girl img-responsive" alt="wedding" />
								</div>
							</div>
							
						</div>
						
						<a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
							<i class="fa fa-angle-left"></i>
						</a>
						<a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
							<i class="fa fa-angle-right"></i>
						</a>
					</div>
					
				</div>
			</div>

	</section><!--/slider-->
				 
					 
				<div class="container">
					<div class="col-md-12"><!--features_items-->
						<h2 class="title text-center">Featured Items</h2>
						<?php  
								$query = "SELECT * FROM kids_prod ORDER BY id ASC";  
								$result = mysql_query($query,$conn);  
								if(!$result)
								{
									echo "ERRORR";
								}
								else
								{
									if(mysql_num_rows($result) > 0)  
									{  
										 while($row = mysql_fetch_array($result))  
										 {  
						?> 
						 <div class="col-md-4">
						 <form method="post" action="index.php?action=add&id=<?php echo $row["id"]; ?>">  
						
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											 <img src="<?php echo $row["image"]; ?>" height="10" width="10" class="img-responsive" alt="Prodsimgs"/><br />  
											<h2>$ <?php echo $row["price"]; ?></h2>
											<p ><?php echo $row["name"]; ?> </p>
										
										</div>
										<div class="product-overlay">
											<div class="overlay-content">
											<h2><?php echo $row["name"]; ?></h2>
											<!--<h4><?php //echo $row["description"]; ?></h4>
											<h2>$ <?php //echo $row["price"]; ?></h2>
											<p ><?php e//cho $row["name"]; ?> </p>-->
												
												 <input type="hidden" name="hidden_name" value="<?php echo $row["name"];?>" >  
												<input type="hidden" name="hidden_price" value="<?php echo $row["price"];?>"> 
												<a href="kids-prod-detail.php?action=add&id=<?php echo $row["id"]; ?>" class="btn btn-default add-to-cart">View Details</a>
												<!--<input type="submit" name="add_to_cart" style="margin-top:5px;" class="btn btn-default add-to-cart" value="Add to Cart" />
												<input type="text" name="quantity" class="form-control" value="1"  placeholder="Quantity" style="width:40px;  margin-top:-10px; margin-left:120px;"/> -->
											</div>
										</div>
								</div>
							</div>
						</form>
						</div>
						<?php  
								}  
							} 
						}				
						?>  
						<div style="clear:both;"></div>  
					</div><!--features_items-->
					
				</div>
		<footer id="footer"   style="max-width:100%"><!--Footer-->
		<div class="footer-bottom">
			<div class="container" >
				<div class="row">
					<p class="pull-left">Copyright © 2018 Gifts4NZ. All rights reserved.</p>
					</div>
			</div>
		</div>
		
	</footer><!--/Footer-->
	

	

  
    <script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
</body>
</html>