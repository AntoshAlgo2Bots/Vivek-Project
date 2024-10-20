<?php
$conn=mysqli_connect("localhost","root","Algo@123","for_office") or die(mysqli_error($conn));
 if(isset($_REQUEST['srch'])){

    $searchData=$_REQUEST['srch'];

    $db= $conn->query("SELECT * FROM gate_entry_form_tbl WHERE s_no = $searchData");
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