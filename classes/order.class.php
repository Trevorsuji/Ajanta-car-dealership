<?php
	class Order extends DB{
		public function get_order($id = ""){
			if($id == ""){
				$sql = "SELECT * FROM `orders`;";
			}else{
				$sql = "SELECT * FROM `orders` WHERE `id` = '$id';";
			}
			$result = $this->connect()->query($sql);
			return $result;
		}
		public function delete_order($id){
			$sql = "DELETE FROM `orders` WHERE `id`='$id';";
			$this->connect()->query($sql);
		}
		public function get_cart($id){
			$sql = "SELECT * FROM `cart` WHERE `user_id`='$id';";
			$result = $this->connect()->query($sql);
		}
		public function clear_cart($id){
			$sql = "DELETE FROM `cart` WHERE `user_id`='$id';";
			$this->connect()->query($sql);
		}
		public function place_order(){
			$sql = "INSERT INTO `orders` (user_id, address, city, phone, postal_code)
			VALUES(?, ?, ?, ?, ?);";
			$conn = $this->connect();
			$stmt = $conn->prepare($sql);
			$stmt->bind_param('sssss', $_POST['user_id'], $_POST['address'], $_POST['city'], $_POST['phone'], $_POST['postal_code']);
			$stmt->execute();
		}
		public function get_last_order_id($user_id){
			$sql = "SELECT id FROM orders WHERE user_id = ? ORDER BY id DESC LIMIT 1;";
			$conn = $this->connect();
			$stmt = $conn->prepare($sql);
			$stmt->bind_param('i', $user_id);
			$stmt->execute();
			$result = $stmt->get_result();
			$row = $result->fetch_assoc();
			return $row['id'];
		}
		public function update_order_status($order_id, $status){
			$sql = "UPDATE orders SET status = ? WHERE id = ?;";
			$conn = $this->connect();
			$stmt = $conn->prepare($sql);
			$stmt->bind_param('si', $status, $order_id);
			$stmt->execute();
		}
		public function cart_to_order($id){
			$sql = "SELECT * FROM `orders` WHERE `user_id`='$id';";
			$result = $this->connect()->query($sql);
			$result = $result->fetch_assoc();
			$order_id = $result['id'];

			$sql = "SELECT * FROM `cart` WHERE `user_id`='$id';";
			$cart = $this->connect()->query($sql);
			while($row = $cart->fetch_assoc()){
				$car = $row['product_id'];
				$parts = $row['product_id_2'];
				$sql = "INSERT INTO `order_items` SET `order_id`='$order_id', `product_id`='$car', `product_id2`='$parts';";
				$this->connect()->query($sql);
			}
		}
		public function get_items($id){
			$sql = "SELECT * FROM `order_items` WHERE `order_id`='$id';";
			$result = $this->connect()->query($sql);
			return $result;
		}
	public function get_order_details($order_id){
		$sql = "SELECT * FROM `orders` WHERE `id`='$order_id';";
		$result = $this->connect()->query($sql);
		return $result;
	}
	}