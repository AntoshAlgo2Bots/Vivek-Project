<?php
$con = mysqli_connect("localhost", "root", "", "create_bom");
$s_no= $_GET['s_no'];

if (isset($_POST['submit'])) {
    $process_seq = $_POST['process_seq'];
    $item_code = $_POST['item_code'];
    $item_name = $_POST['item_name'];
    $qty = $_POST['qty'];
    $percantage = $_POST['percantage'];
   



    $upt = "UPDATE `create_bom_form2_tbl` SET `process_seq`='$process_seq',`item_code`='$item_code',`item_name`='$item_name',`qty`='$qty',`percantage`='$percantage'WHERE`s_no`='$s_no'";

    $query= mysqli_query($con, $upt);
    if ($query) {
        header("location:select.php");

    }else{
        echo "data has been not update";
    }

}
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
    <?php
    $sel="SELECT*FROM `create_bom_form2_tbl` WHERE `s_no`='$s_no'";
    $query= mysqli_query($con, $sel);
    $row=mysqli_fetch_assoc($query);

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


    <form action="#" method="POST" enctype="multipart/form-data">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">

                    <div class="mt-3">
                        <label for="process_seq" class="form-lable">process_seq</label>
                        <input type="text" class="form-control" name="process_seq" value="<?php echo $row['process_seq']?>">
                    </div>

                    <div class="mt-3">
                        <label for="item_code" class="form-lable">item_code</label>
                        <input type="text" class="form-control" name="item_code" value="<?php echo $row['item_code']?>">
                    </div>

                    <div class="mt-3">
                        <label for="item_name" class="form-lable">item_name</label>
                        <input type="text" class="form-control" name="item_name" value="<?php echo $row['item_name']?>">
                    </div>

                    
                    <div class="mt-3">
                        <label for="qty" class="form-lable">qty</label>
                        <input type="text" class="form-control" name="qty" value="<?php echo $row['qty']?>">
                    </div>

                    <div class="mt-3">
                        <label for="percantage" class="form-lable">percantage</label>
                        <input type="text" class="form-control" name="percantage" value="<?php echo $row['percantage']?>">
                    </div>

                    <div class="mt-3">
                      
                        <input type="submit" name="submit" value="submit" class="btn btn-info">
                    </div>
                </div>
            </div>
        </div>


    </form>
</body>

</html>