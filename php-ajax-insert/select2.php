<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Document</title>
</head>

<body>

    
    <table class="table">
        <thead>
            <tr>
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
            </tr>
        </thead>
        <tbody id="reportTbody">


        </tbody>
    </table>

</body>
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>

<script>
    $(document).ready(function () {
        $.ajax({
            url: "ajax_load.php",
            type: "POST",
            dataType: "json",
            success: function (data) {
                let rowData = data.data
                console.log(rowData)
                let tbody = document.getElementById("reportTbody");
                tbody.innerHTML = ""
                rowData.forEach(row => {
                    console.log(row)
                    $(tbody).append(`<tr>
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
                <td class='text-primary hover cursor-pointer'>Edit</td>

            </tr>`)
                });


            }, error: function (error) {

                console.log("An error occurred: " + error);
            }
        });
    });
</script>

</html>