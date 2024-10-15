<?php
$con = mysqli_connect("localhost", "root", "", "transaction_book");
$sel = "SELECT*FROM `transaction_book_tbl`";
$data=[];
$result = mysqli_query($con, $sel);
while($row=mysqli_fetch_assoc($result)){
    $data[]=$row;

}
$response['data']=$data;
echo json_encode($response);

?>