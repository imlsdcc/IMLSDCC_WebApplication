<%@ Page Title="" Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="detailTitle" ContentPlaceHolderID="Title" runat="server">
    IMLS DCC Detail
</asp:Content>

<asp:Content ID="detailStaticPageCss" ContentPlaceHolderID="StaticPageCss" runat="server">
    <script type="text/javascript" src="<%: Url.Content("~/Scripts/Code/detail.js") %>"></script>
</asp:Content>

<asp:Content ID="detailMiddleBar" ContentPlaceHolderID="middlebar" runat="server">
    <%--Title of Item--%>
</asp:Content>

<asp:Content ID="detailCenterPanel" ContentPlaceHolderID="centerPanel" runat="server">
    
    <% Html.RenderPartial("PartialViews/Detail/Item", ViewData.Model)%>
    <%--<% Html.RenderPartial("PartialViews/Detail/CommentView", ViewData.Model)%>--%>
    <span id="detailNumber" style="display: none"><%: RouteData.Values("number")%></span>
    <span id="detailTab" style="display: none"><%: RouteData.Values("tabName")%></span>
</asp:Content>

<asp:Content ID="detailLeftPanel" ContentPlaceHolderID="leftPanel" runat="server">
    <% Html.RenderPartial("PartialViews/Detail/CollectionPanel", ViewData.Model)%>
</asp:Content>

<asp:Content ID="detailRightPanel" ContentPlaceHolderID="rightPanel" runat="server">
   <%-- <% Html.RenderPartial("PartialViews/Detail/SocialPanel", ViewData.Model)%>--%>
    <% Html.RenderPartial("PartialViews/Detail/MorePanel", ViewData.Model)%>
    <% Html.RenderPartial("PartialViews/Detail/SocialPanelLinks", ViewData.Model)%>
    <% Html.RenderPartial("PartialViews/Detail/ItemsInCollection", ViewData.Model)%>
    
</asp:Content>
