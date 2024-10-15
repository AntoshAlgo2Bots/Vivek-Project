<?php
$con=mysqli_connect("localhost","root","","create_laeds_form");
$sel="SELECT*FROM `person_information_tbl`";
$query=mysqli_query($con,$sel);
$data=[];
while($row=mysqli_fetch_assoc($query)){
    $data[]=$row;
}
$respones['data']=$data;
echo json_encode($respones);

?>