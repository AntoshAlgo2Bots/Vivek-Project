<?php
$con=mysqli_connect("localhost","root","","create_laeds_form");
$sel="SELECT*FROM `query_information`";
$result=mysqli_query($con,$sel);
$data=[];
while($row=mysqli_fetch_assoc($result)){
    $data[]=$row;
    
    
}
$respones['data']=$data;
echo json_encode($respones);
?>