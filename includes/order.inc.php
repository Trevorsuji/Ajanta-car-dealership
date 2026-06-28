<?php
	include 'includes/autoloader.inc.php';

	$cart = new Cart();
	$order = new Order();
	$payment = new Payment();
	$carts = $cart->get_cart($_SESSION['id']);

	$count = 0;
	$total = 0;
	$result = "";
	$receipt_link = "";
	while($row = $carts->fetch_assoc()){
		$total += $row['product_price'];
		$count++;
	}

	if(isset($_POST['order-submit'])){
		$order->place_order();
		$order_id = $order->get_last_order_id($_POST['user_id']);
		
		// Create payment
		$method = $_POST['payment_method'];
		$details = '';
		if($method == 'mpesa'){
			$details = $_POST['mpesa_phone'];
		} elseif($method == 'card'){
			$details = $_POST['card_number'] . '|' . $_POST['expiry'] . '|' . $_POST['cvv'];
		}
		$payment_id = $payment->create_payment($order_id, $total, $method, $details);
		
		// Simulate payment processing
		$payment_status = 'failed';
		if(!empty($details)){
			$payment_status = 'completed'; // Assume success if details provided
		}
		$payment->update_payment_status($payment_id, $payment_status);
		
		if($payment_status == 'completed'){
			$order->update_order_status($order_id, 'approved');
			$order->cart_to_order($_POST['user_id']);
			$order->clear_cart($_POST['user_id']);
			$_SESSION['cart'] = 0;
			unset($_POST);
			$count = 0;
			$total = 0;
			$result = "Order placed successfully!";
			$receipt_link = "generate_receipt_pdf.php?order_id=" . $order_id;
		} else {
			$result = "Payment failed. Order not approved.";
		}
	}
