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
            <h1>helol</h1>
            <div class="col-lg-10">
                <table class="table">
                    <thead>

                        <th>Username</th>
                        <th>address</th>
                        <th>phone</th>
                        <th>email</th>
                        <th>installation</th>
                        <th>date</th>
                        <th>tentative</th>
                        <th>perform</th>
                        <th>quotation</th>
                        <th>remarks</th>
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
            url: "action.php",
            type: "POST",
            dataType: "json",
            success: function (data) {
                let rowData = data.data
                console.log(rowData);
                let tbody = document.getElementById('tabledata');
                tbody.innerHTML = ""
                rowData.forEach(row => {
                    console.log(rowData)
                    $(tbody).append(` <tr>

                            <td>${row.username}</td>
                            <td>${row.address}</td>
                            <td>${row.phone}</td>
                            <td>${row.email}</td>
                            <td>${row.installation}</td>
                            <td>${row.date}</td>
                            <td>${row.tentative}</td>
                            <td>${row.perform}</td>
                            <td>${row.quotation}</td>
                            <td>${row.remarks}</td>
                            <td class='text-primary'>Edit</td>

                        </tr>
`)

                });
            }, error: function (error) {
                console.log(error);

            }
        })

    });
</script>


</html>