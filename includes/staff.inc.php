<?php
include 'autoloader.inc.php';

// Check if user is staff or super_admin
if(!isset($_SESSION['role']) || ($_SESSION['role'] != 'staff' && $_SESSION['role'] != 'super_admin')){
header("Location: index.php");
exit();
}

$order = new Order();
$orders = $order->get_order();

if(isset($_GET['order_id'])){
$order_items = $order->get_items($_GET['order_id']);
$order_id = $_GET['order_id'];
}

if(isset($_GET['approve_id'])){
$order->update_order_status($_GET['approve_id'], 'approved');
// Also update payment status if exists
$payment = new Payment();
$payments = $payment->get_payment($_GET['approve_id']);
if($payments->num_rows > 0){
    $payment_row = $payments->fetch_assoc();
    $payment->update_payment_status($payment_row['id'], 'completed');
}
$_SESSION['message'] = "Payment approved successfully!";
header("Location: staff.php");
exit();
}

$product = new Product();
$products = $product->get_product();
if(isset($_GET['product_del_id'])){
$product->delete_product($_GET['product_del_id']);
header("Location: staff.php");
exit();
}

// Receipt functionality
if(isset($_GET['receipt_id'])){
$receipt_id = $_GET['receipt_id'];
$order->get_order_details($receipt_id);
}
?>
