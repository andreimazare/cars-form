<?php
include('connection.php');

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Dropdown</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="index.css" rel="stylesheet" />
</head>
<body>

  <form class="form-container" action="insert.php" method="post">
      <h1>Car insert form</h1>
          <div id="brand">
          <label id="label">Brand</label>
          <select name="category" class="form-select" id="category" onchange="get_subcategory()">
      <option>Choose brand</option>
      <?php
      $category = mysqli_query($conn, "SELECT * FROM category");
      while($category_fetch = mysqli_fetch_assoc($category)){
          ?>
      <option value="<?=$category_fetch['id']?>"><?=$category_fetch['category']?></option>
      <?php } ?>
      </select>
          </div>
<div id="model">
      <label id="label">Model</label>
          <select name="subcategory" class="form-select" id="subcategory">
          <option value="">Choose model</option>
      </select>
</div>


      <div id="price">
         <label id="label">Price</label> <input class="price-input" name="price" type="number" placeholder="Price" />
      </div>
        <input class="file" type="file" name="file">
      <button class="submit" name="submit" type="submit">Submit</button>

  </form>





<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    function get_subcategory(){
        var category = $('#category').val();
        $.ajax({
            url:"getsubcategory.php",
            type:"POST",
            data:{category:category},
            success: function(result){
                $("#subcategory").html(result);
            }
        })
    }
</script>
</body>