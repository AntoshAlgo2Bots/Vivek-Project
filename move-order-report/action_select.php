<?php
$conn=mysqli_connect("localhost","root","","move_order_report") or die("connection failed");
$sql="SELECT*FROM move_order_report_tbl";
$result=mysqli_query($conn,$sql);
$data=[];
while($row=mysqli_fetch_array($result)){
    $data[]=$row;
}
$respones['data']=$data;
echo json_encode($respones);
?>