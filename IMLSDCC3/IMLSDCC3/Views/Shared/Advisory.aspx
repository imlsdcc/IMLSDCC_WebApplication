<%@ Page Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="indexTitle" ContentPlaceHolderID="Title" runat="server">
    IMLS DCC Advisory
</asp:Content>
<asp:Content ID="aboutCenterPanel" ContentPlaceHolderID="centerPanel" runat="server">
    <div class="panel">
              <h2>Advisory Board</h2>
			<p><strong>Martin Doerr</strong>, Centre for Cultural Informatics of the Institute of Computer Science, Crete, Greece<br><br>
				<strong>Jeremy Frumkin</strong>, University of Arizona<br><br>
				<strong>Jonathan Furner</strong>, University of California, Los Angeles<br><br>
				<strong>Joshua Greenberg</strong>, Alfred P. Sloan Foundation<br><br>
				<strong>Pete Johnston</strong>, Eduserv Foundation<br><br>
				<strong>Bill Landis</strong>, University of North Carolina at Chapel Hill<br><br>
				<strong>Jenn Riley</strong>, University of North Carolina at Chapel Hill<br><br>
				<strong>Caroline Shephard</strong>, State Library of North Carolina<br><br>
				<strong>Guenter Waibel</strong>, Smithsonian Institution<br><br></p>
			<h2>OCLC Consultant</h2>
			<p><strong>Jean Godby</strong>, OCLC<br><br></p>
			<h2>IMLS Liaison</h2>
			<p><strong>Charles Thomas</strong>, Institute of Museum and Library Services<br><br></p>
    </div>
</asp:Content>

<asp:Content ID="indexLeftPanel" ContentPlaceHolderID="leftPanel" runat="server">
    <% Html.RenderPartial("PartialViews/AboutContents", ViewData.Model)%>
</asp:Content>
