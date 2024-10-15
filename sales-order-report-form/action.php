<?php
$con = mysqli_connect("localhost", "root", "", "new_form");
$sel = "SELECT*FROM `new_form_tbl`";
$data=[];
$query = mysqli_query($con, $sel);
while($row = mysqli_fetch_assoc($query)){
    $data[]=$row;
}
$response['data']=$data;
echo json_encode($response);
?>