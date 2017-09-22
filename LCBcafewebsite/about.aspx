<%@ Page Title="" Language="C#" MasterPageFile="~/LCBCafe.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="LCBcafewebsite.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<h1>About LCB's one and only Cafe</h1>

    <p>About Page

The desire of our business is to captivate audiences generally students, lecturers and LCB staffs’.

Our main objective is not only to serve stupendous and appetizing dishes to our customers but also to make a first priority to assure foods are
 well hygienic and healthy at all times. Besides, our aim is to boost the intake of healthy foods to our valued customers.</p>

<h2>Our Location</h2>

    <p>Level 3, Plaza Abdul Razak, Jalan Laksamana Abdul Razak, Bandar Seri Begawan</p>
    <div id="cafemap" style="width:900px;height:300px;"></div>

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

</asp:Content>
