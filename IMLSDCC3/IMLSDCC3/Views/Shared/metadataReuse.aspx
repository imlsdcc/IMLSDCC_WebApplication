<%@ Page Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="indexTitle" ContentPlaceHolderID="Title" runat="server">
    IMLS DCC Metadata Reuse Policy
</asp:Content>
<asp:Content ID="aboutCenterPanel" ContentPlaceHolderID="centerPanel" runat="server">
    <div class="panel">
              <h2>Metadata Reuse Policies </h2>
              <h3>Collection Level Metadata Reuse</h3>
              <div prefix="cc: http://creativecommons.org/ns# dct: http://purl.org/dc/terms/" about="http://imlsdcc.grainger.uiuc.edu/registry/oai/oai.aspx?verb=Identify">
              <span property="dct:title">Collection Records from the IMLS Digital Collections and Content Resource</span> 
              are freely available for re-use under a <a rel="license" href="http://creativecommons.org/licenses/by/3.0/">CC BY 3.0 License</a> 
              assigned by <a rel="cc:attributionURL" property="cc:attributionName" href="http://imlsdcc.grainger.uiuc.edu/metadataReuse">University of Illinois Board of Trustees</a>. If you incorporate any of these records into another online resource, please provide attribution to the IMLS DCC at the University of Illinois and a link to http://imlsdcc.grainger.uiuc.edu/metadataReuse</div>
    </div>
</asp:Content>

<asp:Content ID="indexLeftPanel" ContentPlaceHolderID="leftPanel" runat="server">
    <% Html.RenderPartial("PartialViews/AboutContents", ViewData.Model)%>
</asp:Content>
