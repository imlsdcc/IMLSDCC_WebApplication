<%@ Page Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="indexTitle" ContentPlaceHolderID="Title" runat="server">
    IMLS DCC Contact
</asp:Content>
<asp:Content ID="aboutCenterPanel" ContentPlaceHolderID="centerPanel" runat="server">
    <div class="panel">
              <h2>Contact Us</h2>
			
			<p>Please direct your questions, comments, or suggestions to:</p>

			<p><strong>Jacob Jett</strong><br>
			Visiting Project Coordinator<br>
			IMLS Digital Collections &amp; Content<br>
			Center for Informatics Research in Science and Scholarship<br>
			The Graduate School of Library and Information Science<br>
			University of Illinois at Urbana-Champaign<br>
			501 E. Daniel Street, MC-493, Champaign, IL 61820-6211 USA</p>

			<p>E-mail: <a href="mailto:jjett2@illinois.edu">jjett2@illinois.edu</a></p>
			<p>Telephone: <span id="gc-number-0" class="gc-cs-link" title="Call with Google Voice">(217) 244-2164</span></p>
    </div>
</asp:Content>

<asp:Content ID="indexLeftPanel" ContentPlaceHolderID="leftPanel" runat="server">
    <% Html.RenderPartial("PartialViews/AboutContents", ViewData.Model)%>
</asp:Content>
