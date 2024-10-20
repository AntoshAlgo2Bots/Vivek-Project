<?php

$conn = mysqli_connect("localhost", "root", "", "vivek-project-main") or die("connection failed");


if (isset($_REQUEST['submit'])) {

    $created_by = 'admin';
    $updated_by = 'admin';
    $created_date = date('Y-m-d H:i:s');
    $updated_date = date('Y-m-d H:i:s');

    $db = $conn->query("INSERT INTO asl_header_tbl(item_code,short_discription, created_by, created_date, updated_by, updated_date)VALUES ('{$_REQUEST['item_code']}','{$_REQUEST['short_discription']}', '$created_by', '$created_date', '$updated_by', '$updated_date')");
    if ($db) {
        $response["success"] = true;
        $response["message"] = "user created success fully";
        $response['inserted_id'] = mysqli_insert_id($conn);
    } else {
        $response['success'] = false;
        $response['message'] = 'something went wrong please try again';
        $response['sql_error'] = mysqli_error($conn);
    }
}



// if (isset($_REQUEST['srch'])) {


//     $searchData = $_REQUEST['srch'];
//     $db = $conn->query("SELECT a.supplier_code 
// FROM `vivek-project-main`.supplier_organization_details_tbl a
// JOIN `vivek-project-main`.supplier_address_details_tbl b ON a.supplier_code = b.supplier_code
// WHERE a.supplier_code = $searchData;");
//     $data = mysqli_fetch_assoc($db);


//     if ($db) {
//         $response["success"] = true;
//         $response["message"] = 'user created success fully';
//         $response['data'] = $data;

//     } else {
//         $response['success'] = false;
//         $response['message'] = 'something went wrong please try again';
//         $response['sql_error'] = mysqli_error($conn);
//     }

// }


echo json_encode($response);



?>