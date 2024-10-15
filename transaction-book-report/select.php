
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
            <div class="col-lg-12 overflow-x-auto">
                <table class="table table-success table-striped">
                    <thead>

                        <th>transaction_no</th>
                        <th>transaction_date</th>
                        <th>amount_type</th>
                        <th>credit_amount</th>
                        <th>debit_amount</th>
                        <th>particulers_given_to</th>
                        <th>site</th>
                        <th>main_head</th>
                        <th>sub_head</th>
                        <th>bill_cheque_no</th>
                        <th>invoice_dated</th>
                        <th>invoice_no</th>
                        <th>gst_no</th>
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
            url: "action_select.php",
            type: "POST",
            dataType: "JSON",
            success: function (data) {
                let rowData = data.data
                console.log(rowData);
                let tbody = document.getElementById("tabledata");
                tbody.innerHTML = ""
                rowData.forEach(row => {
                    console.log(rowData)
                    $(tbody).append(`<tr>
                            <td>${row.transaction_no}</td>
                            <td>${row.transaction_date}</td>
                            <td>${row.amount_type}</td>
                            <td>${row.credit_amount}</td>
                            <td>${row.debit_amount}</td>
                            <td>${row.particulers_given_to}</td>
                            <td>${row.site}</td>
                            <td>${row.main_head}</td>
                            <td>${row.sub_head}</td>
                            <td>${row.bill_cheque_no}</td>
                            <td>${row.invoice_dated}</td>
                            <td>${row.invoice_no}</td>
                            <td>${row.gst_no}</td>
                            <td>${row.remarks}</td>
                            <td class='text-primary'>Edit</td>

                    </tr>`)

                });
            },error:function(error){
                console.log(error);

            }
        })
    })
</script>

</html>