<?php

include 'components/connect.php';

session_start();

if(isset($_SESSION['user_id'])){
   $user_id = $_SESSION['user_id'];
}else{
   $user_id = '';
};

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>about</title>

   <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
   
   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="aboutcss.css">

</head>
<body>
   
<?php include 'components/user_header.php'; ?>

<section class="about">

   <div class="row">

      <div class="image">
         <img src="images/666.jpg" alt="">
      </div>

      <div class="content">
         <h3>Facts About Today</h3>
         <p>In the latest breakthroughs in medicine, researchers have made significant strides towards more effective treatments for various diseases. A promising study published in a leading medical journal reveals a potential game-changer in cancer therapy, utilizing advanced immunotherapy techniques to target specific cancer cells while sparing healthy tissue. Additionally, a groundbreaking discovery in neurology has shed light on the underlying mechanisms of neurodegenerative disorders, offering new avenues for early detection and intervention. In infectious disease news, a novel antiviral drug has shown remarkable efficacy against a range of viruses, holding promise for future pandemic preparedness. </p>
         <a href="contact.php" class="btn">Read More</a>
      </div>

   </div>
   <br>
   <div class="row">

      <div class="image">
         <img src="images/777.jpg" alt="">
      </div>

      <div class="content">
         <h3>Conjunctivitis Outbreak in Nepal</h3>
         <p>Conjunctivitis, also known as pink eye, is a common eye infection that is spreading rapidly in Nepal. In the past few weeks, there have been a sharp increase in cases of conjunctivitis reported from all over the country. This outbreak is particularly concerning because it is affecting a wide range of people, including children, adults, and the elderly.</p>
         <a href="contact.php" class="btn">Read More</a>
      </div>

   </div>
   <br>
   <div class="row">

      <div class="image">
         <img src="images/888.png" alt="">
      </div>

      <div class="content">
         <h3>Can your pets transmit disease to you?</h3>
         <p>Some of you may say “No” while some may instantly think of “Rabies”. But the interesting fact is that around 60% of the infectious diseases of human come from animals. Such diseases are known as zoonotic diseases or zoonoses. You may think again the diseases may come from the different species of animals living in the wild. The reality is that we are often infected with zoonotic diseases during our normal activities at or around home.
      </p>
         <a href="contact.php" class="btn">Read More</a>
      </div>

   </div>
   <br>
   <div class="row">

      <div class="image">
         <img src="images/999.jpg" alt="">
      </div>

      <div class="content">
         <h3>Battling Dengue in Nepal: Symptoms, and Preventive Measures</h3>
         <p>Dengue, a mosquito-borne illness, is on the rise in Nepal. In the past few weeks, there have been a sharp increase in cases of dengue reported from all over the country. This outbreak is particularly concerning because it is affecting a wide range of people, including children, adults, and the elderly.
         In Nepal, dengue fever remains a pressing health issue. The country has been confronted with a concerning surge in dengue cases as of August 3, 2023. This article aims to explore the ongoing dengue situation in Nepal, delineate its associated symptoms, spotlight preventative measures, and emphasize the significance of raising public awareness.</p>
         <a href="contact.php" class="btn">Read More</a>
      </div>

   </div>

</section>











<?php include 'components/footer.php'; ?>

<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>

<script src="js/script.js"></script>

<script>

var swiper = new Swiper(".reviews-slider", {
   loop:true,
   spaceBetween: 20,
   pagination: {
      el: ".swiper-pagination",
      clickable:true,
   },
   breakpoints: {
      0: {
        slidesPerView:1,
      },
      768: {
        slidesPerView: 2,
      },
      991: {
        slidesPerView: 3,
      },
   },
});

</script>

</body>
</html>