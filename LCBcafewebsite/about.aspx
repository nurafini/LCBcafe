<%@ Page Title="" Language="C#" MasterPageFile="~/LCBCafe.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="LCBcafewebsite.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        h1, h2{
            text-align: left;
            padding-right: 500px;
            font-family: Calibri;
            color: red;
        }

        p{
            text-align: left;
            padding-right: 500px;
            font-family: Calibri;
            color: darkblue;
            font-size: large;
        }

    </style>

<h1>About LCB's One and Only Cafe</h1>

    <p>About Page

The desire of our business is to captivate audiences generally students, lecturers and LCB staffs’.

Our main objective is not only to serve stupendous and appetizing dishes to our customers but also to make a first priority to assure foods are
 well hygienic and healthy at all times. Besides, our aim is to boost the intake of healthy foods to our valued customers.</p>

<h2>Our Location</h2>

    <p>Level 3, Plaza Abdul Razak, Jalan Laksamana Abdul Razak, Bandar Seri Begawan</p>
    <div id="cafemap" style="width:600px;height:300px;"></div>

<script>
function mapCafe() {

var pinlocation = new google.maps.LatLng(4.8856828, 114.9314358);
var mapID = document.getElementById("cafemap");
var mapSettings = {center: pinlocation, zoom: 20};
var map = new google.maps.Map(mapID, mapSettings);
var marker = new google.maps.Marker({position:pinlocation});
marker.setMap(map);
}
</script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyARAFlBpOcUBOoBY9S4LX9M1GdFzPyMGKQ&callback=mapCafe"></script>

    <h2>Our Menu</h2>

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
    <img src="photos/menu1.jpg" style="width:500px; height:720px;">
  </div>

        <div class="slideshowphoto">
    <img src="photos/menu2.jpg" style="width:500px; height:720px;">
  </div>

        <div class="slideshowphoto">
    <img src="photos/menu3.jpg" style="width:500px; height:720px;">
  </div>

        <div class="slideshowphoto">
    <img src="photos/menu4.jpg" style="width:500px; height:720px;">
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

</asp:Content>
