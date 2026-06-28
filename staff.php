<?php
    session_start();
include 'includes/staff.inc.php';
?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.7.2/css/all.min.css"  />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/admin.css">
<title>AJANTA | Staff</title>
</head>
<body>
<header>
<div class="heading">
<h1><a href="index.php"><i class="fas fa-angle-double-left"></i></a>AJANTA <span> Staff Member </span> </h1>
</div>
<nav>
<h3 class="staff-orders-nav">ORDERS</h3>
<h3 class="staff-products-nav">PRODUCTS</h3>
</nav>
</header>
<?php
if(isset($_SESSION['message'])){
                echo '<h6 class="success">' . $_SESSION["message"] . '</h6>';
                unset($_SESSION['message']);
}
?>
<div id='tab' class="orders">
            <div class="container">
<div class="orders-flex-box">
<div class="orders-table">
<h1>Current Orders</h1>
<table>
<thead>
<th>id</th>
<th>User ID</th>
<th>Address</th>
<th>City</th>
<th>Phone</th>
<th>Receipt</th>
<th>Approve Payment</th>
</thead>
<tbody>
<?php
                                $i=1;
                                $orders->data_seek(0);
                                while($row = $orders->fetch_assoc())
                                {
                                    echo '<tr>
    <td>'.$i.'</td>
    <td>'.$row["user_id"].'</td>
                                        <td>'.$row["address"].'</td>
                                        <td>'.$row["city"].'</td>
                                        <td>'.$row["phone"].'</td>
    <td class="receipt-btn">
    <a href="staff.php?receipt_id='.$row["id"].'" title="View and Print Receipt"><i class="fas fa-receipt"></i></a>
    </td>
    <td class="approve-btn">
    <form action="staff.php?approve_id='.$row['id'].'" method="post">
                                                <button type="submit" name="approve-submit" style="cursor:pointer; border:none; background: transparent; color: #28a745; width:100%;"> <i class="fas fa-check"></i> </button>
    </form>
    </td>
    </tr>';
                                    $i++;
                                }
?>
</tbody>
</table>
                    </div>
                </div>
            </div>
</div>

<div id='tab' class="products">
            <div class="container">
<div class="products-flex-box">
<div class="products-table">
<h1>Products</h1>
<table>
<thead>
<th>id</th>
<th>Manufacturer</th>
<th>Model</th>
<th>Price</th>
<th>Type</th>
<th>Delete</th>
</thead>
<tbody>
<?php
                                $i=1;
                                while($row = $products->fetch_assoc())
                                {
                                    echo '<tr>
    <td>'.$i.'</td>
    <td>'.$row["manufacturer"].'</td>
    <td>'.$row["model"].'</td>
    <td>kes'.$row["price"].'</td>
                                        <td>'.$row["type"].'</td>
    <td class="delete-btn">
    <form action="staff.php?product_del_id='.$row['id'].'" method="post">
                                                <button type="submit" name="delete-submit-product" style="cursor:pointer; border:none; background: transparent; color: #f54c4c; width:100%;"> <i class="fas fa-trash-alt"></i> </button>
    </form>
    </td>
                                        <td style="display: none;">'.$row['id'].'</td>
    </tr>';
                                    $i++;
                                }
?>
</tbody>
</table>
                    </div>
                </div>
            </div>
</div>

