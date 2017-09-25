<%@ Page Title="" Language="C#" MasterPageFile="~/LCBCafe.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="LCBcafewebsite.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="slideshow.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
    * {box-sizing:border-box}

.galleryslideshow {
  width: inherit;
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
    <img src="photos/IMG_2033.jpg" style="width:100%">
  </div>

        <div class="slideshowphoto">
    <img src="photos/IMG_2034.jpg" style="width:100%">
  </div>

        <div class="slideshowphoto">
    <img src="photos/IMG_2040.jpg" style="width:100%">
  </div>

        <div class="slideshowphoto">
    <img src="photos/IMG_2046.jpg" style="width:100%">
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

        <style>
            h1, h2{
                text-align: center;
                padding-left: inherit;
                padding-right: inherit;
                color: red;
                font-family: Calibri;
            }

            p{
                text-align: center;
                padding-left: 300px;
                padding-right: 300px;
                color: darkblue;
                font-family: Calibri;
                font-size: large;
            }
        </style>

        <h1>Welcome to LCB Cafe!</h1>

        <p>LCB Café is a modern halal restaurant that is suitable for all. We provide healthy food with
no MSG to our valuable customers. What’s more, we cater for customers who have
special dietary requirements.</p>

        <h2>Our Culture is to served foods with:<br />•LESS Sugar<br />•LESS Oil<br />•LESS Salt<br />•Strictly NO MSG</h2>

        <p>Opening Hours: 9 AM to 7 PM</p>

</asp:Content>
