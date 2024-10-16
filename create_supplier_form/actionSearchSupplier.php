<?php
$conn = mysqli_connect("localhost", "root", "", "vivek-project-main") or die("connection failed");


if (isset($_REQUEST['srch'])) {


    $searchData = $_REQUEST['srch'] ;
    $db = $conn->query("SELECT * FROM `vivek-project-main`.supplier_organization_details_tbl a  

JOIN `vivek-project-main`.supplier_address_details_tbl b ON a.supplier_id=b.supplier_id

JOIN `vivek-project-main`.supplier_banking_details_tbl c ON a.supplier_id=c.supplier_id where a.supplier_id = $searchData"); 
    $data=mysqli_fetch_assoc($db);
    

    if ($db) {
        $response["success"] = true;
        $response["message"] = 'user created success fully';
        $response['data']  = $data;

    } else {
        $response['success'] = false;
        $response['message'] = 'something went wrong please try again';
        $response['sql_error'] = mysqli_error($conn);
    }

}           

echo json_encode($response);
?>