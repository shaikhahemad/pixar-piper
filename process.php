<?php
$servername = "sql212.infinityfree.com";
$username = "if0_36038282";
$password = "Or9cEg19W8PKj";
$database = "if0_36038282_piper";
// Create connection
$conn = mysqli_connect($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
  // Retrieve form data
  $owner = $_POST["owner"];
  $quote = $_POST["quote"];

  // Prepare SQL statement
  $sql = "INSERT INTO quotes (owner, quote) VALUES (?, ?)";

  // Prepare and bind parameters
  $stmt = $conn->prepare($sql);
  $stmt->bind_param("ss", $owner, $quote);

  // Execute the statement
  if ($stmt->execute()) {
    // echo "Opinion submitted successfully!";
    header("Location: index.php");
    exit();
  } else {
    echo "Error: " . $sql . "<br>" . $conn->error;
  }

  // Close statement
  $stmt->close();
}
?>