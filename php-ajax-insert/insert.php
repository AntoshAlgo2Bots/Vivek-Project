<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <form action="" id="frm">
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
        <div class="mt-3">
            <label for=" remarks"> remarks</label>
            <input type="text" class="form-control" name=" remarks" id=" remarks">
        </div>
        <div class="mt-3">

            <input type="submit" class="form-control" name=" submit" id="res" value="submit">
        </div>
    </form>


</body>
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $('#frm').submit(function (e) {
            e.preventDefault();
            var frmData = $("#frm").serialize();
            frm = document.getElementById("frm");
            $.post("ajax_insert.php", frmData, function (data) {
                

                console.log("THis is from success block")
                console.log(data);

                        
                $("#res").html(data.message); frm.reset(); 
            
            },"json").fail(error=>{
                console.log("This is error block")
                console.log(error)
            })
        })
    });
</script>

</html>