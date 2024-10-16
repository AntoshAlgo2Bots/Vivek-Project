<?php





$conn = mysqli_connect("localhost", "root", "", "new_form") or die("connection failed");


if (isset($_REQUEST['record_number'])) {
    $db = $conn->query("insert into new_form_tbl(record_number,address,phone,email,installation,date,tentative,perform,quotation,remarks)values('{$_REQUEST['record_number']}','{$_REQUEST['address']}','{$_REQUEST['phone']}','{$_REQUEST['email']}','{$_REQUEST['installation']}','{$_REQUEST['date']}','{$_REQUEST['tentative']}','{$_REQUEST['perform']}','{$_REQUEST['quotation']}','{$_REQUEST['remarks']}')");

    if ($db) {
        $response["success"] = true;
        $response["message"] = 'use created success fully';
        $response['insreted_id'] = mysqli_insert_id($conn);

    } else {
        $response['success'] = false;
        $response['message'] = 'something went wrong please try again';
        $response['sql_error'] = mysqli_error($conn);
    }

}

echo json_encode($response);




?>