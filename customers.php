<?php
  include 'inc/connect.php';
  $ids = explode("!",$_GET['ident']);
  $offId = $ids[1];

  $findById = mysqli_query($conn,"SELECT *FROM offices WHERE id = '$offId'") or die(mysqli_error($conn));
  if (mysqli_num_rows($findById)<0) {
     ?>
<script>
  window.location = "index";
</script>
<?php
  }
  $fe = mysqli_fetch_array($findById);
  $comId = $fe['companyId'];
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <?php include("inc/header.php");?>
</head>

<style>
  /* Credit Card */
  .credit-card {
    width: 360px;
    height: 400px;
    margin: 60px auto 0;
    border: 1px solid #ddd;
    border-radius: 6px;
    background-color: #fff;
    box-shadow: 1px 2px 3px 0 rgba(0, 0, 0, .10);
  }

  .form-header {
    height: 60px;
    padding: 20px 30px 0;
    border-bottom: 1px solid #e1e8ee;
  }

  .form-body {
    height: 340px;
    padding: 30px 30px 20px;
  }

  /* Title */
  .title {
    font-size: 18px;
    margin: 0;
    color: #5e6977;
  }

  /* Common */
  .card-number,
  .cvv-input input,
  .month select,
  .year select {
    font-size: 14px;
    font-weight: 100;
    line-height: 14px;
  }

  .card-number,
  .month select,
  .year select {
    font-size: 14px;
    font-weight: 100;
    line-height: 14px;
  }

  .card-number,
  .cvv-details,
  .cvv-input input,
  .month select,
  .year select {
    opacity: .7;
    color: #86939e;
  }

  /* Card Number */
  .card-number {
    width: 100%;
    margin-bottom: 20px;
    padding-left: 20px;
    border: 2px solid #e1e8ee;
    border-radius: 6px;
  }



  /* Card Verification Field */
  .cvv-input input {
    float: left;
    width: 145px;
    padding-left: 20px;
    border: 2px solid #e1e8ee;
    border-radius: 6px;
    background: #fff;
  }

  .cvv-details {
    font-size: 12px;
    font-weight: 300;
    line-height: 16px;
    float: right;
    margin-bottom: 20px;
  }

  .cvv-details p {
    margin-top: 6px;
  }
</style>

