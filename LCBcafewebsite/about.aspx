<%@ Page Title="" Language="C#" MasterPageFile="~/LCBCafe.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="LCBcafewebsite.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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