<?php
if(isset($_GET['receipt_id'])){
$receipt_id = $_GET['receipt_id'];
$receipt_order = new Order();
$receipt_result = $receipt_order->get_order_details($receipt_id);

if($receipt_result){
$order_row = $receipt_result->fetch_assoc();
echo '
<div class="receipt-section" id="receipt-print">
<div class="receipt-header">
<h1>AJANTA CAR DEALERSHIP</h1>
<p>Order Receipt</p>
</div>
<div class="receipt-details">
<div class="left-column">
<p><strong>Order ID:</strong> '.$order_row["id"].'</p>
<p><strong>User ID:</strong> '.$order_row["user_id"].'</p>
<p><strong>Address:</strong> '.$order_row["address"].'</p>
<p><strong>City:</strong> '.$order_row["city"].'</p>
</div>
<div class="right-column">
<p><strong>Phone:</strong> '.$order_row["phone"].'</p>
<p><strong>Postal Code:</strong> '.$order_row["postal_code"].'</p>
<p><strong>Date:</strong> ' . date('Y-m-d H:i:s') . '</p>
</div>
</div>
<div class="receipt-items">
<h3>Items in this Order:</h3>
<table>
<thead>
<th>Item ID</th>
<th>Product ID (Car)</th>
<th>Product ID (Part)</th>
</thead>
<tbody>';

$order_items_result = $receipt_order->get_items($receipt_id);
while($item = $order_items_result->fetch_assoc()){
echo '<tr>
<td>'.$item["id"].'</td>
<td>'.$item["product_id"].'</td>
<td>'.$item["product_id2"].'</td>
</tr>';
}

echo '</tbody>
</table>
</div>
<div class="receipt-footer">
<p>Thank you for your business!</p>
<button class="print-btn" onclick="window.print()"><i class="fas fa-print"></i> Print Receipt</button>
<a href="generate_receipt_pdf.php?receipt_id='.$receipt_id.'" class="pdf-btn"><i class="fas fa-receipt"></i> View Receipt</a>
</div>
</div>
<style>
.receipt-section {
margin: 30px auto;
padding: 30px;
max-width: 800px;
border: 2px solid #333;
background-color: #f9f9f9;
}
.receipt-header {
text-align: center;
border-bottom: 2px solid #333;
padding-bottom: 15px;
margin-bottom: 20px;
}
.receipt-header h1 {
margin: 0;
font-size: 24px;
}
.receipt-header p {
margin: 5px 0 0 0;
font-size: 16px;
font-weight: bold;
}
.receipt-details {
display: flex;
justify-content: space-between;
margin-bottom: 20px;
font-size: 14px;
}
.receipt-details p {
margin: 5px 0;
}
.receipt-items {
margin: 20px 0;
}
.receipt-items h3 {
margin-bottom: 10px;
font-size: 16px;
}
.receipt-items table {
width: 100%;
border-collapse: collapse;
font-size: 13px;
}
.receipt-items th, .receipt-items td {
border: 1px solid #ddd;
padding: 8px;
text-align: left;
}
.receipt-items th {
background-color: #e0e0e0;
font-weight: bold;
}
.receipt-footer {
text-align: center;
margin-top: 20px;
padding-top: 20px;
border-top: 2px solid #333;
}
.receipt-footer p {
margin: 10px 0;
font-weight: bold;
}
.print-btn {
padding: 10px 20px;
background-color: #0ac910;
color: white;
border: none;
cursor: pointer;
border-radius: 5px;
font-size: 14px;
margin-top: 10px;
}
.print-btn:hover {
background-color: #099d0d;
}
.pdf-btn {
padding: 10px 20px;
background-color: #007bff;
color: white;
text-decoration: none;
border-radius: 5px;
font-size: 14px;
margin-top: 10px;
display: inline-block;
}
.pdf-btn:hover {
background-color: #0056b3;
}
@media print {
body {
background-color: white;
}
.receipt-section {
border: none;
margin: 0;
padding: 0;
}
.print-btn, nav, header nav {
display: none;
}
}
</style>';
}
}
?>

<script>
document.querySelectorAll('.staff-orders-nav, .staff-products-nav').forEach(element => {
element.addEventListener('click', function(){
document.querySelectorAll('.staff-orders-nav, .staff-products-nav').forEach(el => el.classList.remove('active'));
this.classList.add('active');

if(this.classList.contains('staff-orders-nav')){
document.querySelector('.orders').style.display = 'block';
document.querySelector('.products').style.display = 'none';
} else {
document.querySelector('.orders').style.display = 'none';
document.querySelector('.products').style.display = 'block';
}
});
});

// Set default tab
document.querySelector('.staff-orders-nav').classList.add('active');
document.querySelector('.products').style.display = 'none';
</script>
</body>
</html>
