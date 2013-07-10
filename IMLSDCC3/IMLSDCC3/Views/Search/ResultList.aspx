<%@ Page Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="aboutTitle" ContentPlaceHolderID="Title" runat="server">
    IMLS DCC Results
</asp:Content>

<asp:Content ID="indexStaticPageCss" ContentPlaceHolderID="StaticPageCss" runat="server">
    <link href="<%: Url.Content("~/Styles/PageStyles/ResultList.css") %>" rel="stylesheet" type="text/css" />
     
</asp:Content>

<asp:Content ID="resultlistLeftPanel" ContentPlaceHolderID="leftPanel" runat="server">
    <div id="sidebar">
        <%--<% Html.RenderPartial("PartialViews/ResultList/BrowsePanel", ViewData.Model)%>--%>
        <% Html.RenderPartial("PartialViews/ResultList/FacetPanel", ViewData.Model)%>
        <% Html.RenderPartial("PartialViews/ResultList/SecondarySourceViews", ViewData.Model)%>
    </div>
</asp:Content>

<asp:Content ID="resultlistCenterPanel" ContentPlaceHolderID="centerPanel" runat="server">
        <% Html.RenderPartial("PartialViews/ResultList/TabbedPanel", ViewData.Model)%>
</asp:Content>
