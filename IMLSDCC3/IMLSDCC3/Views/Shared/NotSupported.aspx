<%@ Page Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="indexTitle" ContentPlaceHolderID="Title" runat="server">
    IMLS DCC Not Supported
</asp:Content>
<asp:Content ID="aboutCenterPanel" ContentPlaceHolderID="centerPanel" runat="server">
                <div class="panel">
                    <div>
                        Not Supported.
                        <br />
                        <br />
                        Please go to <a href="http://imlsdcc.grainger.illinois.edu/">http://imlsdcc.grainger.illinois.edu</a> for other options.
                        <br />
                        <br />
                        Thank you.
                    </div>
                </div>
</asp:Content>

<asp:Content ID="indexLeftPanel" ContentPlaceHolderID="leftPanel" runat="server">
    <% Html.RenderPartial("PartialViews/AboutContents", ViewData.Model)%>
</asp:Content>