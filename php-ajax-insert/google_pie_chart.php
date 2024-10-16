<html>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['student', 'percentage'],
          <?php 
          $conn=mysqli_connect("localhost","root","","google_pie_chart") or die(mysqli_error($conn));
          $sql="SELECT *FROM google_pie_chart_tbl where percentage > 40";
          $result=mysqli_query($conn,$sql);
          while($row= mysqli_fetch_assoc($result)){

            echo "['".$row['student']."',".$row['percentage']."],";
          }
           ?>
          
        ]);

        var options = {
          title: 'My Daily Activities',
          is3D: true,
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
        chart.draw(data, options);
      }
    </script>
  </head>
  <body>
    <div id="piechart_3d" style="width: 900px; height: 500px;"></div>
  </body>
</html>