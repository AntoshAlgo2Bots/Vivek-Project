<?php
$conn=mysqli_connect("localhost","root","Algo@123","vivek") or die(mysqli_error($conn));
 if(isset($_REQUEST['srch'])){

    $searchData=$_REQUEST['srch'];

    $db= $conn->query("SELECT * FROM `vivek`.organization_details_tbl a  

JOIN `vivek`.address_details_tbl b ON a.customer_id=b.customer_id

JOIN `vivek`.banking_details_tbl c ON a.customer_id=c.customer_id where a.customer_id = $searchData");
   $data=mysqli_fetch_assoc($db);

   if($data){
     $response["success"]=true;
     $response["message"]="user created success fully";
     $response['data']=$data;

   } else{
    $response['success']=false;
    $response['message']="something went wrong please try again";
    $response['sql_error']= mysqli_error($conn);
   }
 }
 echo  json_encode($response);
?>