<?php
session_start();
include 'includes/autoloader.inc.php';

if(!isset($_SESSION['id'])){
    header("Location: index.php");
    exit();
}

if(!isset($_GET['receipt_id']) && !isset($_GET['order_id'])){
    header("Location: index.php");
    exit();
}

$order_id = isset($_GET['order_id']) ? $_GET['order_id'] : $_GET['receipt_id'];

$order = new Order();
$receipt_result = $order->get_order_details($order_id);

if(!$receipt_result){
    header("Location: index.php");
    exit();
}

$order_row = $receipt_result->fetch_assoc();
if(!$order_row){
    header("Location: index.php");
    exit();
}

if($_SESSION['role'] == 'user' && $order_row['user_id'] != $_SESSION['id']){
    header("Location: index.php");
    exit();
}

$order_items_result = $order->get_items($order_id);
$items = [];
while($item = $order_items_result->fetch_assoc()){
    $items[] = $item;
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Receipt - Order #<?php echo htmlspecialchars($order_row['id']); ?></title>
    <style>
        body { font-family: Arial, sans-serif; background: #f5f5f5; margin: 0; padding: 20px; }
        .receipt-box { max-width: 800px; margin: auto; background: #fff; border: 1px solid #ddd; padding: 24px; }
        .receipt-header { display: flex; justify-content: space-between; align-items: flex-start; margin-bottom: 24px; flex-wrap: wrap; }
        .receipt-header h1 { margin: 0; font-size: 26px; }
        .receipt-header p { margin: 4px 0 0; font-size: 14px; color: #555; }
        .print-button { padding: 12px 18px; background: #111; color: #fff; border: none; cursor: pointer; border-radius: 4px; font-size: 14px; }
        .receipt-section { margin-bottom: 24px; }
        .receipt-section h2 { margin-bottom: 12px; font-size: 18px; border-bottom: 1px solid #eee; padding-bottom: 8px; }
        .receipt-data { display: grid; grid-template-columns: repeat(2, minmax(150px, 1fr)); gap: 12px; }
        .receipt-data div { font-size: 14px; line-height: 1.5; }
        .items-table { width: 100%; border-collapse: collapse; margin-top: 12px; }
        .items-table th, .items-table td { border: 1px solid #ddd; padding: 10px; text-align: left; }
        .items-table th { background: #fafafa; }
        .total { margin-top: 18px; font-weight: bold; font-size: 15px; }
        .note { margin-top: 16px; padding: 12px; background: #f0f8ff; border: 1px solid #d6eaff; }
        @media print {
            body { background: white; padding: 0; }
            .print-button { display: none; }
            .receipt-box { border: none; box-shadow: none; margin: 0; }
        }
    </style>
</head>
<body>
    <div class="receipt-box">
        <div class="receipt-header">
            <div>
                <h1>AJANTA Car Dealership</h1>
                <p>Order Receipt</p>
            </div>
            <button class="print-button" onclick="window.print()">Print Receipt</button>
        </div>

        <div class="receipt-section">
            <h2>Order Information</h2>
            <div class="receipt-data">
                <div><strong>Order ID:</strong> <?php echo htmlspecialchars($order_row['id']); ?></div>
                <div><strong>User ID:</strong> <?php echo htmlspecialchars($order_row['user_id']); ?></div>
                <div><strong>Date:</strong> <?php echo htmlspecialchars(date('Y-m-d H:i:s')); ?></div>
                <div><strong>Status:</strong> <?php echo htmlspecialchars($order_row['status'] ?? 'unknown'); ?></div>
            </div>
        </div>

        <div class="receipt-section">
            <h2>Customer Information</h2>
            <div class="receipt-data">
                <div><strong>Address:</strong> <?php echo htmlspecialchars($order_row['address']); ?></div>
                <div><strong>City:</strong> <?php echo htmlspecialchars($order_row['city']); ?></div>
                <div><strong>Phone:</strong> <?php echo htmlspecialchars($order_row['phone']); ?></div>
                <div><strong>Postal Code:</strong> <?php echo htmlspecialchars($order_row['postal_code']); ?></div>
            </div>
        </div>

        <div class="receipt-section">
            <h2>Items</h2>
            <table class="items-table">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Order Item ID</th>
                        <th>Car ID</th>
                        <th>Part ID</th>
                    </tr>
                </thead>
                <tbody>
                    <?php if(empty($items)): ?>
                        <tr><td colspan="4">No items found for this order.</td></tr>
                    <?php else: ?>
                        <?php foreach($items as $index => $item): ?>
                            <tr>
                                <td><?php echo $index + 1; ?></td>
                                <td><?php echo htmlspecialchars($item['id']); ?></td>
                                <td><?php echo htmlspecialchars($item['product_id']); ?></td>
                                <td><?php echo htmlspecialchars($item['product_id2']); ?></td>
                            </tr>
                        <?php endforeach; ?>
                    <?php endif; ?>
                </tbody>
            </table>
        </div>

        <div class="note">
            Please print this receipt to confirm payment.
        </div>
    </div>
</body>
</html>
