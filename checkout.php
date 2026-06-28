<?php
    session_start();
    include 'includes/order.inc.php';
?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
	<head>
		<meta charset="utf-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.7.2/css/all.min.css"  />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/checkout.css">
		<title>AJANTA | checkout</title>
	</head>
	<body>
		<div class="all">
			<div class="nav">
				<a href="cart.php"><i class="fas fa-angle-double-left"></i></a><h1>AJANTA</h1>
			</div>
			<div class="container">
				<h2> Checkout </h2>
				<div class="checkout-info">
					<div id="checkout-flex" class="checkout-form">
						<h3>Client information</h3>
						<form action="checkout.php" method="post">
							<input type="hidden" name="user_id" value="<?php echo $_SESSION['id'] ?? ''; ?>"><br>
							<input type="text" name="address" placeholder="Address..." required><br>
							<input type="text" name="city" placeholder="City..." required><br>
							<input type="text" name="phone" placeholder="Phone..." required><br>
							<input type="text" name="postal_code" placeholder="Postal code..." required><br>
							<h3>Payment Method</h3>
							<input type="radio" name="payment_method" value="mpesa" id="mpesa" required> <label for="mpesa">M-Pesa</label><br>
							<input type="radio" name="payment_method" value="card" id="card" required> <label for="card">Credit Card</label><br>
							<div id="mpesa-fields" style="display:none;">
								<input type="text" name="mpesa_phone" placeholder="M-Pesa Phone Number..." pattern="[0-9]{10,12}">
							</div>
							<div id="card-fields" style="display:none;">
								<input type="text" name="card_number" placeholder="Card Number..." pattern="[0-9]{13,19}">
								<input type="text" name="expiry" placeholder="Expiry (MM/YY)..." pattern="(0[1-9]|1[0-2])\/[0-9]{2}">
								<input type="text" name="cvv" placeholder="CVV..." pattern="[0-9]{3,4}">
							</div>
							<button type="submit" name="order-submit" class="order-submit-btn"> Place order</button><br>
						</form>
						<?php if(isset($result)) echo "<p>$result</p>"; ?>				<?php if(!empty($receipt_link)) echo '<p><a href="' . $receipt_link . '" target="_blank" class="receipt-link">View receipt and print to confirm payment</a></p>'; ?>				</div>
					<div id="checkout-flex" class="checkout-details">
						<h3 style="margin-bottom: 35px;">Checkout information</h3>
						<h4>Total: $ <?php echo $total; ?></h4>
						<h4>Total items: <?php echo $count; ?></h4>
					</div>
				</div>
			</div>
		</div>
		<script>
			document.querySelectorAll('input[name="payment_method"]').forEach(radio => {
				radio.addEventListener('change', function() {
					document.getElementById('mpesa-fields').style.display = this.value === 'mpesa' ? 'block' : 'none';
					document.getElementById('card-fields').style.display = this.value === 'card' ? 'block' : 'none';
				});
			});
		</script>
		<!--<footer>
			<div class="social">
			  <h2>FOLLOW US</h2>
			  <a href="#"> <i class="fab fa-facebook"> <span></span> </i> </a>
			  <a href="#"> <i class="fab fa-instagram"> <span></span> </i> </a>
			  <a href="#"> <i class="fab fa-twitter"> <span></span> </i> </a>
			  <a href="#"> <i class="fab fa-youtube"> <span></span> </i> </a>
		  </div>
		  <div class="credit">
		  	<h1>AJANTA | Developed by Trevor John Suji</h1>
		  </div>
		</footer>-->
	</body>
</html>
