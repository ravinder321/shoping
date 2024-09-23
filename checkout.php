<?php session_start();?>
<?php include('common/connection.php');?>
<?php
	if(!empty($_GET['addtocart']))
	{
		$pid=$_GET['pid'];
		$uid=$_GET['uid'];
		$qty=$_GET['qty'];
		$query="insert into cart(userid,productid,qty) values($uid,$pid,$qty)";
		if(mysqli_query($connect,$query))
		{
			echo "record inserted";
		}
		else
		{
			echo "record not inserted";
		}
	}
?>

<!DOCTYPE html>
<html>
<head>
	<title>ENEST-3</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link href="https://fonts.googleapis.com/css?family=Bowlby+One+SC|Catamaran&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	
	<div class="main-div">
		<?php include('common/header.php');?>
		<div class="null">
			
		</div>
		<div class="main-categorious">
			<div class="footer">
				<div class="categorious">
					<div class="cate-heading">
						<p>CATEGORIES</p>
					</div>
					<div class="items">
						<?php include('common/categories.php');?>
					</div>
				</div>
				<div class="contact">
					<div class="contact-us">
						<p></p>
					</div>
					<div class="dish-info">
						<table>
							<tr>
								<th>id</th>
								<th>user name</th>
								<th>product names</th>
								<th>qty</th>
							</tr>
							<?php
								$userid=$_SESSION['userid'];
								$query="select * from cart c, product p, signup su where c.userid=su.id and c.productid=p.id and c.userid=$userid";
								$result=mysqli_query($connect,$query);
								while($row=mysqli_fetch_assoc($result))
								{
							?>
								<tr>
									<td><?php echo $row['id'];?></td>
									<td><?php echo $row['fullname'];?></td>
									<td><?php echo $row['pname'];?></td>
									<td><?php echo $row['qty'];?></td> 
								</tr>
							<?php } ?>
						</table>
					</div>
					</div>
				<div class="list-1">
					<ul>
						<li>HOME</li>
						<li>NEW PROJECT</li>
						<li>SPECIAL</li>
						<li>ALL PRODUCTS</li>
						<li>REVIEWS</li>
						<li>CONTACT</li>
						<li>FAQS</li>
					</ul>
				</div>
				<div class="footer-2">
					<p>Copyright <i class="fa fa-copyright" aria-hidden="true"></i>2013 Enest.Privacy Notice</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>