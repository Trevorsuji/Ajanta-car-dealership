<?php
	class Payment extends DB{
		public function create_payment($order_id, $amount, $method, $details){
			$sql = "INSERT INTO payments (order_id, amount, method, details) VALUES (?, ?, ?, ?);";
			$conn = $this->connect();
			$stmt = $conn->prepare($sql);
			$stmt->bind_param('idss', $order_id, $amount, $method, $details);
			$stmt->execute();
			return $conn->insert_id;
		}

		public function update_payment_status($payment_id, $status){
			$sql = "UPDATE payments SET status = ? WHERE id = ?;";
			$conn = $this->connect();
			$stmt = $conn->prepare($sql);
			$stmt->bind_param('si', $status, $payment_id);
			$stmt->execute();
		}

		public function get_payment($order_id){
			$sql = "SELECT * FROM payments WHERE order_id = ?;";
			$conn = $this->connect();
			$stmt = $conn->prepare($sql);
			$stmt->bind_param('i', $order_id);
			$stmt->execute();
			return $stmt->get_result();
		}
	}
?>