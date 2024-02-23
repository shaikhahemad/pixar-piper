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
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Pixar Piper</title>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <link rel="stylesheet" href="style.css" type="text/css" media="all" />

</head>
<body>
<main>

<div class="container">
<iframe src="https://youtube.com/embed/KCf56Tb0CP8" frameborder="0" allowfullscreen></iframe>
<div class="note">
Watch this video and write your opinion
<div class="form-nav">
Open Form
</div>
</div>


<?php
$sql = "SELECT * FROM quotes";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
// Output data of each row
while ($row = $result->fetch_assoc()) {
?>

<div class="quote">
<blockquote>
<p>
<?php
echo $row["quote"]; ?>
</p>
<cite class="owner">
<?php echo $row["owner"]; ?>
</cite>
</blockquote>
</div>
<?php
}
}
?>
</div>
<div class="form">
<form action="process.php" method="post" accept-charset="utf-8">
<input type="text" required name="owner" placeholder="Enter Your Name" />
<textarea type="text" required name="quote" rows="6" placeholder="Enter Your Openion" /></textarea>
<button type="submit">submit</button>
</form>
</div>
</main>
<script>
$(document).ready(function(){
$('.form').hide();
$('.form-nav').click(function(){
$('.quote').toggle();
$('.form').toggle();
var text = $(this).text();
$(this).text(text === "Open Quotes" ? "Open Form": "Open Quotes");
});
});
</script>
</body>
</html>