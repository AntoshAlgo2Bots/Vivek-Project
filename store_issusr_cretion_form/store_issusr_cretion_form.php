<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Store Issuer Creation Form</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.0.4/dist/tailwind.min.css" rel="stylesheet">

   
    
</head>

<body>
<div id="create_section" class="mt-5 bg-gray-100 border border-gray-900 p-5 rounded-lg mx-5">
        <h1 class="text-center underline text-3xl mb-3 font-bold">Store Issuer Cretion Form</h1>
        <form  class="w-full border border-gray-500 p-3 rounded-md" id="frmdata">
            <div class="flex flex-wrap m-2 gap-x-20 ">
                <div>
                    <label for="text"
                        class="block  mb-2 font-bold text-xs font-medium text-gray-900 dark:text-white">Record Number : </label>
                    <input name="record_number" type="text" value="" 
                        class="w-40 rounded-md border text-xs border-gray-500 bg-white py-3 pl-2 text-[#6B7280] h-6 outline-none focus:border-[#6A64F1] focus:shadow-md" />


                </div>

                <div class="">
                    <label class="block w-40 mb-2 font-bold text-xs font-medium text-gray-900 dark:text-white">Created By : </label>
                    <input type="text" name="created_by" required value=""
                        class="w-40 rounded-md border text-xs border-gray-500 bg-white py-3 pl-2 text-[#6B7280] h-6 outline-none focus:border-[#6A64F1] focus:shadow-md" />
                </div>
                <div class="">
                    <label class="block w-40 mb-2 font-bold text-xs font-medium text-gray-900 dark:text-white">Created Date : </label>
                    <input type="date" name="created_date" required value=""
                        class="w-40 rounded-md border text-xs border-gray-500 bg-white py-3 pl-2 text-[#6B7280] h-6 outline-none focus:border-[#6A64F1] focus:shadow-md" />

                </div>
                <div class="">
                    <label class="block w-40 mb-2 font-bold text-xs font-medium text-gray-900 dark:text-white">Department Name : </label>
                    <input type="text" name="department_name" required value=""
                        class="w-40 rounded-md border text-xs border-gray-500 bg-white py-3 pl-2 text-[#6B7280] h-6 outline-none focus:border-[#6A64F1] focus:shadow-md" />
                </div>
                <div class="">
                    <label class="block w-40 mb-2 font-bold text-xs font-medium text-gray-900 dark:text-white">Requisition Type :
                    </label>
                    <input type="text" required  name="requisition_type"
                        class="w-40 rounded-md border text-xs border-gray-500 bg-white py-3 pl-2 text-[#6B7280] h-6 outline-none focus:border-[#6A64F1] focus:shadow-md" />


                </div>
                <div class="">
                    <label class="block w-40 mb-2 font-bold text-xs font-medium text-gray-900 dark:text-white">Project Id : </label>
                    <input type="text" required value="" name="project_id"
                        class="w-40 rounded-md border text-xs border-gray-500 bg-white py-3 pl-2 text-[#6B7280] h-6 outline-none focus:border-[#6A64F1] focus:shadow-md" />
                </div>
            </div>
            <div class="flex flex-wrap m-2 gap-x-20 mt-5">
                <div class="">
                    <label class="block w-40 mb-2 font-bold text-xs font-medium text-gray-900 dark:text-white">Item Name :
                    </label>
                    <input type="txt" name="item_name" required value=""
                        class="w-40 rounded-md border text-xs border-gray-500 bg-white pl-2 text-[#6B7280] mb-5 h-6 outline-none focus:border-[#6A64F1] focus:shadow-md" />
                </div>
                <div class="">
                    <label class="block w-40 mb-2 font-bold text-xs font-medium text-gray-900 dark:text-white">Item Code:
                    </label>
                    <input type="txt" name="item_code" required value=""
                        class="w-40 rounded-md border text-xs border-gray-500 bg-white pl-2 text-[#6B7280] h-6 outline-none focus:border-[#6A64F1] focus:shadow-md" />
                </div>
                <div class="">
                    <label class="block w-40 mb-2 font-bold text-xs font-medium text-gray-900 dark:text-white">Quantity :
                    </label>
                    <input type="number" name="quantity" 
                        class="w-40 rounded-md border text-xs border-gray-500 bg-white pl-2 text-[#6B7280] h-6 outline-none focus:border-[#6A64F1] focus:shadow-md" />
                </div>
                <div class="">
                    <label class="block w-40 mb-2 font-bold text-xs font-medium text-gray-900 dark:text-white">User Remarks
                         : </label>
                    <input type="txt" name="user_remarks" value=""
                        class="w-40 rounded-md border text-xs border-gray-500 bg-white pl-2 text-[#6B7280] h-6 outline-none focus:border-[#6A64F1] focus:shadow-md" />
                </div>

                <div class="">
                    <label class="block w-40 mb-2 font-bold text-xs font-medium text-gray-900 dark:text-white">Price : </label>
                    <input type="txt" name="price" value=""
                        class="w-40 rounded-md border text-xs border-gray-500 bg-white pl-2 text-[#6B7280] h-6 outline-none focus:border-[#6A64F1] focus:shadow-md" />
                </div>
                <div class="">
                    <label class="block w-40 mb-2 font-bold text-xs font-medium text-gray-900 dark:text-white">Date Hand Hover : </label>
                    <input type="date" name="date_hand_hover" value=""
                        class="w-40 rounded-md border text-xs border-gray-500 bg-white pl-2 text-[#6B7280] h-6 outline-none focus:border-[#6A64F1] focus:shadow-md" />
                </div>

                <div class="">
                    <label class="block w-40 mb-2 font-bold text-xs font-medium text-gray-900 dark:text-white">Handover Over By : </label>
                    <input type="txt" name="handover_over_by" value=""
                        class="w-40 rounded-md border text-xs border-gray-500 bg-white pl-2 text-[#6B7280] h-6 outline-none focus:border-[#6A64F1] focus:shadow-md" />
                </div>

                <div class="">
                    <label class="block w-40 mb-2 font-bold text-xs font-medium text-gray-900 dark:text-white"> Req Status : </label>
                    <input type="txt" name="req_status" value=""
                        class="w-40 rounded-md border text-xs border-gray-500 bg-white pl-2 text-[#6B7280] h-6 outline-none focus:border-[#6A64F1] focus:shadow-md" />
                </div>

                <div class="">
                    <label class="block w-40 mb-2 font-bold text-xs font-medium text-gray-900 dark:text-white">Final Remarks : </label>
                    <input type="txt" name="final_remarks" value=""
                        class="w-40 rounded-md border text-xs border-gray-500 bg-white pl-2 text-[#6B7280] h-6 outline-none focus:border-[#6A64F1] focus:shadow-md" />
                </div>


                <div class="">
                    <label class="block w-40 mb-2 font-bold text-xs font-medium text-gray-900 dark:text-white">Po Status  : </label>
                    <input type="txt" name="po_status" value=""
                        class="w-40 rounded-md border text-xs border-gray-500 bg-white pl-2 text-[#6B7280] h-6 outline-none focus:border-[#6A64F1] focus:shadow-md" />
                </div>



                <div class="">
                    <label class="block w-40 mb-2 font-bold text-xs font-medium text-gray-900 dark:text-white">Po Number : </label>
                    <input type="number" name="po_number" value=""
                        class="w-40 rounded-md border text-xs border-gray-500 bg-white pl-2 text-[#6B7280] h-6 outline-none focus:border-[#6A64F1] focus:shadow-md" />
                </div>

                <button type="submit" id="res" 
                    class="w-40 mt-3  bg-blue-500 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 whitespace-nowrap font-medium text-white  rounded-md  py-2 text-center me-2 mb-3  dark:border-blue-500 dark:text-blue-500 hover:text-white dark:hover:bg-blue-500 dark:focus:ring-blue-800 ">submit </button>
            </div>
        </form>

        


    </div>

</body>
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>



<script>
    $(document).ready(function () {
    $('#frmdata').submit(function (e) {
        e.preventDefault();
        var frmData = $('#frmdata').serialize();

        var formfiled = document.getElementById('frmdata');
        $.post("action_insert.php", frmData, function (data) {
            console.log("This is from success block");
            console.log(data);
            $('#res').html(data.message); 
            formfiled.reset();
        }, "json").fail(error => {
            console.log("This is error block");
            console.log(error);
        });
    });
});

</script>

</html>