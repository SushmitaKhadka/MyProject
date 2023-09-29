<?php

include 'components/connect.php';

session_start();

if(isset($_SESSION['user_id'])){
   $user_id = $_SESSION['user_id'];
}else{
   $user_id = '';
};

include 'components/wishlist_cart.php';

?>


<!DOCTYPE html>
<html>
<head>
  <title>Online Pharmacy</title>
  <link rel="stylesheet" type="text/css" href="services.css">
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>home</title>

   <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
   
   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <!-- <link rel="stylesheet" href="css/style.css"> -->
   <link rel="stylesheet" type="text/css" href="homecss.css">
</head>
<body>

  <?php include 'components/user_header.php'; ?>
  <header>
    <h1><b>Welcome to our online pharmacy !</b></h1>
  </header>

  <section class="services" style="margin-bottom:50px;">
    <h1 style="font-size:25px;">Our Services</h1>
    <p style="font-size:20px;">Online pharmacy services have emerged as a convenient and accessible way for individuals to procure their prescription medications and healthcare products. These platforms offer a wide range of benefits, including the convenience of ordering medications from the comfort of one's home, eliminating the need for physical visits to brick-and-mortar pharmacies. Additionally, they often provide a discreet option for obtaining sensitive or private medications. Many online pharmacies also offer competitive pricing and discounts, making prescription drugs more affordable for patients. Furthermore, these services often include features like prescription management, automated refills, and personalized reminders, enhancing medication adherence and overall healthcare management. However, it is crucial for users to exercise caution and ensure that they are using reputable and licensed online pharmacies to guarantee the safety and authenticity of their medications. As with any healthcare service, consulting a qualified healthcare provider remains essential for proper guidance and prescription management. Online pharmacy services represent a valuable addition to the healthcare landscape, offering convenience without compromising the integrity of patient care.</p>
  </section>




</body>

</html>

<?php include 'components/footer.php'; ?>

<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>

<script src="js/script.js"></script>

<script>

var swiper = new Swiper(".home-slider", {
   loop:true,
   spaceBetween: 20,
   pagination: {
      el: ".swiper-pagination",
      clickable:true,
    },
});

 var swiper = new Swiper(".category-slider", {
   loop:true,
   spaceBetween: 20,
   pagination: {
      el: ".swiper-pagination",
      clickable:true,
   },
   breakpoints: {
      0: {
         slidesPerView: 2,
       },
      650: {
        slidesPerView: 3,
      },
      768: {
        slidesPerView: 4,
      },
      1024: {
        slidesPerView: 5,
      },
   },
});

var swiper = new Swiper(".products-slider", {
   loop:true,
   spaceBetween: 20,
   pagination: {
      el: ".swiper-pagination",
      clickable:true,
   },
   breakpoints: {
      550: {
        slidesPerView: 2,
      },
      768: {
        slidesPerView: 2,
      },
      1024: {
        slidesPerView: 3,
      },
   },
});

</script>