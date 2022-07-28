<?php


$conn = new mysqli("localhost", "root", "", "cars");
if(isset($_POST['submit']))
{
    $category = $_POST['category'];
    $subcategory = $_POST['subcategory'];
    $price = $_POST['price'];
    $category = mysqli_query($conn, "SELECT category FROM category WHERE id=".$category);

    $category_fetch = mysqli_fetch_assoc($category);
    var_dump($category_fetch['category']);

    $query = "INSERT INTO datainsert (brand, model, price) VALUES ('".$category_fetch['category']."', '".$subcategory."', '".$price."' )";
    $query_run = $conn->query($query);

    var_dump($query_run);
    die();

    if($query_run){
        $_SESSION['status'] = "inserted succesfully";
        header("Location: index.php");
    } else {
        $_SESSION['status'] = " not inserted succesfully";
        header("Location: index.php");
    }
}

?>














