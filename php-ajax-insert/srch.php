<?php
$conn = mysqli_connect("localhost", "root", "", "ajax_new_form") or die("connection failed");


if (isset($_REQUEST['srch'])) {
    $db = $conn->query("select*from  ajax_new_form_tbl where s_no='{$_REQUEST['srch']}'"); 
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