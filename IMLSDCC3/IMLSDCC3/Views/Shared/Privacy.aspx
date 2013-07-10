<%@ Page Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="indexTitle" ContentPlaceHolderID="Title" runat="server">
    IMLS DCC Privacy Policy
</asp:Content>

<asp:Content ID="privacyCenterPanel" ContentPlaceHolderID="centerPanel" runat="server">
    <div class="panel">
        <h2>Privacy Policy</h2>
        <p>The IMLS Digital Collections and Content (DCC) project is investigating and implementing a systematic approach to developing useful, meaningful, and usable digital collections. As part of our investigation, the DCC project tracks how users interact with the DCC site and what resources are viewed. Statistics about users' sessions are only analyzed in the aggregate, and data released in publications of DCC research is never individually identifiable. Specifically, in accordance with the <a href="http://www.vpaa.uillinois.edu/policies/web_privacy.cfm">Web Privacy Notice</a> issued by the Office of the Vice President for Academic Affairs at the University of Illinois, the DCC project does not release the IP addresses of machines that visit the DCC site. Any IP addresses that are collected in the course of DCC research are purged from our records within 1 year.</p>
    </div>
</asp:Content>

<asp:Content ID="indexLeftPanel" ContentPlaceHolderID="leftPanel" runat="server">
    <% Html.RenderPartial("PartialViews/AboutContents", ViewData.Model)%>
</asp:Content>
