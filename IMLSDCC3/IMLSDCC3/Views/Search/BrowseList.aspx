<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="browselistTitle" ContentPlaceHolderID="Title" runat="server">
   IMLSDCC Browse
</asp:Content>

<asp:Content ID="browselistStaticPageCss" ContentPlaceHolderID="StaticPageCss" runat="server">
    <link href="<%: Url.Content("~/Styles/PageStyles/BrowseList.css") %>" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="<%: Url.Content("~/Scripts/Code/browse-by-year.js") %>"></script>
    <script type="text/javascript" src="<%: Url.Content("~/Scripts/Code/browse.js") %>"></script> 
</asp:Content>

<asp:Content ID="browselistCenterPanel" ContentPlaceHolderID="centerPanel" runat="server">
    
    <% Html.RenderPartial("PartialViews/BrowseList/TitleBrowse", ViewData.Model)%>
    <% Html.RenderPartial("PartialViews/BrowseList/SubjectBrowse", ViewData.Model)%>
    <% Html.RenderPartial("PartialViews/BrowseList/TypeBrowse", ViewData.Model)%>
    <% Html.RenderPartial("PartialViews/BrowseList/DateBrowse", ViewData.Model)%>
    <% Html.RenderPartial("PartialViews/BrowseList/InstitutionBrowse", ViewData.Model)%>
    <% Html.RenderPartial("PartialViews/BrowseList/CollectionBrowse", ViewData.Model)%>

    <script type="text/javascript">
        $(function () {
            $('.browseHref').attr('onclick', "browse.draw(this.href);return false;");
            browse.draw();
        });
 </script>
</asp:Content>