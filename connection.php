<!-- database connection ................. -->
<?php
$conn = mysqli_connect("localhost","root","","cars");
if (mysqli_connect_errno())
{
    echo "Failed to connect to MySQL: " . mysqli_connect_error();

}
?>