<body>

  <!-- ======= Property Search Section ======= -->
  <div class="click-closed"></div>
  <!--/ Form Search Star /-->
  <?php include 'inc/searchForm.php';?>
  <!-- End Property Search Section -->>

  <!-- ======= Header/Navbar ======= -->
  <?php include("inc/nav.php");?>
  <!-- End Header/Navbar -->

  <main id="main">

    <!-- ======= Intro Single ======= -->
    <!-- <section class="intro-single">
      <div class="container">
        <div class="row">
          <div class="col-md-12 col-lg-8">
            <div class="title-single-box">
              <h1 class="title-single">Contact US</h1>
              <span class="color-text-a">Aut natus officia corrupti qui autem fugit consectetur quo. Et ipsum eveniet laboriosam voluptas beatae possimus qui ducimus. Et voluptatem deleniti. Voluptatum voluptatibus amet. Et esse sed omnis inventore hic culpa.</span>
            </div>
          </div>
          <div class="col-md-12 col-lg-4">
            <nav aria-label="breadcrumb" class="breadcrumb-box d-flex justify-content-lg-end">
              <ol class="breadcrumb">
                <li class="breadcrumb-item">
                  <a href="index">Home</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">
                  Contact
                </li>
              </ol>
            </nav>
          </div>
        </div>
      </div>
    </section> -->
    <!-- End Intro Single-->

    <!-- ======= Contact Single ======= -->
    <section class="contact">
      <div class="container">
        <div class="row">
          <!-- <div class="col-sm-12">
            <div class="contact-map box">
              <div id="map" class="contact-map">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3022.1422937950147!2d-73.98731968482413!3d40.75889497932681!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25855c6480299%3A0x55194ec5a1ae072e!2sTimes+Square!5e0!3m2!1ses-419!2sve!4v1510329142834" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
              </div>
            </div>
          </div> -->
          <div class="col-sm-12 section-t8">
            <div class="row">

              <div class="col-md-5 section-md-t3">
                <img src="admin/media/spaceImages/<?= $fe['thumnail'];?>" alt="" class="img img-fluid">
                <!-- <div class="icon-box section-b2">
                <div class="icon-box-icon">
                    <span class="ion-ios-paper-plane"></span>
                </div>
                <div class="icon-box-content table-cell">
                    <div class="icon-box-title">
                    <h4 class="icon-title">Say Hello</h4>
                    </div>
                    <div class="icon-box-content">
                    <p class="mb-1">Email.
                        <span class="color-a">contact@example.com</span>
                    </p>
                    <p class="mb-1">Phone.
                        <span class="color-a">+54 356 945234</span>
                    </p>
                    </div>
                </div>
                </div>
                <div class="icon-box section-b2">
                <div class="icon-box-icon">
                    <span class="ion-ios-pin"></span>
                </div>
                <div class="icon-box-content table-cell">
                    <div class="icon-box-title">
                    <h4 class="icon-title">Find us in</h4>
                    </div>
                    <div class="icon-box-content">
                    <p class="mb-1">
                        Manhattan, Nueva York 10036,
                        <br> EE. UU.
                    </p>
                    </div>
                </div>
                </div>
                <div class="icon-box">
                <div class="icon-box-icon">
                    <span class="ion-ios-redo"></span>
                </div>
                <div class="icon-box-content table-cell">
                    <div class="icon-box-title">
                    <h4 class="icon-title">Social networks</h4>
                    </div>
                    <div class="icon-box-content">
                    <div class="socials-footer">
                        <ul class="list-inline">
                        <li class="list-inline-item">
                            <a href="#" class="link-one">
                            <i class="fa fa-facebook" aria-hidden="true"></i>
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <a href="#" class="link-one">
                            <i class="fa fa-twitter" aria-hidden="true"></i>
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <a href="#" class="link-one">
                            <i class="fa fa-instagram" aria-hidden="true"></i>
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <a href="#" class="link-one">
                            <i class="fa fa-pinterest-p" aria-hidden="true"></i>
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <a href="#" class="link-one">
                            <i class="fa fa-dribbble" aria-hidden="true"></i>
                            </a>
                        </li>
                        </ul>
                    </div>
                    </div>
                </div>
                </div> -->
              </div>
              <div class="col-md-7">
                <form method="POST" role="form">
                  <div class="row">
                    <div class="col-12">

                      <?php
                            include 'forms/reserve.php';
                            if (isset($_POST['sendMessage'])) {
                                echo $msg;
                            }
                        ?>
                    </div>
                    <div class="row">
                      <div class="col-md-4">
                        <div class="form-group">
                          <label for="">Full names</label>
                          <input style="font-size:12px;" type="text" name="cusNames" required
                            class="form-control form-control-lg form-control-a" placeholder="Full Names"
                            data-rule="minlen:4" data-msg="Please enter at least 4 chars">
                          <div class="validate"></div>
                        </div>
                      </div>

                      <div class="col-md-4">
                        <div class="form-group">
                          <label for="">Email</label>
                          <input style="font-size:12px;" type="email" name="cusEmail" required
                            class="form-control form-control-lg form-control-a" placeholder="Email" data-rule="minlen:4"
                            data-msg="">
                          <div class="validate"></div>
                        </div>
                      </div>

                      <div class="col-md-4">
                        <div class="form-group">
                          <label for="">Phone</label>
                          <input style="font-size:12px;" name="cusPhone" type="number" required
                            class="form-control form-control-lg form-control-a" placeholder="Phone" data-rule="email"
                            data-msg="">
                          <div class="validate"></div>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-4">
                        <div class="form-group">
                          <label for="">Location</label>
                          <input style="font-size:12px;" type="text" name="cusNames" required
                            class="form-control form-control-lg form-control-a" placeholder="Location"
                            data-rule="minlen:4" data-msg="Please enter at least 4 chars">
                          <div class="validate"></div>
                        </div>
                      </div>

                      <div class="col-md-4">
                        <div class="form-group">
                          <label for="">Floor</label>
                          <input style="font-size:12px;" type="email" name="cusEmail" required
                            class="form-control form-control-lg form-control-a" placeholder="Floor" data-rule="minlen:4"
                            data-msg="">
                          <div class="validate"></div>
                        </div>
                      </div>

                      <div class="col-md-4">
                        <div class="form-group">
                          <label for="">Dimension(area)</label>
                          <input style="font-size:12px;" name="cusPhone" type="number" required
                            class="form-control form-control-lg form-control-a" placeholder="Area" data-rule="email"
                            data-msg="">
                          <div class="validate"></div>
                        </div>
                      </div>
                    </div>

                    <div class="row">
                      <div class="col-md-4">
                        <div class="form-group">
                          <label for="check in" class="form-control-label">Date</label>
                          <input style="font-size:12px;" type="date" name="cusCheckin"
                            class="form-control form-control-lg form-control-a" placeholder="Check in"
                            data-rule="minlen:4" data-msg="Please enter at least 4 chars">
                          <div class="validate"></div>
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                          <label for="">Agreement</label>
                          <input type="file" id="myfile" name="myfile">
                          <div class="validate"></div>
                        </div>
                      </div>
                    </div>

                    <div class="payment-details">
                      <div class="container-fluid">
                        <div style="font-size: 30px;
                          font-weight: 600;" class="row">
                          Payment details
                        </div>
                        <div style="font-size: 20px;
                          font-weight: 600;" class="row mt-4">
                          Type of payments
                        </div>
                      </div>
                    </div>
                    <div class="container-fluid">
                      <div class="row">
                        <!-- momo payment info -->
                        <div class="col-lg-6">
                          <div class="form-header">
                            <div class="row">
                              <input type="radio" id="html" name="fav_language" value="HTML">
                              <h4 class="title mt-1 mx-2">MOMO</h4>
                              <img style="width: 56px;
                                  margin-left: 8%;
                                  height: 42px;
                                  margin-top: -4%;
                                  object-fit: cover;" src="img/unnamed.png" alt="">
                            </div>
                          </div>
                          <div class="row mt-4">
                            <div style="font-size:12px;" class="col-lg-5 mt-2">Phone number</div>
                            <div class="col-lg-7">
                              <input class="form-control" type="phone">
                            </div>
                          </div>

                          <div class="row mt-4">
                            <div style="font-size:12px;" class="col-lg-5 mt-2">Amount</div>
                            <div class="col-lg-7">
                              <input style="font-size:12px;" class="form-control" type="number" class="">
                            </div>
                          </div>
                          <div class="row my-4">
                            <div class="col-md-12 text-center">
                              <button type="submit" class="btn btn-sm btn-flat btn-primary">Cancel</button>
                              <button type="submit" name="sendMessage"
                                class="btn btn-sm btn-flat btn-success">Deposit</button>
                            </div>
                          </div>
                        </div>
                        <!-- credit card info -->
                        <div class="col-lg-6">
                          <div class="form-header">
                            <div class="row">
                              <input type="radio" id="html" name="fav_language" value="HTML">
                              <h4 class="title mx-2 text-uppercase mt-1">Credit card</h4>
                              <img style="width: 56px;
                                  margin-left: 8%;
                                  height: 42px;
                                  margin-top: -4%;
                                  object-fit: cover;" src="img/credit.jpg" alt="">
                            </div> 
                          </div>
                          <div class="row mt-4">
                            <div style="font-size:12px;" class="col-lg-5 mt-2">Card number</div>
                            <div class="col-lg-7">
                              <input class="form-control" type="text" class="card-number">
                            </div>
                          </div>

                          <div class="row mt-4">
                            <div style="font-size:12px;" class="col-lg-5 mt-2">Expiration date</div>
                            <div class="col-lg-7">
                              <input style="font-size:12px;" class="form-control" type="date" class="">
                            </div>
                          </div>

                          <div class="row mt-4">
                            <div style="font-size:12px;" class="col-lg-5 mt-2">CVV</div>
                            <div class="col-lg-7">
                              <input style="font-size:12px;" class="form-control" type="number" class="">
                            </div>
                          </div>

                          <div class="row mt-4">
                            <div style="font-size:12px;" class="col-lg-5 mt-2">Amount</div>
                            <div class="col-lg-7">
                              <input style="font-size:12px;" class="form-control" type="number" class="">
                            </div>
                          </div>
                          <div class="row my-4">
                            <div class="col-md-12 text-center">
                              <button type="submit" class="btn btn-sm btn-flat btn-primary">Cancel</button>
                              <button type="submit" name="sendMessage"
                                class="btn btn-sm btn-flat btn-success">Deposit</button>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>

                    <!-- <div class="col-md-12 mb-3">
                      <div class="mb-3">
                        <div class="loading">Loading</div>
                        <div class="error-message"></div>
                        <div class="sent-message">Your message has been sent. Thank you!</div>
                      </div>
                    </div> -->

                    <div class="col-md-12 text-center mt-5">
                      <button type="submit" class="btn btn-sm btn-flat btn-warning">Cancel</button>
                      <button type="submit" name="sendMessage" class="btn btn-sm btn-flat btn-info">Book here</button>
                    </div>
                  </div>
                </form>
              </div>

            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- End Contact Single-->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <?php
    include 'inc/footer.php';
  ?>
  <!-- End  Footer -->

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
  <div id="preloader"></div>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/jquery/jquery.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="assets/vendor/scrollreveal/scrollreveal.min.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

  <script type="text/javascript">
    $(function () {
      //$("#navContact").addClass('active');
    });
  </script>
</body>

</html>