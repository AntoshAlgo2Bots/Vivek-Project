<?php
$con=mysqli_connect("localhost","root","","vivek");
if(isset($_REQUEST['username'])){
    $db=$con->query("insert into vivek_tbl (username,password,email,mobail,address)values('{$_REQUEST['username']}','{$_REQUEST['password']}','{$_REQUEST['email']}','{$_REQUEST['mobail']}','{$_REQUEST['address']}')");
    if($db){
        $response["success"]=true;
        $response["message"]= "use created successfully";
        $response["inserted_id"]= mysqli_insert_id( $con );
    }else{
        $response["success"]=false;
        $response["message"]= "something went wrong please try  again";
        $response["inserted_id"]= mysqli_error( $con );

    }
}
echo json_encode($response);
?>