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
    <img src="photos/IMG_2033.jpg" style="width:100%; height:500px;">
  </div>

        <div class="slideshowphoto">
    <img src="photos/IMG_2034.jpg" style="width:100%; height:500px;">
  </div>

        <div class="slideshowphoto">
    <img src="photos/IMG_2040.jpg" style="width:100%; height:500px;">
  </div>

        <div class="slideshowphoto">
    <img src="photos/IMG_2046.jpg" style="width:100%; height:500px;">
  </div>

        <div class="slideshowphoto">
    <img src="photos/banner.jpg" style="width:100%; height:500px;">
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
    setTimeout(showSlides, 2000);
}</script>


        <style>
             h1{
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

        <p>LCB Café is a modern halal café which is located in Laksamana college of Business. We
provide healthy foods and beverages to our valuable customers. Other than that, we also
provide certain dietary foods to those who have dietary requirement. Regarding the cost, we
make sure that cost is low as the majority of our customers are students. Our café is also great
for meetings purposes.</p>

        <p>Opening Hours: 9 AM to 7 PM</p>

        <p>The Staffs:<br />
        •Morning hours 1 staff<br />
        •Afternoon 2 staff (as a lot of students will come more during lunch hours)<br />
        •Evening 1 staff</p>
        
</asp:Content>
