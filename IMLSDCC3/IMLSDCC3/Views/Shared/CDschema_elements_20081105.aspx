<%@ Page Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="indexTitle" ContentPlaceHolderID="Title" runat="server">
    IMLS DCC Overview 2008-11-05
</asp:Content>
<asp:Content ID="aboutCenterPanel" ContentPlaceHolderID="centerPanel" runat="server">
    <div class="panel">
    <td colspan="2" valign="top">
      <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr class="BodyText">
        <td colspan="3" align="left" valign="top">
          <a name="top"></a><h2>IMLS DCC Collection Description Metadata
              Schema</h2>
          <table border="1" align="center" cellpadding="1" cellspacing="1">
            <tr>
              <td width="25%" valign="top" class="tableLabel">Title: </td>
              <td width="75%" class="sidebar">Institute of Museum and Library Services (IMLS) Digital Collections and Content (DCC) Collection Description Metadata Schema </td>
            </tr>
            <tr>
              <td width="25%" valign="top" class="tableLabel">Creator: </td>
              <td width="75%" class="sidebar">Sarah L. Shreeves </td>
            </tr>
            <tr>
              <td width="25%" valign="top" class="tableLabel">Creator: </td>
              <td width="75%" class="sidebar">Amy S. Jackson </td>
            </tr>			
            <tr>
              <td width="25%" valign="top" class="tableLabel">Date Issued: </td>
              <td width="75%" class="sidebar">2008-11-05</td>
            </tr>
            <tr>
              <td width="25%" valign="top" class="tableLabel">Identifier: </td>
              <td width="75%" class="sidebar"><a href="CDschema_elements_20081105">http://imlsdcc.grainger.uiuc.edu/CDschema_elements_20081105</a></td>
            </tr>
            <tr>
              <td width="25%" valign="top" class="tableLabel">Replaces: </td>
              <td width="75%" class="sidebar"><p><a href="CDschema_elements_20050504">http://imlsdcc.grainger.uiuc.edu/CDschema_elements_20050504</a></p>                </td>
            </tr>
            <tr>
              <td width="25%" valign="top" class="tableLabel">Is Replaced By: </td>
              <td width="75%" class="sidebar">Not applicable </td>
            </tr>
            <tr>
              <td width="25%" valign="top" class="tableLabel">Latest Version: </td>
              <td width="75%" class="sidebar"><a href="CDschema_elements"> http://imlsdcc.grainger.uiuc.edu/CDschema_elements</a></td>
            </tr>
            <tr>
              <td width="25%" valign="top" class="tableLabel">Description of Document: </td>
              <td width="75%" class="sidebar">This document describes the IMLS DCC Collection Description Metadata Schema </td>
            </tr>
          </table>          
        <p class="BodyText" >The IMLS DCC Collection Description Metadata Schema
            is based on the <a href="http://www.ukoln.ac.uk/metadata/rslp/">UKOLN
                RSLP Collection Description Metadata Schema</a> and
                the <a href="http://dublincore.org/groups/collections/">Dublin
                Core Collection Description Application Profile</a>. The IMLS
                DCC project has adapted these schemas to reflect the particular
                nature and needs of the included projects.
                It is meant to describe <strong>digital collections</strong> created
                through IMLS Grant projects and does
                not describe
                in detail the projects themselves. This metadata schema forms
                the basis of the IMLS DCC Collection Registry.</p>
          <p class="BodyText" >The following is a <strong>detailed</strong> look
            at the elements and their attributes and is meant to give some guidance on
            usage. For a less detailed look at the schema, please
            see the <a href="CDschema_overview">General Overview</a> page. See also the associated XML schema and METS profile at: <a href="/registry/imlsdccprofile.xsd">http://imlsdcc.grainger.uiuc.edu/registry/default.asp</a>.</p>
          <p class="BodyText" >There are
              four entities described by the schema: </p>
          <ul>
            <li class="BodyText">the <a href="#collection">collection</a>;</li>
            <li class="BodyText">the <a href="#project">IMLS project</a> (if applicable);</li>
            <li class="BodyText">the <a href="#institution">institution</a>;
              and </li>
            <li class="BodyText"> the <a href="#administrator">administrator</a>.              </li>
            </ul>
          <p>A collection may have been created by multiple projects and
            have multiple administrators. A collection may have only one hosting
            institution, but may have multiple contributing institutions. A collection
            may have multiple sub-collections, associated collections, or source
            physical collections.
                A project may have only one administering institution, but
            may have multiple participating (or collaborating) institutions.
            The diagram below illustrates the relationships between these entities.</p>
          <p><img src="/images/IMLSDCC_CollDescDiagram.gif" alt="Relationships between Collection Description Entities" width="641" height="433"></p>          <p class="BodyText" >The IMLS DCC Collection Description Metadata Schema
            reuses metadata elements from other schemas and adapts their use.
            We have also developed elements that are needed for our purposes,
            but have mapped these to other standards as is possible (a crosswalk
            is coming soon).
            At the <a href="#namespaces">bottom</a> of this page is a list of
            the vocabularies and namespaces used within the IMLS DCC CD schema.</p>
          <p class="BodyText" >See <a href="CDschema_overview">http://imlsdcc.grainger.uiuc.edu/CDschema_overview</a> for
            a general overview of the IMLS DCC Collection Description Metadata
            Schema.</p>
            <p class="BodyText" >Questions and comments can be directed to Amy 
              Jackson, Project Coordinator, at <a href="mailto:amyjacks@uiuc.edu">amyjacks@uiuc.edu</a> 
              or 217-244-7809.<br>
          </p>
          <p class="BodyText" >Each metadata element is described by the following
            attributes:</p>          <table width="75%" border="1" align="center" cellpadding="3" cellspacing="1" class="sidebar" id="Element_Attributes">
          <tr>
                  <td width="30%" class="tablelabels">Name</td>
                  <td width="70%" class="table">The unique token assigned to the term.</td>
              </tr>
                <tr>
                  <td class="tablelabels">Label</td>
                  <td class="table">The human-readable label assigned to the term.</td>
                </tr>
                <tr>
                  <td class="tablelabels">Definition</td>
                  <td class="table">A statement that represents the concept and essential nature
                  of the term.</td>
                </tr>
                <tr>
                  <td class="tablelabels">*Uses Encoding Scheme</td>
                  <td class="table">Name of the classification scheme for use, if required.</td>
                </tr>
                <tr>
                  <td class="tablelabels">Obligation</td>
                  <td class="table">Indication of whether element is required
                    or optional.</td>
                </tr>
                <tr>
                  <td class="tablelabels">Occurrence</td>
                  <td class="table">The number of times a data element may appear.</td>
                </tr>
                <tr>
                  <td class="tablelabels">*Refines</td>
                  <td class="table">A second element which is the super-property
                    of the current element.</td>
                </tr>
                <tr>
                  <td class="tablelabels">Comment</td>
                  <td class="table"><p>Additional information about the term
                      or its application, including examples.</p>
                  </td>
                </tr>
                <tr>
                  <td colspan="2" class="table"><em>*optional attributes</em></td>
                </tr>
            </table>          
          <p class="Heading3">Elements:</p>
          <p class="pagesubheading"><span class="Heading3"><a name="collection"></a></span>Collection Entity</p>
          <blockquote>
            <p class="BodyText"><strong><a href="#collection_general">General attributes</a></strong></p>
            <ul>
              <li><a href="#collection_title">dc:title</a></li>
              <li><a href="#collection_alternative">dcterms:alternative</a></li>			  
              <li><a href="#collection_identifier">dc:identifier</a></li>
              <li><a href="#collection_isLocatedAt">cld:isLocatedAt</a></li>
              <li><a href="#collection_creator">dc:creator</a></li>
			  <li><a href="#collection_interactivity">imls:interactivity</a></li>
              <li><a href="#collection_itemType">cld:itemType</a></li>
              <li><a href="#collection_type">dc:type</a></li>
              <li><a href="#collection_format">cld:itemFormat</a></li>
              <li><a href="#collection_language">dc:language</a></li>
              <li><a href="#collection_extent">dc:extent</a></li>
              <li><a href="#collection_accrualPeriodicity">dcterms:accrualPeriodicity</a></li>
              <li><a href="#collection_supplement">imls:supplement</a></li>
              <li><a href="#collection_audience">dcterms:audience</a></li>
              <li><a href="#collection_accessRights">dcterms:accessRights</a></li>
              <li><a href="#collection_rights">dc:rights</a></li>
              <li><a href="#collection_accrualPolicy">dcterms:accrualPolicy</a></li>
              <li><a href="#collection_isAccessedVia">cld:isAccessedVia</a></li>
              <li><a href="#collection_provenance">dcterms:provenance</a></li>			  
              <li><a href="#collection_dateItemsCreated">cld:dateItemsCreated</a></li>	
              <li><a href="#collection_metadataSchema">imls:metadataSchema</a></li>
              <li><a href="#collection_notes">imls:notes</a></li>
            </ul>
            <p><strong><a href="#collection_topical">Topical attributes</a></strong></p>
            <ul>
              <li><a href="#collection_subject">dc:subject</a></li>
              <li><a href="#collection_abstract">dcterms:abstract</a></li>
              <li><a href="#collection_spatial">dcterms:spatial</a></li>
              <li><a href="#collection_temporal">dcterms:temporal</a></li>
            </ul>
            <p><strong><a href="#collection_relcoll">Attributes describing relationships
              with other collections</a>:</strong></p>
            <ul>
              <li><a href="#collection_isPartOf">dcterms:isPartOf</a></li>
              <li><a href="#collection_hasPart">dcterms:hasPart</a></li>
              <li><a href="#collection_source">dc:source</a></li>
              <li><a href="#collection_relation">dc:relation</a></li>
            </ul>
            <p><strong><a href="#collection_relother">Attributes describing relationships
                with projects, institutions, and administrators</a>:</strong></p>
            <ul>
              <li><a href="#collection_project">imls:project</a></li>
              <li><a href="#collection_publisher">dc:publisher</a></li>
              <li><a href="#collection_contributor">dc:contributor</a></li>
              <li><a href="#collection_managedBy">imls:managedBy</a></li>
            </ul>
          </blockquote>
          <p class="pagesubheading"><a name="project"></a>Project Entity</p>
          <ul>
            <li class="BodyText"><a href="#project_title">dc:title</a></li>
            <li class="BodyText"><a href="#project_identifier">dc:identifier</a></li>
            <li class="BodyText"><a href="#project_isLocatedAt">cld:isLocatedAt</a></li>
            <li class="BodyText"><a href="#project_administeredBy">imls:administeredBy</a></li>
            <li class="BodyText"><a href="#project_participatedBy">imls:participatedBy</a></li>
            </ul>          
          <p class="pagesubheading"><a name="institution"></a>Institution Entity</p>
          <ul>
            <li class="BodyText"><a href="#institution_fn">vCard:FN</a></li>
            <li class="BodyText"><a href="#institution_uid">vCard:UID</a></li>
            <li class="BodyText"><a href="#institution_role">vCard:Role</a></li>
            <li class="BodyText"><a href="#institution_region">vCard:Region</a></li>
            <li class="BodyText"><a href="#institution_pCode">vCard:Pcode</a></li>
            <li class="BodyText"><a href="#institution_zipCode">Vcard:Country</a></li>
          </ul>          
          <p class="pagesubheading"><a name="administrator"></a>Administrator Entity</p>
          <ul>
            <li><a href="#administrator_name">vCard:N</a>              
              <ul>
                <li><a href="#administrator_family">vCard:Family</a></li>
                <li><a href="#administrator_given">vCard:Given</a></li>
              </ul>
            </li>
            <li><a href="#administrator_uid">vCard:UID</a></li>
            <li><a href="#administrator_email">vCard:email</a></li>
            <li><a href="#administrator_org">vCard:Org</a>              
              <ul>
                <li><a href="#administrator_orgName">vCard:orgname</a></li>
              </ul>
            </li>
            </ul>          
          <p><span class="Heading3">Collection Entity</span> <span class="back">(back to <a href="#top">top</a>)</span></p>
          <p><strong><a name="collection_general"></a>General attributes:</strong></p>          
		  <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="collection_title">
	<tr>
	<td class="tableLabel" width="15%" valign="top" align="left">
	Name
	</td>
	<td class="sidebar" width="85%" valign="top" align="left">
	<a name="collection_title"></a>dc:title </td>
	</tr>
	<tr>
	<td class="tableLabel" width="20%" valign="top" align="left">
	Label
	</td>
	<td class="sidebar" width="80%" valign="top" align="left">
	Name of digital collection</td>
	</tr>
	<tr class="local" bgcolor="#FFFFFF">
	<td width="20%" align="left" valign="top" class="tableLabel">
	Definition
	</td>
	<td width="80%" align="left" valign="top" class="sidebar"><p>The name of the digital
	    collection.</p>
	</td>
	</tr>
   	<tr class="local" bgcolor="#FFFFFF">
      <td align="left" valign="top" class="tableLabel"> Uses Encoding Scheme </td>
      <td align="left" valign="top" class="sidebar"> n/a</td>
 	  </tr>
   	<tr class="local" bgcolor="#FFFFFF">
      <td align="left" valign="top" class="tableLabel"> Obligation </td>
      <td align="left" valign="top" class="sidebar"> Mandatory </td>
 	  </tr>
   	<tr class="local" bgcolor="#FFFFFF">
      <td align="left" valign="top" class="tableLabel"> Occurrence </td>
      <td align="left" valign="top" class="sidebar"> Minimum: 1, Maximum: 1</td>
 	  </tr>
   	<tr class="local" bgcolor="#FFFFFF">
   	  <td align="left" valign="top" class="tableLabel">Refines</td>
   	  <td align="left" valign="top" class="sidebar">n/a</td>
 	  </tr>
   	<tr class="local" bgcolor="#FFFFFF">
	<td width="20%" align="left" valign="top" class="tableLabel">
	Comments
	</td>
	<td width="80%" align="left" valign="top" class="sidebar">
	<p>Examples:</p>
	<blockquote>
	  <p class="tableBlockquote">The Hoagy Carmichael Collection</p>
	  <p class="tableBlockquote">The Louisiana Purchase: A Heritage Explored</p>
	</blockquote></td>
	</tr>
	</table>
              <p align="center"><strong><span class="back">(back to <a href="#top">top</a>)</span></strong></p>

             <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="collection_alternative">
                <tr>
                  <td class="tableLabel" width="15%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"> <a name="collection_alternative"></a>dcterms:alternative</td>
                </tr>
                <tr>
                  <td class="tableLabel" width="20%" valign="top" align="left"> Label </td>
                  <td class="sidebar" width="80%" valign="top" align="left"> Alternative title</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="80%" align="left" valign="top" class="sidebar"><p>An alternative name for the resource.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding
                    Scheme </td>
                  <td align="left" valign="top" class="sidebar"> n/a</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Optional </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 0, Maximum:
                    unbounded</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar">n/a</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" align="left" valign="top" class="tableLabel"> Comments </td>
					<td width="80%" align="left" valign="top" class="sidebar">
					<p>Example:</p>
					<blockquote>
					<p class="tableBlockquote">Calisphere </p>
					</blockquote></td>
                </tr>
            </table>              <p align="center"><strong><span class="back">(back
                    to <a href="#top">top</a>)</span></strong></p>


              <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="collection_identifier">
                <tr>
                  <td class="tableLabel" width="15%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"> <a name="collection_identifier"></a>dc:identifier</td>
                </tr>
                <tr>
                  <td class="tableLabel" width="20%" valign="top" align="left"> Label </td>
                  <td class="sidebar" width="80%" valign="top" align="left"> Identifier
                    (<em>not displayed</em>)</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="80%" align="left" valign="top" class="sidebar"><p>The
                      unique key for the digital collection.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding
                    Scheme </td>
                  <td align="left" valign="top" class="sidebar"> n/a</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Mandatory </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 1, Maximum:
                    1</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar">n/a</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" align="left" valign="top" class="tableLabel"> Comments </td>
                  <td width="80%" align="left" valign="top" class="sidebar">
                    <p>This element is used internally only.</p>
                  </td>
                </tr>
            </table>              <p align="center"><strong><span class="back">(back
                    to <a href="#top">top</a>)</span></strong></p>
              <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="collection_URL">
                <tr>
                  <td class="tableLabel" width="15%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"> <a name="collection_isLocatedAt" id="collection_isLocatedAt"></a>cld:isLocatedAt</td>
                </tr>
                <tr>
                  <td class="tableLabel" width="20%" valign="top" align="left"> Label </td>
                  <td class="sidebar" width="80%" valign="top" align="left">Digital
                    Collection URL</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="80%" align="left" valign="top" class="sidebar"><p>The
                      URL where an end user can access the digital collection
                      / primary entry point for the digital collection.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding
                    Scheme </td>
                  <td align="left" valign="top" class="sidebar"> Uniform Resource
                    Identifier (URI)</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Mandatory </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 1, Maximum:
                    unbounded</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar">cld:isAvailableAt</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" align="left" valign="top" class="tableLabel"> Comments </td>
                  <td width="80%" align="left" valign="top" class="sidebar">
                    <p>Example:</p>
                    <blockquote>
                      <p class="blockquote"><span class="tableBlockquote">http://www.rochester.lib.ny.us/rochimag/</span><br>
                      </p>
                  </blockquote>
				  </td>
                </tr>
            </table>              

              <p align="center"><strong><span class="back">(back to <a href="#top">top</a>)</span></strong></p>
              <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="collection_creator">
                <tr>
                  <td class="tableLabel" width="15%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"> <a name="collection_creator"></a>dc:creator</td>
                </tr>
                <tr>
                  <td class="tableLabel" width="20%" valign="top" align="left"> Label </td>
                  <td class="sidebar" width="80%" valign="top" align="left"> Creator</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="80%" align="left" valign="top" class="sidebar"><p>An
                      entity who gathers (or gathered) the items in a collection together.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding
                    Scheme </td>
                  <td align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">
                    <p>n/a, but use of LC Name Authorities is recommended where possible.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Optional</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 0, Maximum:
                    unbounded</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar">n/a</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="108" align="left" valign="top" class="tableLabel"> Comments </td>
                  <td width="80%" align="left" valign="top" bgcolor="#FFFFFF" class="sidebar"><p>Example:</p>
                    <blockquote>
                      <p class="blockquote"><span class="tableBlockquote">Whitman, Walt, 1819-1892</span><br>
                      </p>
                  </blockquote>
                  </td>
                </tr>
              </table>


			<p align="center"><strong><span class="back">(back to <a href="#top">top</a>)</span></strong></p>
              <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="collection_interactivity">
                <tr>
                  <td class="tableLabel" width="15%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"> <a name="collection_interactivity"></a>imls:interactivity</td>
                </tr>
                <tr>
                  <td class="tableLabel" width="20%" valign="top" align="left"> Label </td>
                  <td class="sidebar" width="80%" valign="top" align="left"> Interaction
                    with Digital Collection</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="80%" align="left" valign="top" class="sidebar"><p>An
                      indication of how a user can interact with the digital
                      collection, such as searching, browsing, etc.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding
                    Scheme </td>
                  <td align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">
                    <p>n/a, though the IMLS DCC project has developed a list of often
                      used terms for use on the collection registry form.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Optional</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 0, Maximum:
                    unbounded</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar">n/a</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="108" align="left" valign="top" class="tableLabel"> Comments </td>
                  <td width="80%" align="left" valign="top" bgcolor="#FFFFFF" class="sidebar"><p>Examples:</p>
                      <blockquote>
                        <p class="tableBlockquote">Search</p>
                        <p class="tableBlockquote">Exhibit</p>
                      </blockquote>
                  </td>
                </tr>
              </table>
              <p align="center"><strong><span class="back">(back to <a href="#top">top</a>)</span></strong></p>
              <p></p>
              <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="collection_itemType">
                <tr>
                  <td class="tableLabel" width="15%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"> <a name="collection_type"></a>cld:itemType</td>
                </tr>
                <tr>
                  <td class="tableLabel" width="20%" valign="top" align="left"> Label </td>
                  <td class="sidebar" width="80%" valign="top" align="left"> Objects
                    Represented</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="80%" align="left" valign="top" class="sidebar"><p>The
                      name of the object(s) or resource(s) represented by the
                      digital item(s) in the collection.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding
                    Scheme </td>
                  <td align="left" valign="top" class="sidebar"> n/a, but use of
                    the LC TGM II (<a href="http://www.loc.gov/rr/print/tgm2/">LC
                    Thesaurus for Graphic Materials II: Genre and Physical Characteristics
                    Terms</a>) is recommended where possible.</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Mandatory </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 1, Maximum:
                    unbounded</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar">n/a</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" align="left" valign="top" class="tableLabel"> Comments </td>
                  <td width="80%" align="left" valign="top" class="sidebar"><p>Use
                      more specific terms than the DCMI Type list (image, text,
                      etc.). Do not use this element for the digital format of
                      the item (such as .jpg)</p>
                    <p>Examples:</p>
                    <blockquote>
                    <p class="tableBlockquote">Periodical illustrations</p>
                      <p class="blockquote"><span class="tableBlockquote">Photographic prints</span><br>
                      </p>
                    </blockquote>
                  </td>
                </tr>
            </table>              

              <p align="center"><strong><span class="back">(back to <a href="#top">top</a>)</span></strong></p>
              <p></p>
              <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="collection_type">
                <tr>
                  <td class="tableLabel" width="15%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"> <a name="collection_type"></a>dc:type</td>
                </tr>
                <tr>
                  <td class="tableLabel" width="20%" valign="top" align="left"> Label </td>
                  <td class="sidebar" width="80%" valign="top" align="left"> <em>(not displayed)</em></td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="80%" align="left" valign="top" class="sidebar"><p>The nature or genre of the resource, i.e. dcmitype:Collection.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding
                    Scheme </td>
                  <td align="left" valign="top" class="sidebar"> Value string must be "collection" or left blank. </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Mandatory </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 1, Maximum: 1</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar">n/a</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" align="left" valign="top" class="tableLabel"> Comments </td>
                  <td width="80%" align="left" valign="top" class="sidebar"><p>If describing a collection, this field must contain "collection".</p>
                  </td>
                </tr>
            </table>


			<p align="center"><strong><span class="back">(back to <a href="#top">top</a>)</span></strong></p>
              <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="collection_format">
                <tr>
                  <td class="tableLabel" width="15%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"> <a name="collection_format"></a>cld:itemFormat</td>
                </tr>
                <tr>
                  <td class="tableLabel" width="20%" valign="top" align="left"> Label </td>
                  <td class="sidebar" width="80%" valign="top" align="left"> Format
                    of Digital Items</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="27" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="80%" align="left" valign="top" class="sidebar"><p>The
                      format(s) of the digital items within the collection.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding
                    Scheme </td>
                  <td align="left" valign="top" class="sidebar"> <a href="http://www.isi.edu/in-notes/iana/assignments/media-types/media-types">IMT
                      (Internet Media Type)</a></td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Mandatory </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 1, Maximum:
                    unbounded</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar">n/a</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" align="left" valign="top" class="tableLabel"> Comments </td>
                  <td width="80%" align="left" valign="top" class="sidebar"><p>Use
                      the first level of the Media Type (i.e. image, text, audio,
                      video, application) if you cannot find the specific media
                      type for your digital items.</p>
                    <p>Examples:</p>
                    <blockquote>
                      <p class="tableBlockquote">image/jpg</p>
                      <p class="tableBlockquote">audio</p>
                      <p class="blockquote"><span class="tableBlockquote">application/pdf</span><br>
                      </p>
                    </blockquote>
                  </td>
                </tr>
            </table>              
              <p align="center"><strong><span class="back">(back to <a href="#top">top</a>)</span></strong></p>
              <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="collection_language">
                <tr>
                  <td class="tableLabel" width="15%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"> <a name="collection_language"></a>dc:language</td>
                </tr>
                <tr>
                  <td class="tableLabel" width="20%" valign="top" align="left"> Label </td>
                  <td class="sidebar" width="80%" valign="top" align="left"> Language</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="80%" align="left" valign="top" class="sidebar"><p>If
                      textual, the language(s) of the items in the digital collection.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding
                    Scheme </td>
                  <td align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">
                    <p>ISO 639-2: See <a href="http://www.loc.gov/standards/iso639-2/englangn.html">http://www.loc.gov/standards/iso639-2/englangn.html</a>.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Optional</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 0, Maximum:
                    unbounded</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar">n/a</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" align="left" valign="top" class="tableLabel"> Comments </td>
                  <td width="80%" align="left" valign="top" class="sidebar"><p>The
                      element is used to describe primarily collections containing
                      textual items.</p>
                      <p>Examples:</p>
                      <blockquote>
                        <p class="tableBlockquote">eng</p>
                        <p class="tableBlockquote">fre</p>
                      </blockquote>
                  </td>
                </tr>
              </table>
              <p align="center"><strong></strong></p>              
              <p align="center"><strong><span class="back">(back to <a href="#top">top</a>)</span></strong></p>
              <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="collection_extent">
                <tr>
                  <td class="tableLabel" width="15%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"> <a name="collection_extent"></a>dcterms:extent</td>
                </tr>
                <tr>
                  <td class="tableLabel" width="20%" valign="top" align="left"> Label </td>
                  <td class="sidebar" width="80%" valign="top" align="left"> Size
                    of collection</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="80%" align="left" valign="top" class="sidebar"><p>The
                      number of digital items within the collection</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding
                    Scheme </td>
                  <td align="left" valign="top" class="sidebar"> n/a</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Optional</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 0, Maximum:
                    unbounded</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar">dc:format</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" align="left" valign="top" class="tableLabel"> Comments </td>
                  <td width="80%" align="left" valign="top" bgcolor="#FFFFFF" class="sidebar"><p>When
                      possible use separate counts for different types of items.</p>
                    <p>Examples:</p>                    <blockquote class="tableBlockquote">
                                          <p class="blockquote"><em>150 photographs;
                                            300 books</em></p>
                                          <p class="blockquote"><em>25,000 images</em></p>
                    </blockquote>
                  </td>
                </tr>
            </table>
              <p align="center"><strong><span class="back">(back to <a href="#top">top</a>)</span></strong></p>
              <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="collection_accrualPeriodicity">
                <tr>
                  <td class="tableLabel" width="15%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"> <a name="collection_accrualPeriodicity" id="collection_accrualPeriodicity"></a>dcterms:accrualPeriodicity</td>
                </tr>
                <tr>
                  <td class="tableLabel" width="20%" valign="top" align="left"> Label </td>
                  <td class="sidebar" width="80%" valign="top" align="left"> Frequency
                    of additions</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="80%" align="left" valign="top" class="sidebar"><p>A
                      statement of how often the digital collection is updated.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding
                    Scheme </td>
                  <td align="left" valign="top" bgcolor="#FFFFFF" class="sidebar"> <p>IMLS DCC project
                    terms:</p>
                    <ul>
                      <li class="table">Daily</li>
                      <li class="table">Weekly</li>
                      <li class="table">Monthly</li>
                      <li class="table">Yearly</li>
                      <li class="table">Irregularly</li>
                      <li class="table">No longer adding</li>
                    </ul>                    </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Optional</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 0, Maximum:
                    unbounded</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar">n/a</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" align="left" valign="top" class="tableLabel"> Comments </td>
                  <td width="80%" align="left" valign="top" class="sidebar"><p>This
                      element is meant to indicate whether the items are actively
                      added to the collection.</p>
                      <p>Examples:</p>
                      <blockquote>
                        <p class="tableBlockquote">Irregularly</p>
                        <p class="tableBlockquote">No longer adding</p>
                    </blockquote>
                  </td>
                </tr>
            </table>            <p align="center"><strong><span class="back">(back to <a href="#top">top</a>)</span></strong></p>
            <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="collection_supplement">
              <tr>
                <td class="tableLabel" width="15%" valign="top" align="left"> Name </td>
                <td class="sidebar" width="85%" valign="top" align="left"> <a name="collection_supplement"></a>imls:supplement</td>
              </tr>
              <tr>
                <td class="tableLabel" width="20%" valign="top" align="left"> Label </td>
                <td class="sidebar" width="80%" valign="top" align="left"> Supplementary
                  Materials</td>
              </tr>
              <tr class="local" bgcolor="#FFFFFF">
                <td width="20%" align="left" valign="top" class="tableLabel"> Definition </td>
                <td width="80%" align="left" valign="top" class="sidebar"><p>Additional
                    materials included alongside the digital collection which
                    explain, incorporate, or otherwise make use of the collection.</p>
                </td>
              </tr>
              <tr class="local" bgcolor="#FFFFFF">
                <td align="left" valign="top" class="tableLabel"> Uses Encoding
                  Scheme </td>
                <td align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">
                  <p>n/a, though the IMLS DCC project has developed a list of often
                    used terms for use on the collection registry form.</p>
                </td>
              </tr>
              <tr class="local" bgcolor="#FFFFFF">
                <td align="left" valign="top" class="tableLabel"> Obligation </td>
                <td align="left" valign="top" class="sidebar"> Optional</td>
              </tr>
              <tr class="local" bgcolor="#FFFFFF">
                <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                <td align="left" valign="top" class="sidebar"> Minimum: 0, Maximum:
                  unbounded</td>
              </tr>
              <tr class="local" bgcolor="#FFFFFF">
                <td align="left" valign="top" class="tableLabel">Refines</td>
                <td align="left" valign="top" class="sidebar">dc:relation</td>
              </tr>
              <tr class="local" bgcolor="#FFFFFF">
                <td width="20%" height="131" align="left" valign="top" class="tableLabel"> Comments </td>
                <td width="80%" align="left" valign="top" bgcolor="#FFFFFF" class="sidebar"><p>Examples:</p>
                    <blockquote>
                      <p class="tableBlockquote">Atlas</p>
                      <p class="tableBlockquote">Teacher and student resources</p>
                      <p class="tableBlockquote">Bibliography</p>
                    </blockquote>
                </td>
              </tr>
            </table>
            <p align="center"><strong><span class="back">(back to <a href="#top">top</a>)</span></strong></p>            
            <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="collection_audience">
                <tr>
                  <td class="tableLabel" width="15%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"> <a name="collection_audience"></a>dcterms:audience</td>
                </tr>
                <tr>
                  <td class="tableLabel" width="20%" valign="top" align="left"> Label </td>
                  <td class="sidebar" width="80%" valign="top" align="left"> Audience</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="80%" align="left" valign="top" class="sidebar"><p>The
                      primary audience(s) of the items in the collection.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding
                    Scheme </td>
                  <td align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">
                    <p>n/a, though the IMLS DCC project has developed a list of often
                      used terms for use on the collection registry form.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Optional</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 0, Maximum:
                    unbounded</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar">n/a</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" align="left" valign="top" class="tableLabel"> Comments </td>
                  <td width="80%" align="left" valign="top" class="sidebar"><p>Use
                      to indicate target audiences, if any, of the collection.</p>
                      <p>Examples:</p>
                      <blockquote>
                        <p class="tableBlockquote">Undergraduate Students </p>
                        <p class="tableBlockquote">K-12 Teachers and Administrators</p>
                      </blockquote>
                  </td>
                </tr>
            </table>            <p align="center"><strong><span class="back">(back to <a href="#top">top</a>)</span></strong></p>
              <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="collection_accessRights">
                <tr>
                  <td class="tableLabel" width="15%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"> <a name="collection_accessRights"></a>dcterms:accessRights</td>
                </tr>
                <tr>
                  <td class="tableLabel" width="20%" valign="top" align="left"> Label </td>
                  <td class="sidebar" width="80%" valign="top" align="left"> Access
                    Restrictions</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="80%" align="left" valign="top" class="sidebar"><p>A
                      statement of any access restrictions placed on the digital
                      collection.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding
                    Scheme </td>
                  <td align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">
                    <p>n/a</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Optional</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 0, Maximum:
                    unbounded</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar">dc:rights</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" align="left" valign="top" class="tableLabel"> Comments </td>
                  <td width="80%" align="left" valign="top" class="sidebar"><p>If
                      there are access restrictions on your digital collection,
                      please indicate them here.</p>
                      <p>Examples:</p>
                      <blockquote>
                        <p class="tableBlockquote">Portions of the digital collection
                          are limited to the University's faculty, staff, and
                        students.</p>
                    </blockquote>
                  </td>
                </tr>
            </table>              
              <p align="center"><strong><span class="back">(back to <a href="#top">top</a>)</span></strong></p>
              <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="collection_rights">
                <tr>
                  <td class="tableLabel" width="15%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"> <a name="collection_rights"></a>dc:rights</td>
                </tr>
                <tr>
                  <td class="tableLabel" width="20%" valign="top" align="left"> Label </td>
                  <td class="sidebar" width="80%" valign="top" align="left"> Rights</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="80%" align="left" valign="top" class="sidebar"><p>Information
                      about rights (copyrights, etc.) held in and over the digital
                      collection.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding
                    Scheme </td>
                  <td align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">
                    <p>n/a</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Optional</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 0, Maximum:
                    unbounded</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar">n/a</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" align="left" valign="top" class="tableLabel"> Comments </td>
                  <td width="80%" align="left" valign="top" bgcolor="#FFFFFF" class="sidebar"><p>Can
                      include a URL linking to a rights page.</p>
                      <p>Examples:</p>
                      <blockquote>
                        <p class="tableBlockquote">You will be able to search,
                          select and download digital files for educational use.
                        Commercial use is strictly prohibited without permission.</p>
                        <p class="tableBlockquote">See http://palmm.fcla.edu/lfnh/copyright.html
                        for copyright and conditions of use information.</p>
                    </blockquote>
                  </td>
                </tr>
            </table>              
              <p align="center"><strong><span class="back">(back to <a href="#top">top</a>)</span></strong></p>
              <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="collection_collectionPolicy">
                <tr>
                  <td class="tableLabel" width="15%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"> <a name="collection_accrualPolicy" id="collection_accrualPolicy"></a>dcterms:accrualPolicy</td>
                </tr>
                <tr>
                  <td class="tableLabel" width="20%" valign="top" align="left"> Label </td>
                  <td class="sidebar" width="80%" valign="top" align="left"> Collection
                    Development Policy</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="80%" align="left" valign="top" class="sidebar"><p>A
                      statement of the
                      collection development policy for the digital collection.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding
                    Scheme </td>
                  <td align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">
                    <p>n/a</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Optional</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 0, Maximum:
                    unbounded</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar"><p>n/a</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" align="left" valign="top" class="tableLabel"> Comments </td>
                  <td width="80%" align="left" valign="top" bgcolor="#FFFFFF" class="sidebar"><p>Can
                      include a URL linking to a collection development policy
                      page.</p>
                      <p>Examples:</p>
                    <blockquote>
                      <p class="tableBlockquote">http://www.cdpheritage.org/about/policy_collection.html</p>
                    </blockquote>
                  </td>
                </tr>
            </table>
              <p align="center"><strong><span class="back">(back to <a href="#top">top</a>)</span></strong></p>
              <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="collection_isAvailableAt">
                <tr>
                  <td class="tableLabel" width="15%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"> <a name="collection_isAccessedVia" id="collection_isAccessedVia"></a>cld:isAccessedVia</td>
                </tr>
                <tr>
                  <td class="tableLabel" width="20%" valign="top" align="left"> Label </td>
                  <td class="sidebar" width="80%" valign="top" align="left"> Alternative
                    Access</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="80%" align="left" valign="top" class="sidebar"><p>Services
                      beyond the URL that provides access to the digital collection,
                      such as an OAI data provider or Z39.50 target.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding
                    Scheme </td>
                  <td align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">
                    <p>n/a</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Optional</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 0, Maximum:
                    unbounded</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar">dc:relation</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="77" align="left" valign="top" class="tableLabel"> Comments </td>
                  <td width="80%" align="left" valign="top" bgcolor="#FFFFFF" class="sidebar"><p>Examples:</p>
                      <blockquote>
                        <p class="tableBlockquote">OAI Data Provider: http://www.lib.unc.edu/cgi-bin/oai/das/das/das/oai.pl
                        ; set=6</p>
                    </blockquote>
                  </td>
                </tr>
              </table>

              <p align="center"><strong><span class="back">(back to <a href="#top">top</a>)</span></strong></p>
              <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="collection_provenance">
                <tr>
                  <td class="tableLabel" width="15%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"> <a name="collection_provenance"></a>dcterms:provenance</td>
                </tr>
                <tr>
                  <td class="tableLabel" width="20%" valign="top" align="left"> Label </td>
                  <td class="sidebar" width="80%" valign="top" align="left"> Custodial History</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="80%" align="left" valign="top" class="sidebar"><p>A statement of any changes in ownership and custody of the resource since its creation that are significant for its authenticity, integrity, and interpretation.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding
                    Scheme </td>
                  <td align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">
                    <p>n/a.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Optional</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 0, Maximum:
                    unbounded</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar">n/a</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="98" align="left" valign="top" class="tableLabel"> Comments </td>
                  <td width="80%" align="left" valign="top" bgcolor="#FFFFFF" class="sidebar"><p>Examples:</p>
                      <blockquote>
                        <p class="tableBlockquote">This collection was created by an LSTA grant from the state of Illinois.</p>
                      </blockquote>
                  </td>
                </tr>
              </table>              

              <p align="center"><strong><span class="back">(back to <a href="#top">top</a>)</span></strong></p>
              <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="collection_dateItemsCreated">
                <tr>
                  <td class="tableLabel" width="15%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"> <a name="collection_dateItemsCreated"></a>cld:dateItemsCreated</td>
                </tr>
                <tr>
                  <td class="tableLabel" width="20%" valign="top" align="left"> Label </td>
                  <td class="sidebar" width="80%" valign="top" align="left"> Date Items Created</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="80%" align="left" valign="top" class="sidebar"><p>A range of dates over which the individual items within the collection were created.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding
                    Scheme </td>
                  <td align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">
                    <p>n/a</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Optional</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 0, Maximum:
                    unbounded</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar">dc:date</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="98" align="left" valign="top" class="tableLabel"> Comments </td>
                  <td width="80%" align="left" valign="top" bgcolor="#FFFFFF" class="sidebar"><p>Examples:</p>
                      <blockquote>
                        <p class="tableBlockquote"><em>2000-2009</em></p>
                        <p class="tableBlockquote"><em>2006</em></p>                        
						</blockquote>
                  </td>
                </tr>
              </table>  


              <p align="center"><strong><span class="back">(back to <a href="#top">top</a>)</span></strong></p>
              <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="collection_metadataSchema">
                <tr>
                  <td class="tableLabel" width="15%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"> <a name="collection_metadataSchema"></a>imls:metadataSchema</td>
                </tr>
                <tr>
                  <td class="tableLabel" width="20%" valign="top" align="left"> Label </td>
                  <td class="sidebar" width="80%" valign="top" align="left"> Metadata
                    schema used</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="80%" align="left" valign="top" class="sidebar"><p>The
                      name of the metadata standard(s) used, if any, to describe
                      the items in the digital collection.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding
                    Scheme </td>
                  <td align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">
                    <p>n/a, though the IMLS DCC project has developed a list of often
                    used terms for use on the collection registry form.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Optional</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 0, Maximum:
                    unbounded</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar">n/a</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="98" align="left" valign="top" class="tableLabel"> Comments </td>
                  <td width="80%" align="left" valign="top" bgcolor="#FFFFFF" class="sidebar"><p>Examples:</p>
                      <blockquote>
                        <p class="tableBlockquote">Dublin Core</p>
                        <p class="tableBlockquote">MARC</p>
                      </blockquote>
                  </td>
                </tr>
              </table>              
              <p align="center"><strong><span class="back">(back to <a href="#top">top</a>)</span></strong></p>
              <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="collection_notes">
                <tr>
                  <td class="tableLabel" width="15%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"> <a name="collection_notes"></a>imls:notes</td>
                </tr>
                <tr>
                  <td class="tableLabel" width="20%" valign="top" align="left"> Label </td>
                  <td class="sidebar" width="80%" valign="top" align="left"> Notes</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="80%" align="left" valign="top" class="sidebar"><p>A
                      statement of any additional information about the digital
                      collection.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding
                    Scheme </td>
                  <td align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">
                    <p>n/a</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Optional</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 0, Maximum:
                    unbounded</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar">n/a</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="120" align="left" valign="top" class="tableLabel"> Comments </td>
                  <td width="80%" align="left" valign="top" bgcolor="#FFFFFF" class="sidebar"><p>This
                      element is to be used to put information that does not
                      fit well in other elements.</p>
                    <blockquote>
                      <p>Example:</p>
                      <p class="tableBlockquote"><em>This digital collection and web site will be completed
                          in September 2004.</em></p>
                    </blockquote>                    </td>
                </tr>
              </table>              
              <p>&nbsp;</p>
              <p><strong><a name="collection_topical"></a>Topical attributes: <span class="back">(back
              to <a href="#top">top</a>)</span></strong></p>              <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="collection_subject">
                <tr>
                  <td class="tableLabel" width="15%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"> <a name="collection_subject"></a>dc:subject</td>
                </tr>
                <tr>
                  <td class="tableLabel" width="20%" valign="top" align="left"> Label </td>
                  <td class="sidebar" width="80%" valign="top" align="left"> Topic</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="34" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="80%" align="left" valign="top" class="sidebar"><p>Terms
                      that describe the overall topical content of the items
                      in the digital collection.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding
                    Scheme </td>
                  <td align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">
                    <p>Requires at least one heading from <a href="http://search.thegateway.org/">GEM</a> (Gateway
                      to Educational Materials). May use other terms as desired.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Required</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 1, Maximum:
                    unbounded</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar">n/a</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="261" align="left" valign="top" class="tableLabel"> Comments </td>
                  <td width="80%" align="left" valign="top" bgcolor="#FFFFFF" class="sidebar"><p>The
                      IMLS DCC project chose GEM subject headings because they
                      are very broad and not overly complicated. We also felt
                      that the GEM subject headings could be used by a wide variety
                      of communities. Collections are encouraged to use additional
                      terms from controlled vocabularies and keywords. </p>
                    <blockquote>
                      <p>Examples:</p>
                      <p class="tableBlockquote"><em>Social Studies (GEM)</em></p>
                      <p class="tableBlockquote"><em>Current events/issues (GEM)</em></p>
                      <p class="tableBlockquote"><em>Work Projects Administration. Museum Extension Project</em></p>
                    </blockquote></td>
                </tr>
              </table>              
              <p align="center"><strong><span class="back">(back to <a href="#top">top</a>)</span></strong></p>
              <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="collection_description">
                <tr>
                  <td class="tableLabel" width="15%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"> <a name="collection_abstract" id="collection_abstract"></a>dcterms:abstract</td>
                </tr>
                <tr>
                  <td class="tableLabel" width="20%" valign="top" align="left"> Label </td>
                  <td class="sidebar" width="80%" valign="top" align="left"> Description</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="34" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="80%" align="left" valign="top" class="sidebar"><p>A
                      summary of the content and topics of the digital collection.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding
                    Scheme </td>
                  <td align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">
                    <p>n/a</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Required</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 1, Maximum:
                    unbounded</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar">dc:description</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="251" align="left" valign="top" class="tableLabel"> Comments </td>
                  <td width="80%" align="left" valign="top" bgcolor="#FFFFFF" class="sidebar"><p>The
                      IMLS Digital Collection Registry will display the first
                      few lines of each description in the brief display of collections.
                      Free text searching will also be available.</p>                  <blockquote>
                    <p>Examples:</p>
                        <p class="tableBlockquote"><em>Museums and the Online Archive of California (MOAC)
                          provides access to cultural collections held by museums,
                        archives, and libraries throughout the state of California.</em></p>
                        <p class="tableBlockquote"><em>The Linking Florida's Natural Heritage (LFNH)
                            web site allows students, researchers, and the public
                            to query
                          museum specimen databases, library catalogs, and other
                          citation databases for taxonomic and topical information.
                          In addition, scientific experts selected 200 texts
                          for digitization. This core collection on Florida species
                        and ecosystems is available through the LFNH site.</em></p>
                        </blockquote>
                  </td>
                </tr>
              </table>              
              <p align="center"><strong><span class="back">(back to <a href="#top">top</a>)</span></strong></p>
              <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="collection_spatial">
                <tr>
                  <td class="tableLabel" width="15%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"> <a name="collection_spatial"></a>dcterms:spatial</td>
                </tr>
                <tr>
                  <td class="tableLabel" width="20%" valign="top" align="left"> Label </td>
                  <td class="sidebar" width="80%" valign="top" align="left"> Geographic
                    Coverage</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="34" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="80%" align="left" valign="top" class="sidebar"><p>A
                      place(s) or area(s) associated with most or all of the
                      items in the digital collection.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding
                    Scheme </td>
                  <td align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">
                    <p>The use of the <a href="http://www.getty.edu/research/conducting_research/vocabularies/tgn/">Getty
                        Thesaurus of Geographic Terms</a> is strongly
                        recommended.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Optional</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 0, Maximum:
                    unbounded</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar">dc:coverage</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="131" align="left" valign="top" class="tableLabel"> Comments </td>
                  <td width="80%" align="left" valign="top" bgcolor="#FFFFFF" class="sidebar"><p>The
                      IMLS DCC project has provided a list from the top hierarchy
                      of the Getty TGN. Collections are encouraged to add refinements
                      to this from the Getty Thesaurus.</p>
                    <blockquote>
                        <p>Examples:</p>
                        <p class="tableBlockquote"><em>United States.</em></p>
                        <p class="tableBlockquote"><em>Mountain States.</em></p>
                        <p class="tableBlockquote"><em>Colorado (state)</em></p>
                    </blockquote>
                  </td>
                </tr>
              </table>              
              <p align="center"><strong><span class="back">(back to <a href="#top">top</a>)</span></strong></p>
              <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="collection_temporal">
                <tr>
                  <td class="tableLabel" width="15%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"> <a name="collection_temporal"></a>dcterms:temporal</td>
                </tr>
                <tr>
                  <td width="20%" height="27" align="left" valign="top" class="tableLabel"> Label </td>
                  <td class="sidebar" width="80%" valign="top" align="left"> Temporal
                    Coverage</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="34" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="80%" align="left" valign="top" class="sidebar"><p>A
                      time period(s) associated with most or all of the items
                      in the digital collection.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding
                    Scheme </td>
                  <td align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">
                    <p>n/a,
                      though the IMLS DCC project has developed a list of often
                    used terms for use on the collection registry form. </p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Optional</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 0, Maximum:
                    unbounded</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar">dc:coverage</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="131" align="left" valign="top" class="tableLabel"> Comments </td>
                  <td width="80%" align="left" valign="top" bgcolor="#FFFFFF" class="sidebar"><p>Projects should use spans of years
                          rather than names of periods. (i.e. <em>1861-1865</em> instead
                        of <em>Civil War</em>).</p>
                    <blockquote>
                        <p>Examples:</p>
                        <p class="tableBlockquote"><em>1900-1924</em></p>
                        <p class="tableBlockquote"><em>1939-1945</em></p>
                    </blockquote>
                  </td>
                </tr>
              </table>
              <p align="left">&nbsp;</p>
              <p align="left"><strong><a name="collection_relcoll"></a>Attributes describing relationships with
                  other collections:<span class="back"> (back
                to <a href="#top">top</a>)</span></strong></p>              <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="collection_isPartOf">
                <tr>
                  <td class="tableLabel" width="15%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"> <a name="collection_isPartOf"></a>dcterms:isPartOf</td>
                </tr>
                <tr>
                  <td width="20%" height="27" align="left" valign="top" class="tableLabel"> Label</td>
                  <td class="sidebar" width="80%" valign="top" align="left">Parent
                  Collection </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="34" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="80%" align="left" valign="top" class="sidebar"><p>Another
                      digital collection that contains the current digital
                      collection.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding
                    Scheme </td>
                  <td align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">
                    <p>n/a</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Optional</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 0, Maximum:
                    unbounded</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar">dc:relation</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="131" align="left" valign="top" class="tableLabel"> Comments </td>
                  <td width="80%" align="left" valign="top" bgcolor="#FFFFFF" class="sidebar"><p>The
                      parent collection will be automatically generated through
                      the creation of sub-collections.</p>
                    <blockquote>
                        <p>Examples:</p>
                        <p class="tableBlockquote"><em>Springfield College YMCA Historical Image Collection</em></p>
                    </blockquote>
                  </td>
                </tr>
              </table>              
              <p align="center"><strong><span class="back">(back to <a href="#top">top</a>)</span></strong></p>
              <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="collection_hasPart">
                <tr>
                  <td class="tableLabel" width="15%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"> <a name="collection_hasPart"></a>dcterms:hasPart</td>
                </tr>
                <tr>
                  <td width="20%" height="27" align="left" valign="top" class="tableLabel"> Label </td>
                  <td class="sidebar" width="80%" valign="top" align="left"> Sub-Collection</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="34" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="80%" align="left" valign="top" class="sidebar"><p>Any
                      other collection(s) contained within the current collection.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding
                    Scheme </td>
                  <td align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">
                    <p>n/a</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Optional</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 0, Maximum:
                    unbounded</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar">dc:relation</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="131" align="left" valign="top" class="tableLabel"> Comments </td>
                  <td width="80%" align="left" valign="top" bgcolor="#FFFFFF" class="sidebar"><p>The
                      IMLS DCC project recommends that sub-collections use a
                      URL that is distinct from that of the parent collection.
                      This
                      will help users distinguish between various digital collections
                      (and avoid confusion when they are directed to the same
                      URL multiple times).</p>
                    <blockquote>
                      <p>Examples:</p>
                      <p class="tableBlockquote"><em>YMCA Training School Image Collection </em></p>
                      <p class="tableBlockquote"><em>YMCA Portrait
                      Collection </em></p>
                      <p><span class="tableBlockquote"><em>YMCA World War I Image Collection</em></span><em> </em></p>
                    </blockquote></td>
                </tr>
              </table>              
              <p align="center"><strong><span class="back">(back to <a href="#top">top</a>)</span></strong></p>
              <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="collection_source">
                <tr>
                  <td class="tableLabel" width="15%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"> <a name="collection_source"></a>dc:source</td>
                </tr>
                <tr>
                  <td width="20%" height="27" align="left" valign="top" class="tableLabel"> Label </td>
                  <td class="sidebar" width="80%" valign="top" align="left"> Physical
                    Collection</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="34" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="80%" align="left" valign="top" class="sidebar"><p>The
                      physical collection(s) from which the current digital collection
                      is derived.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding
                    Scheme </td>
                  <td align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">
                    <p>n/a</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Optional</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 0, Maximum:
                    unbounded</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar">n/a</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="102" align="left" valign="top" class="tableLabel"> Comments </td>
                  <td width="80%" align="left" valign="top" bgcolor="#FFFFFF" class="sidebar"><p>A
                      place to indicate, if desired, the source collection(s)
                      of the digital collection.</p>
                      <blockquote>
                        <p>Examples:</p>
                        <p class="tableBlockquote"><em>Detroit News Photo Archive</em></p>
                    </blockquote>
                  </td>
                </tr>
              </table>
              <p align="center"><strong><span class="back">(back to <a href="#top">top</a>)</span></strong></p>
              <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="collection_relation">
                <tr>
                  <td class="tableLabel" width="15%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"> <a name="collection_relation"></a>dc:relation</td>
                </tr>
                <tr>
                  <td width="20%" height="27" align="left" valign="top" class="tableLabel"> Label </td>
                  <td class="sidebar" width="80%" valign="top" align="left"> Other
                    Associated Collections</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="34" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="80%" align="left" valign="top" class="sidebar"><p>Any
                      other collection(s) that is associated with
                      or complements the current collection.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding
                    Scheme </td>
                  <td align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">
                    <p>n/a</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Optional</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 0, Maximum:
                    unbounded</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar">n/a</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="131" align="left" valign="top" class="tableLabel"> Comments </td>
                  <td width="80%" align="left" valign="top" bgcolor="#FFFFFF" class="sidebar"><p>A
                      place to indicate digital collections that may be useful
                      in conjunction with the current collection. A list of these
                      digital collections
                      as well as other digital collections they have named -
                      will be created for projects to choose from on the collection
                      registry.</p>
                      <blockquote>
                        <p>Examples:</p>
                        <p class="tableBlockquote"><em>American Memory Project (Library of Congress)</em></p>
                      </blockquote>
                  </td>
                </tr>
              </table>              
              <p>&nbsp;</p>
              <p><strong><a name="collection_relother"></a>Attributes describing relationships with projects,
                  institutions, and administrators:<span class="back"> (back
                to <a href="#top">top</a>)</span></strong></p>
              <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="collection_creator">
                <tr>
                  <td class="tableLabel" width="15%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"> <p><a name="collection_project"></a>imls:project</p>
                  </td>
                </tr>
                <tr>
                  <td width="20%" height="27" align="left" valign="top" class="tableLabel"> Label </td>
                  <td class="sidebar" width="80%" valign="top" align="left"> National
                    Leadership Grant Project</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="34" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="80%" align="left" valign="top" class="sidebar"><p>The
                      project(s) which created the digital collection. [Links
                      to the Project Entity]</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding
                    Scheme </td>
                  <td align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">
                    <p>n/a</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Required</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 1, Maximum:
                    unbounded</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar"><p>n/a</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="64" align="left" valign="top" class="tableLabel"> Comments </td>
                  <td width="80%" align="left" valign="top" bgcolor="#FFFFFF" class="sidebar"><p>This
                      element is expressed through a relationship between the
                      collection and the project in the database. Projects may
                      choose to associate multiple projects with a collection.</p>
                  </td>
                </tr>
              </table>              
              <p align="center"><strong><span class="back">(back to <a href="#top">top</a>)</span></strong></p>
              <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="collection_publisher">
                <tr>
                  <td class="tableLabel" width="20%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"> <a name="collection_publisher"></a>dc:publisher</td>
                </tr>
                <tr>
                  <td width="20%" height="27" align="left" valign="top" class="tableLabel"> Label </td>
                  <td class="sidebar" width="85%" valign="top" align="left"> Hosting
                    Institution</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="34" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="85%" align="left" valign="top" class="sidebar"><p>The
                      institution which hosts (makes available) the digital collections.
                      [Links to the Institution Entity]</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding
                    Scheme </td>
                  <td align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">
                    <p>n/a</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Required</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 1, Maximum:
                    1</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar">n/a</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="46" align="left" valign="top" class="tableLabel"> Comments </td>
                  <td width="85%" align="left" valign="top" bgcolor="#FFFFFF" class="sidebar"><p>This
                      element is expressed through a relationship between the
                      collection and the institution in the database.</p>
                  </td>
                </tr>
              </table>              
              <p align="center"><strong><span class="back">(back to <a href="#top">top</a>)</span></strong></p>
              <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="collection_contributor">
                <tr>
                  <td class="tableLabel" width="20%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"> <a name="collection_contributor"></a>dc:contributor</td>
                </tr>
                <tr>
                  <td width="20%" height="27" align="left" valign="top" class="tableLabel"> Label </td>
                  <td class="sidebar" width="85%" valign="top" align="left"> Contributing
                    Institution</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="34" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="85%" align="left" valign="top" class="sidebar"><p>The
                      institution(s) which has contributed content to the digital
                      collection. [Links to the Institution Entity]</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding
                    Scheme </td>
                  <td align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">
                    <p>n/a</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Optional</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 0, Maximum:
                    unbounded</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar">n/a</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="46" align="left" valign="top" class="tableLabel"> Comments </td>
                  <td width="85%" align="left" valign="top" bgcolor="#FFFFFF" class="sidebar"><p>This
                      element is expressed through a relationship between the
                      collection and the institution in the database.</p>
                  </td>
                </tr>
              </table>
              <p align="center"><strong><span class="back">(back to <a href="#top">top</a>)</span></strong></p>
              <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="collection_managedBy">
                <tr>
                  <td class="tableLabel" width="20%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"> <a name="collection_managedBy"></a>imls:managedBy</td>
                </tr>
                <tr>
                  <td width="20%" height="27" align="left" valign="top" class="tableLabel"> Label </td>
                  <td class="sidebar" width="85%" valign="top" align="left"> Administrator</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="34" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="85%" align="left" valign="top" class="sidebar"><p>The
                      person who has primary responsibility for the digital collection.
                      [Link to the Adminsitrator Entity]</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding
                    Scheme </td>
                  <td align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">
                    <p>n/a</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Required</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 1, Maximum:
                    1</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar">dc:relation</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="46" align="left" valign="top" class="tableLabel"> Comments </td>
                  <td width="85%" align="left" valign="top" bgcolor="#FFFFFF" class="sidebar"><p>This
                      element is expressed through a relationship between the
                      collection and the administrator in the database.</p>
                  </td>
                </tr>
              </table>              <p>&nbsp;</p>
              <p><span class="Heading3">Project Entity</span> <span class="back">(back
                to <a href="#top">top</a>)</span></p>              <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="project_title">
                <tr>
                  <td class="tableLabel" width="20%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"> <a name="project_title"></a>dc:title</td>
                </tr>
                <tr>
                  <td width="20%" height="27" align="left" valign="top" class="tableLabel"> Label </td>
                  <td class="sidebar" width="85%" valign="top" align="left"> Project
                    Name</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="34" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="85%" align="left" valign="top" class="sidebar"><p>The
                      title of the IMLS Grant project associated
                      with the digital collection.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding
                    Scheme </td>
                  <td align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">
                    <p>n/a</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Required</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 1, Maximum:
                    1 (see comment below)</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar">n/a</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="120" align="left" valign="top" class="tableLabel"> Comments </td>
                  <td width="85%" align="left" valign="top" bgcolor="#FFFFFF" class="sidebar"><p>A
                      digital collection may have multiple projects associated
                      with it; however, each project may only have one title.</p>
                    <blockquote>
                      <p>Example:</p>
                      <p class="tableBlockquote"><em>The Urban Beat: The Detroit News Collection 1900-1980</em></p>
                    </blockquote>
                  </td>
                </tr>
              </table>
              <p align="center"><strong><span class="back">(back to <a href="#top">top</a>)</span></strong></p>
              <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="project_identifier">
                <tr>
                  <td class="tableLabel" width="15%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"> <a name="project_identifier"></a>dc:identifier</td>
                </tr>
                <tr>
                  <td width="20%" height="27" align="left" valign="top" class="tableLabel"> Label </td>
                  <td class="sidebar" width="80%" valign="top" align="left"> IMLS
                    Grant Number</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="34" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="80%" align="left" valign="top" class="sidebar"><p>The
                      IMLS Grant Number assigned to the project.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding
                    Scheme </td>
                  <td align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">IMLS
                    supplied</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Required</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 1, Maximum:
                    1 (see comment below)</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar">n/a</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="157" align="left" valign="top" class="tableLabel"> Comments </td>
                  <td width="80%" align="left" valign="top" bgcolor="#FFFFFF" class="sidebar"><p>A
                      digital collection may have multiple projects associated
                      with it; however, each project may only have one identifier.</p>
                      <blockquote>
                        <p>Examples:</p>
                        <p class="tableBlockquote"><em>LG-03-02-0068 </em></p>
                        <p class="tableBlockquote"><em>ND-10004</em></p>
                      </blockquote>
                  </td>
                </tr>
              </table>              
              <p align="center"><strong><span class="back">(back to <a href="#top">top</a>)</span></strong></p>              
              <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="project_URL">
                <tr>
                  <td class="tableLabel" width="15%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"><a name="project_isLocatedAt" id="project_isLocatedAt"></a>cld:isLocatedAt</td>
                </tr>
                <tr>
                  <td width="20%" height="27" align="left" valign="top" class="tableLabel"> Label </td>
                  <td class="sidebar" width="80%" valign="top" align="left"> Project
                    URL</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="34" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="80%" align="left" valign="top" class="sidebar"><p>The
                      URL where an end user can access the project web site.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding
                    Scheme </td>
                  <td align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">
                    <p>URI</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Optional</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 0, Maximum:
                    unbounded</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar">dc:relation</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="131" align="left" valign="top" class="tableLabel"> Comments </td>
                  <td width="80%" align="left" valign="top" bgcolor="#FFFFFF" class="sidebar"><p>The
                      project web site is in most cases distinct from the
                      collection web site. Often it is an &quot;About this Collection&quot;
                      or &quot;About the Project&quot; page. Inclusion of this
                      URL allows users to learn about the 'behind the scenes'
                      work.</p>
                      <blockquote>
                        <p>Examples:</p>
                        <p class="tableBlockquote"><em>http://africafocus.library.wisc.edu/project.htm</em> </p>
                    </blockquote>
                  </td>
                </tr>
              </table>              
              <p align="center"><strong><span class="back">(back to <a href="#top">top</a>)</span></strong></p>
              <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="project_administeredBy">
                <tr>
                  <td class="tableLabel" width="20%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"> <a name="project_administeredBy"></a>imls:administeredBy</td>
                </tr>
                <tr>
                  <td width="20%" height="27" align="left" valign="top" class="tableLabel"> Label </td>
                  <td class="sidebar" width="85%" valign="top" align="left"> Administering
                    Institution</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="34" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="85%" align="left" valign="top" class="sidebar"><p>The
                      institution which has administrative responsibility for
                      the project. [Links to the Institution Entity]</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding
                    Scheme </td>
                  <td align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">
                    <p>n/a</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Required</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 1, Maximum:
                    1</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar">dc:relation</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="51" align="left" valign="top" class="tableLabel"> Comments </td>
                  <td width="85%" align="left" valign="top" bgcolor="#FFFFFF" class="sidebar"><p>This
                      element is expressed through a relationship between the
                      project and the institution in the database.</p>
                  </td>
                </tr>
              </table>
              <p align="center"><strong><span class="back">(back to <a href="#top">top</a>)</span></strong></p>
              <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="project_participatedBy">
                <tr>
                  <td class="tableLabel" width="20%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"> <a name="project_participatedBy"></a>imls:participatedBy</td>
                </tr>
                <tr>
                  <td width="20%" height="27" align="left" valign="top" class="tableLabel"> Label </td>
                  <td class="sidebar" width="85%" valign="top" align="left"> Participating
                    Institution</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="34" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="85%" align="left" valign="top" class="sidebar"><p>The
                      institution(s) participating in the project either
                      formally (through a cooperative agreement) or informally.
                      [Links to the Institution Entity]</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding
                    Scheme </td>
                  <td align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">
                    <p>n/a</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Optional</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 0, Maximum:
                    unbounded</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar">dc:relation</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="49" align="left" valign="top" class="tableLabel"> Comments </td>
                  <td width="85%" align="left" valign="top" bgcolor="#FFFFFF" class="sidebar"><p>This
                      element is expressed through a relationship between the
                      project and the institution in the database.</p>
                  </td>
                </tr>
              </table>              <p align="center">&nbsp;</p>              <p><span class="Heading3">Institution Entity</span> <span class="back">(back
              to <a href="#top">top</a>)</span></p>
              <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="institution_title">
                <tr>
                  <td class="tableLabel" width="15%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"><a name="institution_FN" id="institution_FN"></a>vCard:FN</td>
                </tr>
                <tr>
                  <td width="20%" height="27" align="left" valign="top" class="tableLabel"> Label </td>
                  <td class="sidebar" width="80%" valign="top" align="left"> Institution
                    Name</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="34" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="80%" align="left" valign="top" class="sidebar"><p>The
                      name of the institution(s) associated with the digital
                      collection and project.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding
                    Scheme </td>
                  <td align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">
                    <p>n/a</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Required</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 1, Maximum:
                    unbounded</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td height="27" align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar">n/a</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="131" align="left" valign="top" class="tableLabel"> Comments </td>
                  <td width="80%" align="left" valign="top" bgcolor="#FFFFFF" class="sidebar"><p>The
                      institution names should be constructed with the parent
                      institution first and then the smaller sub-set of that
                      institution second (following AACR2 guidelines).</p>
                    <blockquote>
                      <p>Examples:</p>
                      <p><em>University of Wisconsin-Madison. Library. </em></p>
                      <p><em>Lower East Side Tenement Museum</em></p>
                      <p><em>University of Illinois at Urbana-Champaign. Digital
                      Imaging and Media Technology Initiative. </em></p>
                    </blockquote></td>
                </tr>
              </table>              
              <p align="center"><strong><span class="back">(back to <a href="#top">top</a>)</span></strong></p>
              <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="institution_identifier">
                <tr>
                  <td class="tableLabel" width="15%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"><a name="institution_uid" id="institution_uid"></a>vCard:UID</td>
                </tr>
                <tr>
                  <td width="20%" height="27" align="left" valign="top" class="tableLabel"> Label </td>
                  <td class="sidebar" width="80%" valign="top" align="left"> Identifier
                    (not displayed)</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="34" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="80%" align="left" valign="top" class="sidebar"><p>The
                      unique identifier for the institution</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding
                    Scheme </td>
                  <td align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">
                    <p>n/a</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Required</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 1, Maximum:
                    1</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td height="27" align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar">n/a</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="34" align="left" valign="top" class="tableLabel"> Comments </td>
                  <td width="80%" align="left" valign="top" bgcolor="#FFFFFF" class="sidebar"><p>Created
                      and maintained
                      by the IMLS DCC project.</p>
                  </td>
                </tr>
              </table>              
              <p align="center"><strong><span class="back">(back to <a href="#top">top</a>)</span></strong></p>
              <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="institution_type">
                <tr>
                  <td class="tableLabel" width="15%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"><a name="institution_role" id="institution_role"></a>vCard:Role</td>
                </tr>
                <tr>
                  <td width="20%" height="27" align="left" valign="top" class="tableLabel"> Label </td>
                  <td class="sidebar" width="80%" valign="top" align="left"> Institution
                    Type</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="34" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="80%" align="left" valign="top" class="sidebar"><p>The
                      category of institution, such as academic library, museum,
                      etc.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding
                    Scheme </td>
                  <td align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">
                    <p>IMLS defined types + a number of IMLS DCC refinements.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Required</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 1, Maximum:
                    1</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td height="27" align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar">n/a</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="46" align="left" valign="top" class="tableLabel"> Comments </td>
                  <td width="80%" align="left" valign="top" bgcolor="#FFFFFF" class="sidebar"><p>This
