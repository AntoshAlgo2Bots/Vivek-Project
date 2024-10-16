<?php
$conn = mysqli_connect("localhost", "root", "", "new_form") or die("connection failed");
$sql = "SELECT *FROM new_form_tbl";
$result = mysqli_query($conn, $sql) or die("SQL Query failed");
$data = [];
while ($row = mysqli_fetch_assoc($result)) {
    $data[] = $row;
}
$response['data'] = $data;
echo json_encode($response);
?>