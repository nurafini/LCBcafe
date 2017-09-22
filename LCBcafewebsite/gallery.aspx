<%@ Page Title="" Language="C#" MasterPageFile="~/LCBCafe.Master" AutoEventWireup="true" CodeBehind="gallery.aspx.cs" Inherits="LCBcafewebsite.gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
    * {box-sizing:border-box}

.galleryslideshow {
  width: 1000px;
  position: relative;
  margin: auto;
}

.slideshowphoto {
    display: none;
}

.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}
</style>

    <div class="galleryslideshow">

        <div class="slideshowphoto">
    <img src="photos/slideshow4.jpg" style="width:100%">
  </div>

        <div class="slideshowphoto">
    <img src="photos/slideshow5.jpg" style="width:100%">
  </div>

  <div class="slideshowphoto">
    <img src="photos/puff.jpg" style="width:100%">
  </div>

  <div class="slideshowphoto">
    <img src="photos/slideshow3.jpg" style="width:100%">
  </div>

<div class="slideshowphoto">
    <img src="photos/puff3.jpg" style="width:100%">
  </div>

        <script>
        var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("slideshowphoto");
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    slideIndex++;
    if (slideIndex > slides.length) { slideIndex = 1 }
    slides[slideIndex - 1].style.display = "block";
    setTimeout(showSlides, 2500);
}</script>

        <h1>Our Menu</h1>
<br>

  <style>

div.gallerypage img {
    width: 300px;
    height: 200px;
}
        </style>

<div class="gallerypage">
    <h2>Foods</h2>
  <a href="">
    <img src="photos/sausage roll.jpg" width="300" height="200">
  </a>

  <a href="">
    <img src="photos/sushi.jpg" width="300" height="200">
  </a>

  <a href="">
    <img src="photos/nugget.jpg" width="300" height="200">
  </a>

    <a href="">
    <img src="photos/icecream.jpg" width="300" height="200">
  </a>

    <a href="">
    <img src="photos/sandwich.jpg" width="300" height="200">
  </a>

    <a href="">
    <img src="photos/hotdog.jpg" width="300" height="200">
  </a>

    <a href="">
    <img src="photos/dogcheese.jpg" width="300" height="200">
  </a>

    <a href="">
    <img src="photos/puff3.jpg" width="300" height="200">
  </a>

    <div class="gallerypage">
    <h2>Drinks</h2>
  <a href="">
    <img src="photos/boxedrinks.jpg" width="300" height="200">
  </a>

     <a href="">
    <img src="photos/grassjelly.jpg" width="300" height="200">
  </a>

     <a href="">
    <img src="photos/greentea.jpg" width="300" height="200">
  </a>

      <a href="">
    <img src="photos/longcans.jpg" width="300" height="200">
  </a>

        <a href="">
    <img src="photos/longnescafe.jpg" width="300" height="200">
  </a>

        <a href="">
    <img src="photos/mineralwater.jpg" width="300" height="200">
  </a>

        <a href="">
    <img src="photos/nescafe.jpg" width="300" height="200">
  </a>

        <a href="">
    <img src="photos/mrbrown.jpg" width="300" height="200">
  </a>

        <a href="">
    <img src="photos/pepsi.jpg" width="300" height="200">
  </a>

        <a href="">
    <img src="photos/revive.jpg" width="300" height="200">
  </a>

        <a href="">
    <img src="photos/soya.jpg" width="300" height="200">
  </a>

        <a href="">
    <img src="photos/sugarcane.jpg" width="300" height="200">
  </a>

        <a href="">
    <img src="photos/7up.jpg" width="300" height="200">
  </a>
</div>
</asp:Content>
