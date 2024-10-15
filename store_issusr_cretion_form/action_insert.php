<?php


$conn = mysqli_connect("localhost", "root", "", "all_form_data") or die("connection failed");
if (isset($_REQUEST['record_number'])) {
    $db = $conn->query("insert into stroes_issusr_cretion_form(record_number,created_by,created_date,department_name,requisition_type,project_id,item_name,item_code,quantity,user_remarks,price,date_hand_hover,handover_over_by,req_status,final_remarks,po_status,po_number)values ('{$_REQUEST['record_number']}','{$_REQUEST['created_by']}','{$_REQUEST['created_date']}','{$_REQUEST['department_name']}','{$_REQUEST['requisition_type']}','{$_REQUEST['project_id']}','{$_REQUEST['item_name']}','{$_REQUEST['item_code']}','{$_REQUEST['quantity']}','{$_REQUEST['user_remarks']}' ,'{$_REQUEST['price']}','{$_REQUEST['date_hand_hover']}','{$_REQUEST['handover_over_by']}','{$_REQUEST['req_status']}','{$_REQUEST['final_remarks']}','{$_REQUEST['po_status']}','{$_REQUEST['po_number']}')");
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