categorization is based on the institution types in the grant proposal guidelines
                      issued by IMLS.</p>
                  </td>
                </tr>
              </table>
              <p align="center"><strong><span class="back">(back to <a href="#top">top</a>)</span></strong></p>
              <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="institution_state">
                <tr>
                  <td class="tableLabel" width="15%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"><a name="institution_region" id="institution_region"></a>vCard:Region</td>
                </tr>
                <tr>
                  <td width="20%" height="27" align="left" valign="top" class="tableLabel"> Label </td>
                  <td class="sidebar" width="80%" valign="top" align="left"> State</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="34" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="80%" align="left" valign="top" class="sidebar"><p>The
                      state where the institution is located.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding
                    Scheme </td>
                  <td align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">
                    <p>Defined list of states and territories.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Required</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 1, Maximum:
                    1</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td height="27" align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar">n/a</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="46" align="left" valign="top" class="tableLabel"> Comments </td>
                  <td width="80%" align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">Requiring
                    the state allows users to organize collections and projects
                    based on the location of the institution.</td>
                </tr>
              </table>
              <p align="center"><strong><span class="back">(back to <a href="#top">top</a>)</span></strong></p>
              <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="institution_zipCode">
                <tr>
                  <td class="tableLabel" width="15%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"><a name="institution_pCode" id="institution_pCode"></a>vCard:Pcode</td>
                </tr>
                <tr>
                  <td width="20%" height="27" align="left" valign="top" class="tableLabel"> Label </td>
                  <td class="sidebar" width="80%" valign="top" align="left"> Zip
                    Code</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="34" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="80%" align="left" valign="top" class="sidebar"><p>The
                      zip code for the institution.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding
                    Scheme </td>
                  <td align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">
                    <p>United States Postal Codes.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Required</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 1, Maximum:
                    1</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td height="27" align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar">n/a</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="47" align="left" valign="top" class="tableLabel"> Comments </td>
                  <td width="80%" align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">Requiring
                    the zip code allows users to organize collections and projects
                  based on the location of the institution.</td>
                </tr>
              </table>
              <p align="center"><span class="back">(back to <a href="#top">top</a>)</span></p>
              <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="institution_zipCode">
                <tr>
                  <td class="tableLabel" width="15%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"><a name="institution_country" id="institution_country"></a>vCard:Country</td>
                </tr>
                <tr>
                  <td width="20%" height="27" align="left" valign="top" class="tableLabel"> Label </td>
                  <td class="sidebar" width="80%" valign="top" align="left"> Country </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="34" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="80%" align="left" valign="top" class="sidebar"><p>The country where the institution is located.</p></td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding Scheme </td>
                  <td align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">
                    <p>Getty Thesaurus of Geographic Names </p></td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Required</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 1, Maximum: 1</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td height="27" align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar">n/a</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="29" align="left" valign="top" class="tableLabel"> Comments </td>
                  <td width="80%" align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">The country is automatically generated for institutions in the United States. </td>
                </tr>
              </table>              <p align="center">&nbsp;</p>
              <p align="left"><span class="Heading3">Administrator Entity</span> <span class="back">(back
                to <a href="#top">top</a>)</span></p>              <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="administrator_name">
                <tr>
                  <td class="tableLabel" width="20%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"><a name="administrator_name"></a>vcard:n</td>
                </tr>
                <tr>
                  <td width="20%" height="27" align="left" valign="top" class="tableLabel"> Label </td>
                  <td class="sidebar" width="85%" valign="top" align="left"> Administrator
                    Name</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="34" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="85%" align="left" valign="top" class="sidebar"><p>The
                      name of the administrator responsible for the digital collection.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding
                    Scheme </td>
                  <td align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">
                    <p>n/a</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td height="30" align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Required</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 1, Maximum:1</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td height="27" align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar">n/a</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="59" align="left" valign="top" class="tableLabel"> Comments </td>
                  <td width="85%" align="left" valign="top" bgcolor="#FFFFFF" class="sidebar"><p>The
                    administrator information will not be publicly available
                     through the collection registry. This information is collected
                    for the benefit of IMLS.</p>
                  </td>
                </tr>
              </table>
			         <p align="center"><span class="back">(back to <a href="#top">top</a>)</span></p>
			         <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="administrator_name">
                       <tr>
                         <td class="tableLabel" width="20%" valign="top" align="left"> Name </td>
                         <td class="sidebar" width="85%" valign="top" align="left"><a name="administrator_family" id="administrator_family"></a>vcard:family</td>
                       </tr>
                       <tr>
                         <td width="20%" height="27" align="left" valign="top" class="tableLabel"> Label </td>
                         <td class="sidebar" width="85%" valign="top" align="left"> Administrator Name</td>
                       </tr>
                       <tr class="local" bgcolor="#FFFFFF">
                         <td width="20%" height="34" align="left" valign="top" class="tableLabel"> Definition </td>
                         <td width="85%" align="left" valign="top" class="sidebar"><p>The family name of the administrator responsible for the digital collection.</p></td>
                       </tr>
                       <tr class="local" bgcolor="#FFFFFF">
                         <td align="left" valign="top" class="tableLabel"> Uses Encoding Scheme </td>
                         <td align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">
                           <p>n/a</p></td>
                       </tr>
                       <tr class="local" bgcolor="#FFFFFF">
                         <td height="30" align="left" valign="top" class="tableLabel"> Obligation </td>
                         <td align="left" valign="top" class="sidebar"> Required</td>
                       </tr>
                       <tr class="local" bgcolor="#FFFFFF">
                         <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                         <td align="left" valign="top" class="sidebar"> Minimum: 1, Maximum:1</td>
                       </tr>
                       <tr class="local" bgcolor="#FFFFFF">
                         <td height="27" align="left" valign="top" class="tableLabel">Refines</td>
                         <td align="left" valign="top" class="sidebar">vCard:n</td>
                       </tr>
                       <tr class="local" bgcolor="#FFFFFF">
                         <td width="20%" height="59" align="left" valign="top" class="tableLabel"> Comments </td>
                         <td width="85%" align="left" valign="top" bgcolor="#FFFFFF" class="sidebar"><p>The administrator information will not be publicly available through the collection registry. This information is collected for the benefit of IMLS.</p></td>
                       </tr>
                     </table>			         <p align="center"><span class="back">(back to <a href="#top">top</a>)</span></p>
                     <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="administrator_name">
                       <tr>
                         <td width="20%" height="29" align="left" valign="top" class="tableLabel"> Name </td>
                         <td class="sidebar" width="85%" valign="top" align="left"><p><a name="administrator_given" id="administrator_given"></a>vcard:given</p>                         </td>
                       </tr>
                       <tr>
                         <td width="20%" height="27" align="left" valign="top" class="tableLabel"> Label </td>
                         <td class="sidebar" width="85%" valign="top" align="left"> Administrator Name</td>
                       </tr>
                       <tr class="local" bgcolor="#FFFFFF">
                         <td width="20%" height="34" align="left" valign="top" class="tableLabel"> Definition </td>
                         <td width="85%" align="left" valign="top" class="sidebar"><p>The given name of the administrator responsible for the digital collection.</p></td>
                       </tr>
                       <tr class="local" bgcolor="#FFFFFF">
                         <td align="left" valign="top" class="tableLabel"> Uses Encoding Scheme </td>
                         <td align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">
                           <p>n/a</p></td>
                       </tr>
                       <tr class="local" bgcolor="#FFFFFF">
                         <td height="30" align="left" valign="top" class="tableLabel"> Obligation </td>
                         <td align="left" valign="top" class="sidebar"> Required</td>
                       </tr>
                       <tr class="local" bgcolor="#FFFFFF">
                         <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                         <td align="left" valign="top" class="sidebar"> Minimum: 1, Maximum:1</td>
                       </tr>
                       <tr class="local" bgcolor="#FFFFFF">
                         <td height="27" align="left" valign="top" class="tableLabel">Refines</td>
                         <td align="left" valign="top" class="sidebar">vCard:n</td>
                       </tr>
                       <tr class="local" bgcolor="#FFFFFF">
                         <td width="20%" height="59" align="left" valign="top" class="tableLabel"> Comments </td>
                         <td width="85%" align="left" valign="top" bgcolor="#FFFFFF" class="sidebar"><p>The administrator information will not be publicly available through the collection registry. This information is collected for the benefit of IMLS.</p></td>
                       </tr>
                     </table>                     <p align="center"><span class="back">(back to <a href="#top">top</a>)</span></p>                     <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="administrator_identifier">
                <tr>
                  <td class="tableLabel" width="20%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"><a name="administrator_uid" id="administrator_uid"></a>vCard:UID</td>
                </tr>
                <tr>
                  <td width="20%" height="27" align="left" valign="top" class="tableLabel"> Label </td>
                  <td class="sidebar" width="85%" valign="top" align="left"> Identifier
                    (not displayed)</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="34" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="85%" align="left" valign="top" class="sidebar"><p>The
                      unique identifier for the administrator. </p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding
                    Scheme </td>
                  <td align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">
                    <p>Created and maintained by the IMLS DCC project</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td height="30" align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Required</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 1, Maximum:
                    unbounded</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td height="27" align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar">n/a</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="54" align="left" valign="top" class="tableLabel"> Comments </td>
                  <td width="85%" align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">The
                    administrator information will not be publicly available
                     through the collection registry. This information is collected
                    for the benefit of IMLS.</td>
                </tr>
              </table>
			         <p align="center"><span class="back">(back to <a href="#top">top</a>)</span></p>
			         <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="administrator_email">
                <tr>
                  <td class="tableLabel" width="20%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"><a name="administrator_email"></a>vcard:email</td>
                </tr>
                <tr>
                  <td width="20%" height="27" align="left" valign="top" class="tableLabel"> Label </td>
                  <td class="sidebar" width="85%" valign="top" align="left"> Email
                    address</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="34" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="85%" align="left" valign="top" class="sidebar"><p>The
                      electronic mail address for the administrator</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding
                    Scheme </td>
                  <td align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">
                    <p>name@domain.org</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td height="30" align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Required</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 1, Maximum:
                    unbounded</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td height="27" align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar">n/a</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="46" align="left" valign="top" class="tableLabel"> Comments </td>
                  <td width="85%" align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">The
                    administrator information will not be publicly available
                     through the collection registry. This information is collected
                    for the benefit of IMLS.</td>
                </tr>
              </table>       
			         <p align="center"><span class="back">(back to <a href="#top">top</a>)</span></p>
			         <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="administrator_affiliation">
                <tr>
                  <td class="tableLabel" width="20%" valign="top" align="left"> Name </td>
                  <td class="sidebar" width="85%" valign="top" align="left"><a name="administrator_org" id="administrator_org"></a>vcard:org</td>
                </tr>
                <tr>
                  <td width="20%" height="27" align="left" valign="top" class="tableLabel"> Label </td>
                  <td class="sidebar" width="85%" valign="top" align="left"> Affiliation</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="34" align="left" valign="top" class="tableLabel"> Definition </td>
                  <td width="85%" align="left" valign="top" class="sidebar"><p>The
                      institution the administrator is associated with.</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Uses Encoding
                    Scheme </td>
                  <td align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">
                    <p>n/a</p>
                  </td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td height="30" align="left" valign="top" class="tableLabel"> Obligation </td>
                  <td align="left" valign="top" class="sidebar"> Required</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                  <td align="left" valign="top" class="sidebar"> Minimum: 1, Maximum:
                    1</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td height="28" align="left" valign="top" class="tableLabel">Refines</td>
                  <td align="left" valign="top" class="sidebar">n/a</td>
                </tr>
                <tr class="local" bgcolor="#FFFFFF">
                  <td width="20%" height="46" align="left" valign="top" class="tableLabel"> Comments </td>
                  <td width="85%" align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">The
                    administrator information will not be publicly available
                     through the collection registry. This information is collected
                    for the benefit of IMLS.</td>
                </tr>
            </table>
                     <p align="center"><span class="back">(back to <a href="#top">top</a>)</span></p>
                     <table width="85%" border="1" align="center" cellpadding="4" cellspacing="1" id="administrator_affiliation">
                       <tr>
                         <td class="tableLabel" width="20%" valign="top" align="left"> Name </td>
                         <td class="sidebar" width="85%" valign="top" align="left"><a name="administrator_orgName" id="administrator_orgName"></a>vcard:orgName</td>
                       </tr>
                       <tr>
                         <td width="20%" height="27" align="left" valign="top" class="tableLabel"> Label </td>
                         <td class="sidebar" width="85%" valign="top" align="left"> Affiliation</td>
                       </tr>
                       <tr class="local" bgcolor="#FFFFFF">
                         <td width="20%" height="34" align="left" valign="top" class="tableLabel"> Definition </td>
                         <td width="85%" align="left" valign="top" class="sidebar"><p>The name of the institution the administrator is associated with.</p></td>
                       </tr>
                       <tr class="local" bgcolor="#FFFFFF">
                         <td align="left" valign="top" class="tableLabel"> Uses Encoding Scheme </td>
                         <td align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">
                           <p>n/a</p></td>
                       </tr>
                       <tr class="local" bgcolor="#FFFFFF">
                         <td height="30" align="left" valign="top" class="tableLabel"> Obligation </td>
                         <td align="left" valign="top" class="sidebar"> Required</td>
                       </tr>
                       <tr class="local" bgcolor="#FFFFFF">
                         <td align="left" valign="top" class="tableLabel"> Occurrence </td>
                         <td align="left" valign="top" class="sidebar"> Minimum: 1, Maximum: 1</td>
                       </tr>
                       <tr class="local" bgcolor="#FFFFFF">
                         <td height="28" align="left" valign="top" class="tableLabel">Refines</td>
                         <td align="left" valign="top" class="sidebar">vCard:org</td>
                       </tr>
                       <tr class="local" bgcolor="#FFFFFF">
                         <td width="20%" height="55" align="left" valign="top" class="tableLabel"> Comments </td>
                         <td width="85%" align="left" valign="top" bgcolor="#FFFFFF" class="sidebar">The administrator information will not be publicly available through the collection registry. This information is collected for the benefit of IMLS.</td>
                       </tr>
                     </table>                     <p ><span class="Heading3"><a name="namespaces"></a>Schemas
                  and Vocabularies (and Namespaces where available) used</span> <span class="back">(back
            to <a href="#top">top</a>)</span></p>
              <table width="75%" border="1" cellpadding="3" cellspacing="0" class="sidebar" id="schemas_vocabularies">

                </tr>
                <tr class="table">
                  <td>cld:</td>
                  <td>Collection Description Terms identified in DC Collection
                    Description App Profile; 


 URIs to be confirmed, Temporary Namespace Name</td>
                  <td><p>reference:</p>
                      <p><a href="http://www.ukoln.ac.uk/metadata/dcmi/collection-application-profile/2004-02-01/">http://www.ukoln.ac.uk/metadata/dcmi/collection-application-profile/</a></p>
                  </td>
                </tr>
                <tr class="table">
                  <td width="10%">dc:</td>
                  <td width="45%">The Dublin Core Metadata Element Set v. 1.1</td>
                  <td width="45%"><p>namespace:</p>
                      <p><a href="http://purl.org/dc/elements/1.1/%20dc%20">http://purl.org/dc/elements/1.1/ dc </a></p>
                  </td>
                </tr>
                <tr class="table">
                  <td>dcterms:</td>
                  <td>Dublin Core Terms </td>
                  <td><p>namespace:</p>
                      <p><a href="http://purl.org/dc/terms/dcterms">http://purl.org/dc/terms/dcterms</a></p>
                  </td>
                </tr>
                <tr class="table">
                  <td>imls:</td>
                  <td>IMLS DCC Collection Description Metadata Schema</td>
                  <td><p>reference:</p>
                    <p><a href="/registry/imlsdccprofile.xsd">http://imlsdcc.grainger.uiuc.edu/registry/imlsdccprofile.xsd</a></p>                    <p><a href="CDschema_elements.asp">http://imlsdcc.grainger.uiuc.edu/CDschema_elements.asp</a></p>
                  </td>
                </tr>
                <tr class="table">
                  <td>vcard:</td>
                  <td>RFC 2426 - vCard MIME Directory Profile <br>
                  </td>
                  <td><p>reference:</p>
                      <p><a href="http://www.ietf.org/rfc/rfc2426.txt">http://www.ietf.org/rfc/rfc2426.txt</a></p>
                  </td>
                </tr>
                <tr class="table">
                  <td>URI</td>
                  <td>Uniform Resource Identifier</td>
                  <td><p>reference: </p>
                  <p><a href="http://www.ietf.org/rfc/rfc2396.txt">http://www.ietf.org/rfc/rfc2396.txt</a></p></td>
                </tr>
                <tr class="table">
                  <td>LC TGM II</td>
                  <td>Library of Congress Theasurus of Graphic Materials - Genre
                    and Physical Materials Terms</td>
                  <td><p>reference:</p>
                  <p><a href="http://www.loc.gov/rr/print/tgm2/">http://www.loc.gov/rr/print/tgm2/</a></p></td>
                </tr>
                <tr class="table">
                  <td>IMT</td>
                  <td>Internet Media Types</td>
                  <td><p>reference:</p>
                  <p><a href="http://www.isi.edu/in-notes/iana/assignments/media-types/media-types%20">http://www.isi.edu/in-notes/iana/assignments/media-types/media-types</a></p></td>
                </tr>
                <tr class="table">
                  <td>ISO 639-2</td>
                  <td>Codes for the Representation of Names of Languages Part
                  2: Alpha-3 Code</td>
                  <td><p>reference:</p>
                  <p><a href="http://lcweb.loc.gov/standards/iso639-2/langhome.html">http://lcweb.loc.gov/standards/iso639-2/langhome.html</a></p></td>
                </tr>
                <tr class="table">
                  <td>GEM</td>
                  <td>Gateway to Educational Materials Topic Terms</td>
                  <td><p>reference:</p>
                  <p><a href="http://search.thegateway.org/">http://search.thegateway.org/</a></p></td>
                </tr>
                <tr class="table">
                  <td>Getty TGN</td>
                  <td>Getty Thesaurus of Geographic Terms</td>
                  <td><p>reference:</p>
                  <p><a href="http://www.getty.edu/research/conducting_research/vocabularies/tgn/">http://www.getty.edu/research/conducting_research/vocabularies/tgn/</a></p></td>
                </tr>
              </table>
              </tr>
        <tr class="BodyText">
          <td colspan="3" align="left" valign="top">        </tr>
        <tr class="BodyText">
          <td colspan="3" align="left" valign="top">        
        </tr>
      </table>

</div>
</asp:Content>

<asp:Content ID="indexLeftPanel" ContentPlaceHolderID="leftPanel" runat="server">
    <% Html.RenderPartial("PartialViews/AboutContents", ViewData.Model)%>
</asp:Content>