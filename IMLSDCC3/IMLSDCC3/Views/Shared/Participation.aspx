<%@ Page Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="indexTitle" ContentPlaceHolderID="Title" runat="server">
    IMLS DCC Participation
</asp:Content>
<asp:Content ID="aboutCenterPanel" ContentPlaceHolderID="centerPanel" runat="server">
                <div class='panel'>
                <h2>Why and How to Participate </h2>
                <p>The Institute of Museum and Library Services has nurtured the development of hundreds of digital collections at libraries, museums, and archives across the United States through its National Leadership Grant (NLG) and Library Services and Technology Act (LSTA) programs. The IMLS DCC provides unified access to those collections and integrates them with a larger set of complementary history collection through the Opening History resource.</p>
                <p class="AnchorLink"><a href="#WhyParticipate">Why
                      should you participate?</a></p>
                <p class="AnchorLink"><a href="#HowParticipate">How
                      do you participate?</a></p>
                <p class="AnchorLink"><a href="#GetInfo">Want
                      more information?</a></p>
                    <h3 name="WhyParticipate" id="WhyParticipate"></a>Why
                          should you participate?</h3>
                    <p class="BodyText">Adding your collections to the aggregation will:</p>
                  <ul>
                    <li>make an important contribution to a shared national resource;
                    </li>
                    <li>expose your digital materials to a wider audience;</li>
                    <li>provide experience with techniques and tools for sharing collection and item metadata; and</li>
                    <li>make your metadata available to other aggregators and service providers.</li>					
                  </ul>
					<p>In addition, the IMLS DCC can inform how to develop future NLG and LSTA projects that fit with the existing IMLS-funded collections in your state, region, or at the national level.</p>

					<p>Opening History can help you discover strengths and gaps in the national base of collections and opportunities for new collaborations with other institutions that have complementary digital materials.</p>

					<p>Your contributions help build a richer resource that serves end users and our ongoing research on building large-scale digital aggregations of value for cultural heritage user communities.</p>
                  <h3 name="HowParticipate" id="HowParticipate">How do you participate?</h3>
                <p><strong>Contribute a collection record</strong> to the collection registry. Complete our <a href="https://illinois.edu/fb/sec/4175335">suggest a collection</a> form or send us an <a href="mailto:jjett2@illinois.edu">email</a> with information about your collection, and we will create a provisional collection record. You will then have an opportunity to review and edit the record before we make it part of our public aggregation. <a href="Resources.aspx#whatisregistry"><strong>Learn more</strong></a>.</p>

				<p><strong>Contribute metadata</strong> to the metadata repository. We can provide the tools and support you need to set up your metadata to be harvested and placed in the repository. Harvesting utilizes the Open Archives Initiative Protocol for Metadata Harvesting (<a href="Resources.aspx#whatisoai">OAI-PMH</a>). <a href="Resources.aspx#whatismetadata"><strong>Learn more</strong></a>.</p>

				<p><strong>Participate in research.</strong> <a href="/Groups"><strong>Learn more</strong></a>.</p>

                <h3 name="GetInfo" id="GetInfo">Want
                          more information?</h3>
				<p>For more information please see our <a href="/Documentation">documentation</a> and <a href="/Resources">resources</a> pages. We are here to help you learn more about making your digital collections visible to a nationwide audience. Contact Jacob Jett, the IMLS DCC project coordinator, at <a href="mailto:jjett2@illinois.edu">jjett2@illinois.edu</a> or (217) 244-7809.</p>
                </div>
  </asp:Content>

<asp:Content ID="indexLeftPanel" ContentPlaceHolderID="leftPanel" runat="server">
    <% Html.RenderPartial("PartialViews/AboutContents", ViewData.Model)%>
</asp:Content>