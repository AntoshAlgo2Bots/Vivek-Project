<?php
$con = mysqli_connect("localhost", "root", "", "create_laeds_form");
$sel = "SELECT*FROM `query_information`";
$query = mysqli_query($con, $sel);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">

</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-lg-12  overflow-x-auto ">
                <table class="table table-light table-striped ">
                    <thead>

                        <th>assigned_to</th>
                        <th>query_start_date</th>
                        <th>follow_up</th>
                        <th>follow_up_reminder_in_days</th>
                        <th>no_of_times</th>
                        <th>query_end_date</th>
                        <th>installation_required</th>
                        <th>tentative_installation_date</th>
                        <th>tentative_install_delivery_date</th>
                        <th>Acation</th>

                    </thead>
                    <tbody id="tabledata">
                       

                    </tbody>

                </table>
            </div>
        </div>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<script>
    $(document).ready(function (){
        $.ajax({
            url: "action_select.php",
            type: "POST",
            dataType: "JSON",
            success: function (data) {
                let rowData = data.data
                console.log(rowData);
                let tbody = document.getElementById("tabledata");
                tbody.innerHTML = ""
                rowData.forEach(row => {
                    console.log(row)
                    $(tbody).append(`
                     <tr>
                            <td>${row.assigned_to}</td>
                            <td>${row.query_start_date}</td>
                            <td>${row.follow_up}</td>
                            <td>${row.follow_up_reminder_in_days}</td>
                            <td>${row.no_of_times}</td>
                            <td>${row.query_end_date}</td>
                            <td>${row.installation_required}</td>
                            <td>${row.tentative_installation_date}</td>
                            <td>${row.tentative_install_delivery_date}</td>
                            <td class='text-primary cursor-pointer'>Edit</td>
                        </tr>`);

                });
            },error:function(error){
                console.log(error)
            }
            
    
        });
    });
</script>

</html>