<?php
require_once 'config/koneksi.php';
?>
<script src="assets/js/pages/charts/Chart.js"></script>
<script type="text/javascript" src="assets/js/pages/charts/loader.js"></script>
<div class="container-fluid">
    <div class="row clearfix">
        <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="card">
                <div class="body">
                    <h6>Statistik Data</h6>
                    <h2>Chart / Grafik Harian Data Pasien</h2>
                    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);
  
     function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['Task', 'All Complaint'],
    
    <?php
                $rt = mysqli_query($con,"SELECT * FROM pasien where status='$pending'");
                $num1 = mysqli_num_rows($rt);
                {?>
          ['Data Pasien Yang Tertunda', <?php echo htmlentities($num1); ?><?php } ?>],
    
    <?php 
                $status="in Process";                   
                $rt = mysqli_query($con,"SELECT * FROM pasien where status='$valid'");
                $num1 = mysqli_num_rows($rt);
                {?>
          ['Data Pasien Yang Terverifikasi',      <?php echo htmlentities($num1); ?><?php } ?>],
    
    <?php 
                $status="closed";                   
                $rt = mysqli_query($con,"SELECT * FROM pasien where status='$completed'");
                $num1 = mysqli_num_rows($rt);
                {?>
          ['Data Pasien Yang Lengkap', <?php echo htmlentities($num1); ?><?php } ?>]
        ]);

        var options = {
          title: 'Total Data Pasien'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script>
    
     <br /><br />
  <div class="container">
   <nav class="navbar navbar-inverse">
    <div class="container-fluid">
     
 </div>
</nav>
<br />
<br />
 <div id="piechart" style="width: 900px; height: 500px;"></div>
</form>

</div>
</body>
                </div>
            </div>
        </div>
    </div>
    
</div>

<script>