<?php
session_start();


$con = new mysqli("localhost", "root", "Algo@123", "for_office");

if ($con->connect_error) {
    die("Connection failed: " . $con->connect_error);
}


if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    
    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        $user = "admin";
        $currentDateTime = date('Y-m-d H:i:s');
    
        // $record_no = $_POST['header_id'];
        $item_code = $_POST['item_name'];
        $item_name = $_POST['item_name'];
        $percentage = $_POST['percentage'];
        $wharehouse_location = $_POST['wharehouse_'];
        $revision = $_POST['revision'];
        $products = $_POST['products'];
        $organizin_mapping = $_POST['organizin_mapping'];
    
        $sql = "INSERT INTO `bom_hedar_detail` (`item_name`, `percentage`, `wharehouse_`, `revision`, `products`, `organizin_mapping`, `created_by`) 
                VALUES (?, ?, ?, ?, ?, ?, ?);";
    
    $stmt = $con->prepare($sql);
    if ($stmt === false) {
        die("Prepare failed: " . $conn->error);
    }
    
    $stmt->bind_param("sssssss", $item_name, $percentage, $wharehouse_location, $revision, $products, $organizin_mapping, $user);
    
    if($stmt->execute()){
        
        $response['success'] = true;
        $response['message'] = 'Header Data inserted Successfully ';
        $response['Record_no'] = $stmt->insert_id;
    }else{
        $response['success'] = false;
        $response['message'] = 'Header Data not inserted';
        }
    
      
        $stmt->close();
    }



    
    if (isset($_POST['bom_creation_form'])) {


        // include('../db.php');
        // include('../dbconnection/db.php');

            $inputs_data = $_POST['inputsData'];
            $bom_id = $_POST['header_id'];




            foreach ($inputs_data as $key => $value) {
            

                    // $user = $_SESSION['username'];
                    // $user = 'admin';
                    $datetime = date('Y-m-d');
                    $item_code = $value['item_code'];
                    $item_name = $value['Item_name'];
                    $percentage = $value['percentage'];
                    $Qty = $value['Qty'];
                    $process_seq = $value['process_seq'];
                    $total = 00;
                    $Price = 00;

                $stmt  = "INSERT INTO `for_office`.`bom_line_detail` (`bom_id`, `item_code`, `item_name`, `quantity`, `price`, `total` , `process_seq` , `created_by`,`created_date`)
                 VALUES (?, ?, ?, ?, ?, ?,?,?,?);";

                $stmt = $con->prepare($stmt);

                $stmt->bind_param("sssssssss", $bom_id,$item_code,$item_name,$Qty,$Price,$total,$process_seq,$user,$datetime);

                if($stmt->execute()){

                    $response['success'] = true;
                    $response['message'] = 'Line Level Data Successfully Creted ';
                }else{
                    $response['success'] = false;
                    $response['message'] = 'Line Level Data not Creted ';
                }
                
                
            }
            
        $response['data'] = $_POST;

        echo json_encode($response);

        

    }


}

echo json_encode($response);



















?>