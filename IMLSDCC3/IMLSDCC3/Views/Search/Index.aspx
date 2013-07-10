<%@ Page Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="indexTitle" ContentPlaceHolderID="Title" runat="server">
    IMLS DCC
</asp:Content>

<asp:Content ID="indexStaticPageCss" ContentPlaceHolderID="StaticPageCss" runat="server">
    
    <link href="<%: Url.Content("~/Styles/PageStyles/Index.css") %>" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="<%: Url.Content("~/Scripts/Code/browse-by-year.js") %>"></script>
    <script type="text/javascript" src="<%: Url.Content("~/Scripts/Code/index.js") %>"></script>
    
</asp:Content>

<asp:Content ID="indexMiddleBar" ContentPlaceHolderID="middlebar" runat="server">
    <% Html.RenderPartial("PartialViews/Index/MiddleBarFeaturedWrapper", ViewData.Model)%>
</asp:Content>

<asp:Content ID="indexLeftPanel" ContentPlaceHolderID="leftPanel" runat="server">
    <% Html.RenderPartial("PartialViews/Index/SubjectBrowse", ViewData.Model)%> 
    <% Html.RenderPartial("PartialViews/Index/FeaturedContent", ViewData.Model)%>
    <% Html.RenderPartial("PartialViews/Index/WhoAreWe", ViewData.Model)%>      
</asp:Content>

<asp:Content ID="indexCenterPanel" ContentPlaceHolderID="centerPanel" runat="server">
    <% Html.RenderPartial("PartialViews/Index/MapView", ViewData.Model)%>
    <% Html.RenderPartial("PartialViews/Index/BrowseByDate", ViewData.Model)%>
    <% Html.RenderPartial("PartialViews/Index/BrowseByType", ViewData.Model)%> 
</asp:Content>

<asp:Content ID="indexRightPanel" ContentPlaceHolderID="rightPanel" runat="server">
    <% Html.RenderPartial("PartialViews/Index/StatsPanel", ViewData.Model)%> 
    <% Html.RenderPartial("PartialViews/Index/FlickrPanel", ViewData.Model) %>
</asp:Content>

