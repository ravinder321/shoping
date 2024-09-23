<div class="head-div">
			<div class="main">
				<div class="head">
					<span>My Shopping Project</span>
					<p>THE BIGGEST CHOICE OF THE WEB</p>
				</div>
				<div class="btn">
					<?php if(empty($_SESSION['username'])) { ?>
					<a href="signup.php"><input type="button" name="" value="Log in"></a>
					<?php } else {?>
					<a href="index1.php?log=1"><input type="button" name="" value="Logout <?php echo $_SESSION['username']?>"></a>
					<?php } ?>
				</div>
			</div>
		</div>
		<div class="home-page">
		 	<div class="pagnation">
				<div class="list">
					<ul>
						<a href="index1.php"><li>HOME</li></a>
						<a href="newproduct.php"><li>NEW PRODUCT</li></a>
						<a href="special.php"><li>SPECIAL</li></a>
						<a href="allproduct.php"><li>ALL PRODUCTS</li></a>
						<li>REVIEWS</li>
						<a href="contectus.php"><li>CONTACT</li></a>
						<li>FAQS</li>
					</ul>
				</div>
				<div class="search">
					<div class="search-1">
						<div class="input">
							<input type="text" name="">
						</div>
						<div class="btnn">
							<input type="button" name="" value="Search">
						</div>
					</div>
				</div>
			</div>
		</div>