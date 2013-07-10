<%@ Page Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="indexTitle" ContentPlaceHolderID="Title" runat="server">
    IMLS DCC Bios
</asp:Content>
<asp:Content ID="aboutCenterPanel" ContentPlaceHolderID="centerPanel" runat="server">
    <div class="panel">
			<h2>Current Project Team</strong></h2>

			<p><strong><a href="http://www.lis.illinois.edu/people/faculty/clpalmer">Carole Palmer</a> - Principal Investigator, 2007- Present</strong><br>
			(Co-Principle Investigator, 2002-2007)<br>
			<a href="mailto:clpalmer@illinois.edu">clpalmer@illinois.edu</a></p>

			<p><strong><a href="http://www.library.illinois.edu/people/bios/t-cole3/">Timothy W. Cole</a> - Co-Principal Investigator, 2007-Present</strong><br>
			(Principal Investigator, 2002-2007)<br>
			<a href="mailto:t-cole3@illinois.edu">t-cole3@illinois.edu</a></p>

			<p><strong><a href="http://www.library.illinois.edu/people/bios/sshreeve/">Sarah Shreeves</a> - Co-Principal Investigator, 2005-Present</strong><br>
			(Project Coordinator, 2002-2005)<br>
			<a href="mailto:sshreeve@illinois.edu">sshreeve@illinois.edu</a></p>

			<p><strong><a href="http://www.library.illinois.edu/people/bios/thabing/">Thomas Habing</a> - Co-Principal Investigator, 2010-Present</strong><br>
			<a href="mailto:thabing@illinois.edu">thabing@illinois.edu</a></p>

			<p><strong><a href="http://www.lis.illinois.edu/people/faculty/mefron">Miles Efron</a> - Co-Principal Investigator, 2010-Present</strong><br>
			<a href="mailto:mefron@illinois.edu">mefron@illinois.edu</a></p>
			
			<p><strong>Jacob G. Jett - Project Coordinator, 2011-Present</strong><br>
			(Research Assistant, 2009-2010; Collections Coordinator, 2010-2011)<br>
			<a href="mailto:jjett2@illinois.edu">jjett2@illinois.edu</a></p>

			<p><strong>Jordan Vannoy - Research Programmer, 2012-Present</strong><br>
			<a href="mailto:jvannoy@illinois.edu">jvannoy@illinois.edu</a></p>

			<p><strong>Megan Finn Senseney - Collections Coordinator, 2011-Present</strong><br>
			<a href="mailto:mfsense2@illinois.edu">mfsense2@illinois.edu</a></p>

			<p><strong><a href="http://www.lis.illinois.edu/people/students/katrina-s-fenlon-phd-student">Katrina Fenlon</a> - Research Assistant, 2011-Present</strong><br>
			(Project Coordinator, 2009-2011)<br>
			<a href="mailto:kfenlon2@illinois.edu">kfenlon2@illinois.edu</a></p>

			<p><strong><a href="http://www.lis.illinois.edu/people/students/peter-organisciak-phd-student">Peter Organisciak</a> - Research Assistant, 2010-Present</strong><br>
			<a href="mailto:organis2@illinois.edu">organis2@illinois.edu</a></p>
			
			<br />

			<h2>Past Team Members</h2>

			<p><strong>Michael Twidale</strong><br>
			(Co-Principal Investigator, 2002-2010)</p>

			<p><strong>Nuala Koetter</strong><br>
			(Co-Principal Investigator, 2002-2005)</p>

			<p><strong>William H. Mischo</strong><br>
			(Co-Principal Investigator, 2002-2010)</p>

			<p><strong>Nancy O'Brien</strong><br>
			(Co-Principal Investigator, 2005-2007)</p>

			<p><strong>Diny Golder</strong><br>
			(Co-Principal Investigator, 2007)</p>

			<p><strong>Stuart Sutton</strong><br>
			(Co-Principal Investigator, 2007)</p>

			<p><strong>Allen H. Renear</strong><br>
			(Co-Principal Investigator, 2007-2010)</p>

			<p><strong>Beth Sandore</strong><br>
			(Project Consultant, 2002-2005)</p>

			<p><strong>Dave Dubin</strong><br>
			(Faculty Researcher, 2007-2010)</p>

			<p><strong>Larry S. Jackson</strong><br>
			(Research Scientist, uuuu-2011)</p>

			<p><strong>Jenny Benevento</strong><br>
			(Project Coordinator, 2005-2006)</p>

			<p><strong>Amy Jackson</strong><br>
			(Project Coordinator, 2006-2009)</p>

			<p><strong>John Lewis</strong><br>
			(Research Programmer, 2002-2004)</p>

			<p><strong>Hong Zhang</strong><br>
			(Research Programmer, 2008-2010)</p>

			<p><strong>Jennifer Parga Giordano</strong><br>
			(Research Programmer, 2010)</p>

			<p><strong>Michael Tang</strong><br>
			(Research Programmer, 2010-2011)</p>

			<p><strong>Winston Jansz</strong><br>
			(Research Programmer, 2010-2012)</p>

			<p><strong>Sunah Suh</strong><br>
			(Web Designer and Research Assistant, 2010)</p>

			<p><strong>Ellen Knutson</strong><br>
			(Research Assistant, 2002-2005)</p>

			<p><strong>Besiki Stvilia</strong><br>
			(Research Assistant, ca. 2003-2005)</p>

			<p><strong>Kurt Groetsch</strong><br>
			(Research Assistant, 2005-2006)</p>

			<p><strong>Oksana Zavalina</strong><br>
			(Research Assistant, 2006-2010)</p>

			<p><strong>Chris Devers</strong><br>
			(Research Assistant, ca. 2006-2009)</p>

			<p><strong>William Ingram</strong><br>
			(Research Assistant, 2007)</p>

			<p><strong>Richard Urban</strong><br>
			(Research Assistant, 2007-2011)</p>

			<p><strong>Amber Brookshire</strong><br>
			(Research Assistant, 2010)</p>

			<p><strong>Perry Collins</strong><br>
			(Research Assistant, 2011)</p>

    </div>
</asp:Content>

<asp:Content ID="indexLeftPanel" ContentPlaceHolderID="leftPanel" runat="server">
    <% Html.RenderPartial("PartialViews/AboutContents", ViewData.Model)%>
</asp:Content>
