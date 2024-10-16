<?php
$con = mysqli_connect("localhost", "root", "", "create_bom");
$id=$_GET['id'];
$del="DELETE FROM `create_bom_tbl` WHERE `id`='$id'";
$query= mysqli_query( $con , $del );
if($query){
    header('location:select.php');
}else{
    echo "date has been not deleted";
}
?>