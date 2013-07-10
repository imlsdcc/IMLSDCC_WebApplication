<%@ Page Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="indexTitle" ContentPlaceHolderID="Title" runat="server">
    IMLS DCC About
</asp:Content>
<asp:Content ID="aboutCenterPanel" ContentPlaceHolderID="centerPanel" runat="server">
    <div class="panel">
        <h2>About the Project</h2>
		<p>The <strong><a href="http://imlsdcc.grainger.illinois.edu">IMLS Digital Collections and Content</a></strong> 
		project began in 2002 with the aim of providing a single point of access to digital content developed 
		through IMLS National Leadership Grants and selected LSTA-supported collections.  The IMLS DCC aggregation 
		brings together cultural heritage collections and exhibits from libraries, museums, and archives from 
		across the country, providing both collection-level and item-level access to facilitate searching and 
		browsing and to retain the institutional identities and collection contexts that are vital to how users 
		explore and interact with cultural heritage materials. In 2007, <strong><a href="http://imlsdcc.grainger.illinois.edu/history">
		Opening History</a></strong> was launched to provide more inclusive coverage of American history materials.</p>
		<p>If your institution has digital collections that were funded by IMLS or that relate to American history, we 
		encourage you to <strong><a href="http://imlsdcc.grainger.uiuc.edu/contact.asp">contact us</a></strong> or complete the 
		<strong><a href="https://illinois.edu/fb/sec/4175335">suggest a collection</a></strong> form online.</p>
		<p>Selected collections from IMLS DCC are also available through our <strong><a href="http://flickr.com/photos/imlsdcc">
		Flickr photostream</a></strong>, and our <strong><a href="http://sowingculture.wordpress.com">Sowing Culture</a></strong> 
		blog features weekly posts highlighting images and historical events from the Opening History collections.</p>
    </div>
        
</asp:Content>

<asp:Content ID="indexLeftPanel" ContentPlaceHolderID="leftPanel" runat="server">
    <% Html.RenderPartial("PartialViews/AboutContents", ViewData.Model)%>
</asp:Content>
