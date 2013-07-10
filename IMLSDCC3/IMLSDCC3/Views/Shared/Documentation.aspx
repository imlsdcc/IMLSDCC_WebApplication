<%@ Page Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="indexTitle" ContentPlaceHolderID="Title" runat="server">
    IMLS DCC Documentation
</asp:Content>
<asp:Content ID="aboutCenterPanel" ContentPlaceHolderID="centerPanel" runat="server">
    <div class="panel">
            <h2>Documentation</h2>			
			  <p align="left" class="BodyText"><strong>IMLS DCC Collection Description 
              Metadata Application Profile:</strong></p>
            <div align="left"> 
              <ul>
                <li class="BodyText"><a href="/CDschema_overview">General overview</a></li>
                <li class="BodyText"><a href="/CDschema_elements">Detailed 
                  description</a></li>
                <li class="BodyText">An <a href="/registry/imlsdccprofile2.xsd">XML 
                  schema</a> is now available</li>
              </ul>
            </div>
            <p align="left" class="BodyText"><strong>Item Level Metadata Schemas 
              and Profiles:</strong></p>
            <ul>
              <li class="BodyText"><a href="http://cicharvest.grainger.uiuc.edu/schemas/QDC/2004/07/14/CICQualifiedDC.xsd">Qualified 
                  Dublin Core XML Schema</a>(maintained 
                  by UIUC for current OAI projects)
              </li>
            </ul>
            <p align="left" class="BodyText"><strong>Metadata Crosswalks (in form 
              of XSLTs) in Use:</strong></p>
            <ul>
              <li class="BodyText"><a href="http://www.loc.gov/standards/marcxml/xslt/MARC21slim2OAIDC.xsl">MARC 
                XML to OAI encoded DC stylesheet</a> (maintained by Library of 
                Congress) </li>
              <li class="BodyText"><a href="../docs/stylesheets/GeneralMARCtoQDC.xsl">MARC 
                XML to Qualified Dublin Core stylesheet</a> and <a href="../docs/stylesheets/GeneralMARCtoQDCutils.xsl">include 
                file</a> (maintained by UIUC for current OAI projects and based 
                on Library of Congress work)</li>
            </ul>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
    </div>
</asp:Content>

<asp:Content ID="indexLeftPanel" ContentPlaceHolderID="leftPanel" runat="server">
    <% Html.RenderPartial("PartialViews/AboutContents", ViewData.Model)%>
</asp:Content>