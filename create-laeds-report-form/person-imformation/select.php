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

                        <th>record</th>
                        <th>created_by</th>
                        <th>create_date</th>
                        <th>stauts</th>
                        <th>lead_source</th>
                        <th>ref_by</th>
                        <th>ref_phone_no</th>
                        <th>lead_type</th>
                        <th>contect_preson_name</th>
                        <th>contect_preson_phone_no</th>
                        <th>contect_preson_email</th>
                        <th>contect_preson_address</th>
                        <th>lead_receiving_date</th>
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
    $(document).ready(function () {
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
                    $(tbody).append(`<tr>
                            <td>${row.record}</td>
                            <td>${row.created_by}</td>
                            <td>${row.create_date}</td>
                            <td>${row.stauts}</td>
                            <td>${row.lead_source}</td>
                            <td>${row.ref_by}</td>
                            <td>${row.ref_phone_no}</td>
                            <td>${row.lead_type}</td>
                            <td>${row.contect_preson_name}</td>
                            <td>${row.contect_preson_phone_no}</td>
                            <td>${row.contect_preson_email}</td>
                            <td>${row.contect_preson_address}</td>
                            <td>${row.lead_receiving_date}</td>
                            <td class='text-primary cursor-pointer'>Edit</td>
                
                            </tr>`)

                });

            }, error: function (error) {
                console.log(error);

            }
        })
    })
</script>

</html>