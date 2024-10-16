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
        <div class="row mx-auto">
            <div class="col-lg-6">
                <form action="" id="frm">
                    <div class="mt-3">
                        <label for="username">Search ID</label>
                        <input type="text" class="form-control" name="search_id" id="id">
                        <button id="search">search button</button>
                    </div>
                    <div class="mt-3">
                        <label for="username">Username</label>
                        <input type="text" class="form-control" name="username" id="username">
                    </div>

                    <div class="mt-3">
                        <label for="address">address</label>
                        <input type="text" class="form-control" name="address" id="address">
                    </div>

                    <div class="mt-3">
                        <label for="phone">phone</label>
                        <input type="text" class="form-control" name="phone" id="phone">
                    </div>


                    <div class="mt-3">
                        <label for="email">email</label>
                        <input type="text" class="form-control" name="email" id="email">
                    </div>

                    <div class="mt-3">
                        <label for="installation">installation</label>
                        <input type="text" class="form-control" name="installation" id="installation">
                    </div>

                    <div class="mt-3">
                        <label for="date">date</label>
                        <input type="text" class="form-control" name="date" id="date">
                    </div>

                    <div class="mt-3">
                        <label for="tentative">tentative</label>
                        <input type="text" class="form-control" name="tentative" id="tentative">
                    </div>

                    <div class="mt-3">
                        <label for="perform">perform</label>
                        <input type="text" class="form-control" name="perform" id="perform">
                    </div>

                    <div class="mt-3">
                        <label for="quotation">quotation</label>
                        <input type="text" class="form-control" name="quotation" id="quotation">
                    </div>
                    <!-- <div class="mt-3">
                        <label for=" remarks"> remarks</label>
                        <input type="text" class="form-control" name=" remarks" id=" remarks">
                    </div> -->
                    <div class="mt-3">

                        <input type="submit" class="form-control btn btn-primary" name=" submit" id=" res"
                            value="submit">
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#search').click(function (e) {
                e.preventDefault();
                var srch = $('#id').val();

                $.post("srch.php", { srch }, function (data) {

                    var res = JSON.parse(data);

                    console.log(data);

                    $("#username").val(res.data.username);
                    
                })
            })
        });
    </script>
</body>

</html>