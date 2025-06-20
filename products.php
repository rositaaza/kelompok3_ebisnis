<?php
  session_start();
  
  if(!(isset($_SESSION['name'])&&isset($_SESSION['email'])))
  {
    header('Location: register.php');
  }
  include "includes/dbconnect.php";
?>

<!DOCTYPE html>
<html>
  <?php include "includes/css_header.php";
        if(($_SESSION['email']=="admin@mangola.com"))
        {
          include "includes/header_admin.php";
        }
        else
        {
        include "includes/header_postlogin.php";
        }
   ?>
<body style="background-image: linear-gradient(to bottom, #1ED7B5, #F0F9A7); !important">
  

  <div class="container ">
    <h1 class="text-center font-80px margin-bottom50"> <b>Welcome <?php echo $_SESSION['name']; ?>! Get Your Risolles?</b></h1>

    <!--All products with 3/12 parts each-->
    <div class="row">
      <?php 
        $query="SELECT * FROM `products`";
        $result=mysqli_query($connection,$query);
        while($row=mysqli_fetch_assoc($result))
        {
          echo '<div class="col-md-3">
                  <div class="product-tab">
                    <img src="images/'.$row['product_image'].'" class="img-size curve-edge">
                    <h3 class="text-center"><b>'.$row['product_name'].'</b></h3>
                    <p class="justify"><b><i> &nbsp&nbsp&nbsp&nbsp '.$row['product_description'].'</i></b></p>
                    <a href="product_description.php?product_id='.$row['product_id'].'" class="btn btn-block btn-success"> View Details </a>
                  </div>
                </div>';
        }
      ?>
             
    </div> <!--Products dispaly Ends-->

    <div class="row">
      
      <!--Bio-Section in 10/12 parts-->
      <div class="col-md-10">
        <div class="row">

          <div class="col-md-12 bio-tab">
            <div class="row">
              <div class="col-md-4">
                <img src="images/Logo Maragout.jpeg" class="img-size img-circle">
              </div>

              <div class="col-md-8">
                <h1 class="text-center"> <b>About Maragout.com</b> </h1>
                <p>&nbsp&nbsp&nbsp&nbsp<b><i>Tipografi "MARAGOUT" nama ini gabungan dari awal pada nama 
kelompok kami yaitu MARA dan gabungan dari nama risol ragout sendiri, serta
mengacu pada risol isi ragout yang khas dengan tekstur krispi di luar dan isian lembut 
di dalamnya. Dari segi komposisi, risol ragout ini menggunakan bahan-bahan alami dan berkualitas 
tinggi. Kulit risol dibuat dari tepung terigu pilihan yang lembut dan renyah, tanpa 
tambahan bahan pengawet atau pewarna buatan. Sementara itu, isian ragoutnya terdiri dari daging ayam yang diproses sesuai dengan standar penyembelihan halal, keju
premium, susu segar, mentega berkualitas, mayonaise, serta aneka sayuran segar seperti 
wortel, kentang, dan jagung manis Semua bahan tersebut diproses secara higienis 
untuk memastikan rasa yang lezat dan kualitas yang tetap terjaga. Kami juga 
menggunakan bumbu rempah-rempah alami yang tidak hanya memperkaya cita rasa 
tetapi juga memberikan manfaat kesehatan bagi tubuh.</i></b></p>  
              </div>
            </div>
          </div>

          <div class="col-md-12">
            <img src="images/Risol pedas.jpeg" class="img-size-lg">
          </div>

        </div>
      </div>

      <!--List of items in 2/12 parts-->
      <div class="col-md-2">
        <h2 class="text-center"><b>Chart Menu</b></h2>
        <div class="row">
        <?php 
          $query1="SELECT * FROM `products`";
          $result1=mysqli_query($connection,$query);
          while($row1=mysqli_fetch_assoc($result1))
          {
            echo '<div class="col-md-12">
                    <div class="row list hover-pink">
                      
                      <div class="col-md-6">
                        <a href="product_description.php?product_id='.$row1['product_id'].'">
                        <img src="images/'.$row1['product_image'].'" class="img-size-xs">
                        </a>
                      </div>

                      <div class="col-md-6">
                        <b>'.$row1['product_name'].'</br><br>
                        <small>₹.'.$row1['product_price'].'/Kg</small>
                      </div>

                    </div>            
                  </div>';
          }         
        ?>
        </div>
      </div>     
    </div>

    <?php include "includes/footer.php"; ?>
   
  </div>
</body>
</html>