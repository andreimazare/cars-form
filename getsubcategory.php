<?php
include('connection.php');
$category = $_REQUEST['category'];
$sql = mysqli_query($conn, "SELECT * FROM subcategory WHERE category_id ='$category'");
?>

<?php
while($sql_fetch = mysqli_fetch_assoc($sql)){ ?>
<option value='<?=$sql_fetch['subcategory']?>'><?=$sql_fetch['subcategory']?></option>
    <?php } ?>