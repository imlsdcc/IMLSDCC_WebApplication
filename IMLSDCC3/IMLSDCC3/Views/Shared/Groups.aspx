<%@ Page Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="indexTitle" ContentPlaceHolderID="Title" runat="server">
    IMLS DCC Working Groups
</asp:Content>
<asp:Content ID="aboutCenterPanel" ContentPlaceHolderID="centerPanel" runat="server">
    <div class="panel">
            <h2>Research Working Groups, 2010-2012</h2>
			
			<h3>Digital Collection Evaluation (DiCE)</h3>

			<p>Articulate content evaluation and development guidelines specifically designed for strategic, use-focused federation. Conduct a formal evaluation of the IMLS DCC content and based on the outcomes, expand the collection for targeted scholarly communities.</p>

			<p><em>Current members: Carole Palmer, Katrina Fenlon, Jacob Jett, Peter Organisciak, Megan Senseney</em></p>

			<p><em>Past members: Oksana Zavalina, Richard Urban</em></p>
			<br />
			<h3>Subject Analysis Team (SALT)</h3>

			<p>Refine strategies and explore automated approaches for identifying and analyzing subject concentrations. Assess potential for improving subject access to aggregation via normalized, faceted subject terms. Explore strategies for enhancing linkages between thematically related collections and subcollections.</p>

			<p><em>Current members: Miles Efron, Peter Organisciak, Katrina Fenlon, Jacob Jett, Megan Senseney</em></p>

			<p><em>Past members: Larry Jackson</em></p>
			
			<br/>
			
			<h3>Infrastructure Maintenance</strong></h3>

			<p>Maintain the IMLS DCC as a resource and testbed to benefit users and researchers of digital content. Experiment with and test metasearch capabilities with primary and secondary sources, exploiting findings from metadata relationships identified above.</p>

			<p><em>Current members: Tim Cole, Tom Habing, Winston Jansz, Jacob Jett, Megan Senseney</em></p>

			<p><em>Past members: Katrina Fenlon, Jennifer Giordano</em></p>

			<br/>
			
			<h3>Infrastructure Sustainability</strong></h3>

			<p>Analyze project infrastructure for the long-term sustainability of the project. Explore how the project can capitalize on new technological developments and alternate architectures.</p>

			<p><em>Current members: Carole Palmer, Tim Cole, Tom Habing, Sarah Shreeves, Jacob Jett</em></p>

			<br />
			
			<h3>Collections and Item Metadata Relationships (CIMR)</h3>

			<p>Analyze relationships between collection-level metadata and item-level metadata to better preserve context and enhance functionality for scholarly communities.</p>

			<p><em>Past members: Allen Renear, Richard Urban, Karen Wickett, Wu Zheng, Dave Dubin, Katrina Fenlon</em></p>

			<br />
			
			<p><strong>Interface Design</strong></p>

			<p>Improve interface representation of content and context for scholarly use.</p>

			<p><em>Past members: Sarah Shreeves, Michael Twidale, Tim Cole, Richard Urban, Katrina Fenlon, Hong Zhang, Oksana Zavalina, Sunah Suh, Jacob Jett,Jennifer Giordano</em></p>

			<br />
			
			<p>See our <a href="http://imlsdcc.grainger.uiuc.edu/docs/DCC3narrative_final.pdf">2010 grant proposal</a> and our complete list of <a href="/Disseminations">publications, presentations, and reports</a> for more information on our research.</p>
              </div>
</asp:Content>

<asp:Content ID="indexLeftPanel" ContentPlaceHolderID="leftPanel" runat="server">
    <% Html.RenderPartial("PartialViews/AboutContents", ViewData.Model)%>
</asp:Content>
