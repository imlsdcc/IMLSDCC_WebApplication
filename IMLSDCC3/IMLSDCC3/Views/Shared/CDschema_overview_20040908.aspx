<%@ Page Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="indexTitle" ContentPlaceHolderID="Title" runat="server">
   IMLS DCC General Overview
</asp:Content>
<asp:Content ID="aboutCenterPanel" ContentPlaceHolderID="centerPanel" runat="server">
    <div class="panel">
    <td colspan="2" valign="top">
      <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr class="BodyText">
        <td align="left" valign="middle">
        <a name="top"></a><h2>IMLS DCC Collection Description Metadata
            Schema - 2004-09-08</h2>
        <table border="1" align="center" cellpadding="1" cellspacing="1">
          <tr>
            <td width="25%" valign="top" class="tableLabel">Title: </td>
            <td width="75%" class="sidebar">Institute of Museum and Library Services Digital Collections and Content <br>
      Collection Description Metadata Schema Summary 2004-09-08 </td>
          </tr>
          <tr>
            <td width="25%" valign="top" class="tableLabel">Creator: </td>
            <td width="75%" class="sidebar">Sarah L. Shreeves </td>
          </tr>
          <tr>
            <td width="25%" valign="top" class="tableLabel">Date Issued: </td>
            <td width="75%" class="sidebar">2005-09-08</td>
          </tr>
          <tr>
            <td width="25%" valign="top" class="tableLabel">Identifier: </td>
            <td width="75%" class="sidebar"><a href="CDschema_overview_20040908">http://imlsdcc.grainger.uiuc.edu/CDschema_overview_20040908</a></td>
          </tr>
          <tr>
            <td width="25%" valign="top" class="tableLabel">Replaces: </td>
            <td width="75%" class="sidebar"><p>Not Applicable </p></td>
          </tr>
          <tr>
            <td width="25%" valign="top" class="tableLabel">Is Replaced By: </td>
            <td width="75%" class="sidebar"><a href="CDschema_overview_20050504">http://imlsdcc.grainger.uiuc.edu/CDschema_overview_20050504</a></td>
          </tr>
          <tr>
            <td width="25%" valign="top" class="tableLabel">Latest Version: </td>
            <td width="75%" class="sidebar"><a href="CDschema_overview"> http://imlsdcc.grainger.uiuc.edu/CDschema_overview</a></td>
          </tr>
          <tr>
            <td width="25%" valign="top" class="tableLabel">Description of Document: </td>
            <td width="75%" class="sidebar">This document is a summary of the IMLS DCC Collection Description Metadata Schema 2004-09-08.</td>
          </tr>
        </table>        <p >&nbsp;</p>
        <p class="BodyText" >The IMLS DCC Collection Description Metadata Schema
            is based on the <a href="http://www.ukoln.ac.uk/metadata/rslp/">UKOLN
                RSLP Collection Description Metadata Schema</a> and
                the <a href="http://dublincore.org/groups/collections/">Dublin
                Core Collection Description Application Profile</a>. The IMLS
                DCC project has adapted these schemas to reflect the particular
                nature of the project and to incorporate the needs of National
                Leadership
                Grant
                projects.
                It is meant to describe <strong>digital collections</strong> created
                through IMLS funded National Leadership Grant projects and does
                not describe
                in detail the projects themselves. This metadata schema forms
                the basis of the IMLS NLG Collection Registry which is currently
                in development.</p>
              <p class="BodyText" >The following is meant only to give a cursory
                overview of the schema. There are four entities described by
                the schema: </p>
              <ul>
                <li class="BodyText">the <a href="#collection">collection</a>;</li>
                <li class="BodyText">the
                      <a href="#project">NLG
                      project</a>;</li>
                <li class="BodyText">the
                        <a href="#institution">institution</a>; and </li>
                <li class="BodyText"> the <a href="#administrator">administrator</a>.                  </li>
              </ul>              
              <p class="BodyText">A collection may have been created by multiple
                NLG projects and have multiple administrators. A collection may
                have only one hosting institution, but may have multiple contributing
                institutions. A collection may have multiple sub-collections,
                associated collections, or source physical collections. A NLG
                project may have only one administering institution, but may
                have multiple participating (or collaborating) institutions. The
                diagram below illustrates the relationships between these entities.</p>
              <p class="BodyText"><img src="/IMLSDCC_CollDescDiagram.gif" alt="Relationships between Collection Description Entities" width="641" height="433"></p>
              <p class="BodyText" >The IMLS DCC Collection Description Metadata
                Schema reuses metadata elements from other schemas and adapts
                their use. We
                have also developed elements that are needed for our purposes,
                but have mapped these to other standards as is possible (our
                crosswalk is coming soon).
                At the
                      <a href="#namespaces">bottom</a> of this page is a list
                      of the vocabularies and namespaces used within the IMLS
                      DCC CD schema.</p>
              <p class="BodyText" >A <a href="CDschema_elements">detailed
                  look at individual elements, their attributes, and guidance
                on use</a> is available.</p>              
              
            <p class="BodyText" >Questions and comments can be directed to Jenny 
              Benevento, Project Coordinator, at <a href="mailto:benevent@uiuc.edu">benevent@uiuc.edu</a> 
              or 217-244-7809.</p>
                  <p class="textchunks" >&nbsp;</p>                  
                  <p class="Heading3" ><a name="collection"></a>Collection Entity
                    <span class="back">(back to <a href="#top">top</a>)</span></p>
                  <p class="BodyText" ><strong>General attributes:</strong></p>                  
                  <table width="75%" border="1" cellpadding="4" cellspacing="1" class="table" id="IMLS_DCC_CollectionDescriptionSchema_Overview">
                    <tr class="AnchorLink">
                      <td width="25%">Display Name</td>
                      <td width="25%">Property Name</td>
                      <td width="50%">Definition</td>
                    </tr>
                    <tr class="sidebar">
                      <td>Name of Digital Collection</td>
                      <td><a href="CDschema_elements#collection_title" target="_smallwindow">dc:title</a></td>
                      <td>The name of the digital collection created by the National
                        Leadership Grant project.</td>
                    </tr>
                    <tr>
                      <td height="28"><em>not displayed</em></td>
                      <td><a href="CDschema_elements#collection_identifier" target="_smallwindow">dc:identifier</a></td>
                      <td>The unique key for the digital collection.</td>
                    </tr>
                    <tr>
                      <td height="28">Digital Collection URL</td>
                      <td><p><a href="/CDschema_elements#collection_URL" target="_smallwindow">imls:URL</a></p>
                          <p>*sub-property of cld_gen:isAvailableAt*</p>
                      </td>
                      <td>The URL where an end user could access the digital
                        collection / primary entry point for the digital collection.</td>
                    </tr>
                    <tr>
                      <td height="28">Interaction with Digital Collection</td>
                      <td><a href="/CDschema_elements#collection_interactivity" target="_smallwindow">imls:interactivity</a></td>
                      <td>An indication of how a user can interact with the digital
                        collection, such as search, browse, exhibit, etc.</td>
                    </tr>
                    <tr>
                      <td height="28">Objects Represented</td>
                      <td><a href="/CDschema_elements#collection_type" target="_smallwindow">dc:type</a></td>
                      <td>The name of the object(s) or resource(s) represented
                        by the digital item(s).</td>
                    </tr>
                    <tr>
                      <td height="28">Format of Digital Items</td>
                      <td><a href="/CDschema_elements#collection_format" target="_smallwindow">dc:format</a></td>
                      <td>The format(s) of the digital items within the collection.</td>
                    </tr>
                    <tr>
                      <td height="28">Language</td>
                      <td><a href="/CDschema_elements#collection_language" target="_smallwindow">dc:language</a></td>
                      <td>If textual, the language(s) of the items in the digital
                        collection.</td>
                    </tr>
                    <tr>
                      <td height="28">Size of Collection</td>
                      <td><p><a href="/CDschema_elements#collection_extent" target="_smallwindow">dcterms:extent</a></p>
                          <p>*sub-property of dc:format*</p>
                      </td>
                      <td>The number of digital items within the collection.</td>
                    </tr>
                    <tr>
                      <td height="28">Frequency of Additions</td>
                      <td><p><a href="/CDschema_elements#collection_accrualPeriodicity" target="_smallwindow">imls:accrualPeriodicity</a></p>
                          <p>*sub-property of cld:accrualStatus*</p>
                      </td>
                      <td> A statement of how often the digital collection is
                        updated.</td>
                    </tr>
                    <tr>
                      <td height="28">Supplementary Materials</td>
                      <td><p><a href="/CDschema_elements#collection_supplement" target="_smallwindow">imls:supplement</a></p>
                          <p>*sub-property of dc:relation*</p>
                      </td>
                      <td>Materials such as lesson plans, docent materials, or
                        exhibits that supplement the digital collection.</td>
                    </tr>
                    <tr>
                      <td height="28">Audience</td>
                      <td><a href="/CDschema_elements#collection_audience" target="_smallwindow">dcterms:audience</a></td>
                      <td>The primary audience(s) for the digital collection.</td>
                    </tr>
                    <tr>
                      <td height="28">Access Restrictions</td>
                      <td><p><a href="/CDschema_elements#collection_accessRights" target="_smallwindow">dcterms:accessRights</a></p>
                          <p>*sub-property of dc:rights*</p>
                      </td>
                      <td>A statement of any access restrictions placed on the
                        digital collection.</td>
                    </tr>
                    <tr>
                      <td height="28">Rights</td>
                      <td><a href="/CDschema_elements#collection_rights" target="_smallwindow">dc:rights</a></td>
                      <td>Information about rights (copyrights, etc.) held in
                        and over the digital collection.</td>
                    </tr>
                    <tr>
                      <td height="28">Collection Development Policy</td>
                      <td><p><a href="/CDschema_elements#collection_collectionPolicy" target="_smallwindow">imls:collectionPolicy</a></p>
                          <p>*sub-property of dc:description</p>
                      </td>
                      <td>A statement of the collection development policy for
                        the digital collection.</td>
                    </tr>
                    <tr>
                      <td height="28">Alternative Access</td>
                      <td><a href="/CDschema_elements#collection_isAvailableAt" target="_smallwindow">cld_gen:isAvailableAt</a></td>
                      <td>The service that provides access to the digital collection,
                        such as an OAI data provider or a Z39.50 target.</td>
                    </tr>
                    <tr>
                      <td height="28">Metadata schema used</td>
                      <td><a href="/CDschema_elements#collection_metadataSchema" target="_smallwindow">imls:metadataSchema</a></td>
                      <td>The name of the metadata standard(s) used to describe
                        the items in the digital collection.</td>
                    </tr>
                    <tr class="sidebar">
                      <td>Notes</td>
                      <td><a href="/CDschema_elements#collection_notes" target="_smallwindow">imls:notes</a></td>
                      <td>A statement of any additional information about the
                        digital collection.</td>
                    </tr>
                  </table>
                  <p>&nbsp;</p>
                  <p><strong>Topical attributes: <span class="back">(back to <a href="#top">top</a>)</span></strong></p>
                  <table width="75%" border="1" cellpadding="4" cellspacing="1" class="table" id="IMLS_DCC_CollectionDescriptionSchema_Topical">
                    <tr class="AnchorLink">
                      <td width="25%">Display Name</td>
                      <td width="25%">Property Name</td>
                      <td width="50%">Definition</td>
                    </tr>
                    <tr class="sidebar">
                      <td>Topic</td>
                      <td><a href="/CDschema_elements#collection_subject" target="_smallwindow">dc:subject</a></td>
                      <td><p>Terms that describe the overall topical content of
                        the items in the digital collection. </p>
                        <p>*Note: The IMLS
                          Collection Registry will require the use of at least
                        one <a href="http://search.thegateway.org/">GEM</a> topic.</p></td>
                    </tr>
                    <tr class="sidebar">
                      <td>Description</td>
                      <td><a href="/CDschema_elements#collection_description" target="_smallwindow">dc:description</a></td>
                      <td>A summary of the content and topics of the digital
                        collection.</td>
                    </tr>
                    <tr class="sidebar">
                      <td>Geographic Coverage</td>
                      <td><p><a href="/CDschema_elements#collection_spatial" target="_smallwindow">dcterms:spatial</a></p>
                      <p>*sub-property of dc:coverage*</p></td>
                      <td>A place(s) or area(s) associated with most or all of
                        the items in the digital collection.</td>
                    </tr>
                    <tr class="sidebar">
                      <td>Temporal Coverage</td>
                      <td><p><a href="/CDschema_elements#collection_temporal" target="_smallwindow">dcterms:temporal</a></p>
                      <p>*sub-property of dc:coverage*</p></td>
                      <td>A time period(s) associated with most or all of the
                        items in the digital collection.</td>
                    </tr>
            </table>                  
                  <p>&nbsp;</p>
                  <p><strong>Attributes describing relationships with other collections: <span class="back">(back
                    to <a href="#top">top</a>)</span></strong></p>
                  <table width="75%" border="1" cellpadding="4" cellspacing="1" class="table" id="IMLS_DCC_CollectionDescriptionSchema_Relationships">
                    <tr class="AnchorLink">
                      <td width="25%">Display Name</td>
                      <td width="25%">Property Name</td>
                      <td width="50%">Definition</td>
                    </tr>
                    <tr class="sidebar">
                      <td>Parent Collection</td>
                      <td><p><a href="/CDschema_elements#collection_isPartOf" target="_smallwindow">dcterms:isPartOf</a></p>
                      <p>*sub-property of dc:relation*</p></td>
                      <td><p>Any other collection(s) that contains the current
                          collection.</p>
                      </td>
                    </tr>
                    <tr class="sidebar">
                      <td>Sub-Collection</td>
                      <td><p><a href="/CDschema_elements#collection_hasPart" target="_smallwindow">dcterms:hasPart</a></p>
                      <p>*sub-property of dc:relation*</p></td>
                      <td>Any other collection(s) contained within the current
                        collection.</td>
                    </tr>
                    <tr class="sidebar">
                      <td>Source Physical Collection</td>
                      <td><a href="/CDschema_elements#collection_source" target="_smallwindow">dc:source</a></td>
                      <td>The physical collection(s) from which the current digital
                        collection is derived.</td>
                    </tr>
                    <tr class="sidebar">
                      <td>Other Associated Collection</td>
                      <td><a href="/CDschema_elements#collection_relation" target="_smallwindow">dc:relation</a></td>
                      <td>Any other collection(s) that is associated with or
                        complements the current collection.</td>
                    </tr>
                  </table>                  
                  <p>&nbsp;</p>
                  <p><strong>Attributes describing
                        relationships with projects, institutions, and administrators: <span class="back">(back
                        to <a href="#top">top</a>)</span></strong></p>                  
					<table width="75%" border="1" cellpadding="4" cellspacing="1" class="table" id="IMLS_DCC_CollectionDescriptionSchema_InstitutionRelations">
                    <tr class="AnchorLink">
                      <td width="25%">Display Name</td>
                      <td width="24%">Property Name</td>
                      <td width="51%">Definition</td>
                    </tr>
                    <tr class="sidebar">
                      <td>NLG Project</td>
                      <td><p><a href="/CDschema_elements#collection_creator" target="_smallwindow">dc:creator</a></p>
                      </td>
                      <td>The NLG project(s) which created the digital collection.
                        [Link to the Project Entity]</td>
                    </tr>
                    <tr class="sidebar">
                      <td>Hosting Institution</td>
                      <td><p><a href="/CDschema_elements#collection_publisher" target="_smallwindow">dc:publisher</a></p>
                      </td>
                      <td><p>The institution which hosts (makes available) the
                          digital collection. [Link to the Institution Entity]                      </p>
                      </td>
                    </tr>
                    <tr class="sidebar">
                      <td>Contributing Institution</td>
                      <td><p><a href="/CDschema_elements#collection_contributor" target="_smallwindow">dc:contributor</a></p>
                      </td>
                      <td>The institution(s) which have contributed content to
                        the digital collection. [Link to the Institution Entity] </td>
                    </tr>
                    <tr class="sidebar">
                      <td>Administrator</td>
                      <td><a href="/CDschema_elements#collection_managedBy" target="_smallwindow">imls:managedBy</a></td>
                      <td>The person who has primary responsibility for the digital
                        collection. [Link to the Administrator Entity] </td>
                    </tr>
                  </table>                  <p>&nbsp;</p>
                  <p class="Heading3"><a name="project"></a>Project Entity <span class="back">(back
                  to <a href="#top">top</a>)</span></p>
                  <p class="BodyText"><strong>General attributes</strong></p>                  
				  <table width="75%" border="1" cellpadding="4" cellspacing="1" class="table" id="IMLS_DCC_CollectionDescriptionSchema_ProjectGeneral">
                    <tr class="AnchorLink">
                      <td width="25%">Display Name</td>
                      <td width="24%">Property Name</td>
                      <td width="51%">Definition</td>
                    </tr>
                    <tr class="sidebar">
                      <td>Project Name</td>
                      <td><p><a href="/CDschema_elements#project_title" target="_smallwindow">dc:title</a></p>
                      </td>
                      <td><p>The title of the IMLS National Leadership Grant
                          project associated with the digital collection</p>
                      </td>
                    </tr>
                    <tr class="sidebar">
                      <td>IMLS Grant Number</td>
                      <td><p><a href="/CDschema_elements#project_identifier" target="_smallwindow">dc:identifier</a></p>
                      </td>
                      <td>The IMLS grant number assigned to the NLG project.</td>
                    </tr>
                    <tr class="sidebar">
                      <td>Project URL</td>
                      <td><p><a href="/CDschema_elements#project_URL" target="_smallwindow">imls:URL</a></p>
                      <p>*sub-property of cld_gen:isAvailableAt*</p></td>
                      <td>The URL where an end user can access the NLG project
                        web site.</td>
                    </tr>
                  </table>                  
                  <p>&nbsp;</p>
                  <p class="BodyText"><strong>Attributes describing relationships
                      with institutions:</strong></p>
                  <table width="75%" border="1" cellpadding="4" cellspacing="1" class="table" id="IMLS_DCC_CollectionDescriptionSchema_ProjectRelations">
                    <tr class="AnchorLink">
                      <td width="25%">Display Name</td>
                      <td width="24%">Property Name</td>
                      <td width="51%">Definition</td>
                    </tr>
                    <tr class="sidebar">
                      <td>Administering Institution</td>
                      <td><p><a href="/CDschema_elements#project_administeredBy" target="_smallwindow">imls:administeredBy</a></p>
                      <p>*sub-property of dc:relation*</p></td>
                      <td>The institution which has administrative responsibility
                        for the NLG project (i.e. the applicant organization
                      on the grant proposal). [Link to the Institution Entity] </td>
                    </tr>
                    <tr class="sidebar">
                      <td>Participating Institution</td>
                      <td><p><a href="/CDschema_elements#project_participatedBy" target="_smallwindow">imls:participatedBy</a></p>
                      <p>*sub-property of dc:relation*</p></td>
                      <td>The institution(s) participating 
                        in the NLG project either formally (with a collaborative
                        agreement) or informally. [Link to the Institution Entity] </td>
                    </tr>
                  </table>                  
                  <p class="BodyText">&nbsp;</p>              
                  <p class="Heading3"><a name="institution"></a>Institution Entity <span class="back">(back
                  to <a href="#top">top</a>)</span></p>
                  <p class="BodyText"><strong>General attributes</strong></p>                  
				  <table width="75%" border="1" cellpadding="4" cellspacing="1" class="table" id="IMLS_DCC_CollectionDescriptionSchema_InstitutionGeneral">
                    <tr class="AnchorLink">
                      <td width="25%">Display Name</td>
                      <td width="24%">Property Name</td>
                      <td width="51%">Definition</td>
                    </tr>
                    <tr class="sidebar">
                      <td>Institution Name</td>
                      <td><p><a href="/CDschema_elements#institution_title" target="_smallwindow">dc:title</a></p>
                      </td>
                      <td><p>The name of the institution(s) associated with the
                          digital collection and NLG project.</p>
                      </td>
                    </tr>
                    <tr class="sidebar">
                      <td><em>Not displayed</em></td>
                      <td><p><a href="/CDschema_elements#institution_identifier" target="_smallwindow">dc:identifier</a></p>
                      </td>
                      <td>The unique identifier for the institution.</td>
                    </tr>
                    <tr class="sidebar">
                      <td>Institution Type</td>
                      <td><p><a href="/CDschema_elements#institution_type" target="_smallwindow">dc:type</a></p>
                      </td>
                      <td>The type of institution, such as academic library,
                        museum, etc.</td>
                    </tr>
                    <tr class="sidebar">
                      <td>State </td>
                      <td><a href="/CDschema_elements#institution_state" target="_smallwindow">imls:state</a></td>
                      <td>The state where the institution is located.</td>
                    </tr>
                    <tr class="sidebar">
                      <td>Zip Code</td>
                      <td><a href="/CDschema_elements#institution_zipCode" target="_smallwindow">imls:zipCode</a></td>
                      <td><p>The zip code for the institution.</p>
                      </td>
                    </tr>
            </table>
                  <p class="BodyText">&nbsp;</p>
                  <p class="Heading3" ><a name="administrator"></a>Administrator
                    Entity <span class="back">(back to <a href="#top">top</a>)</span></p>
                  <table width="75%" border="1" cellpadding="4" cellspacing="1" class="table" id="IMLS_DCC_CollectionDescriptionSchema_Administrator">
                    <tr class="AnchorLink">
                      <td width="25%">Display Name</td>
                      <td width="24%">Property Name</td>
                      <td width="51%">Definition</td>
                    </tr>
                    <tr class="sidebar">
                      <td>Administrator Name</td>
                      <td><p><a href="/CDschema_elements#administrator_name" target="_smallwindow">vcard:fn</a></p>
                      </td>
                      <td><p>The name of the administrator responsible for the
                          digital collection.</p>
                      </td>
                    </tr>
                    <tr class="sidebar">
                      <td><em>Not displayed</em></td>
                      <td><p><a href="/CDschema_elements#administrator_identifier" target="_smallwindow">dc:identifier</a></p>
                      </td>
                      <td>The unique identifier for the administrator.</td>
                    </tr>
                    <tr class="sidebar">
                      <td>Email address</td>
                      <td><p><a href="/CDschema_elements#administrator_email" target="_smallwindow">vcard:email</a></p>
                      </td>
                      <td>The electronic mail address for the administrator.</td>
                    </tr>
                    <tr class="sidebar">
                      <td>Affiliation</td>
                      <td><a href="/CDschema_elements#administrator_affiliation" target="_smallwindow">vcard:org</a></td>
                      <td>The institution the administrator is affiliated with.</td>
                    </tr>
                  </table>                  <p class="Heading3" >&nbsp;</p>
                  <p ><span class="Heading3"><a name="namespaces" id="Schemas_Used"></a>Schemas
                      (and Namespaces where available) used</span> <span class="back">(back
            to <a href="#top">top</a>)</span></p>
                  <table width="75%" border="1" cellpadding="3" cellspacing="0" class="table">
                    <tr>
                      <td>cld_gen</td>
                      <td>General Description Terms identified in DC Collection
                        Description App Profile</td>
                      <td><p>reference:</p>
                          <p><a href="http://www.ukoln.ac.uk/metadata/dcmi/collection-application-profile/2004-02-01/">http://www.ukoln.ac.uk/metadata/dcmi/collection-application-profile/2004-02-01/</a></p>
                      </td>
                    </tr>
                    <tr>
                      <td>cld</td>
                      <td>Collection Description Terms identified in DC Collection
                        Description App Profile</td>
                      <td><p>reference:</p>
                          <p><a href="http://www.ukoln.ac.uk/metadata/dcmi/collection-application-profile/2004-02-01/">http://www.ukoln.ac.uk/metadata/dcmi/collection-application-profile/2004-02-01/</a></p>
                      </td>
                    </tr>
                    <tr>
                      <td width="10%">dc:</td>
                      <td width="45%">The Dublin Core Metadata Element Set v. 1.1</td>
                      <td width="45%"><p>namespace:</p>
                        <p><a href="http://purl.org/dc/elements/1.1/%20dc%20">http://purl.org/dc/elements/1.1/
                        dc </a></p></td>
                    </tr>
                    <tr>
                      <td>dcterms:</td>
                      <td>Dublin Core Terms </td>
                      <td><p>namespace:</p>
                      <p><a href="http://purl.org/dc/terms/dcterms">http://purl.org/dc/terms/dcterms</a></p></td>
                    </tr>
                    <tr>
                      <td>imls:</td>
                      <td>IMLS DCC Collection Description Metadata Schema</td>
                      <td><p>reference:</p>
                      <p><a href="CDschema_elements">http://imlsdcc.grainger.uiuc.edu/CDschema_elements</a></p>
                      </td>
                    </tr>
                    <tr>
                      <td>vcard:</td>
                      <td>RFC 2426 - vCard MIME Directory Profile <br></td>
                      <td><p>reference:</p>
                        <p><a href="http://www.ietf.org/rfc/rfc2426.txt">http://www.ietf.org/rfc/rfc2426.txt</a></p></td>
                    </tr>
            </table>
                  <p></p>
        </tr>
		</table>
    </td>
  </div>
</asp:Content>

<asp:Content ID="indexLeftPanel" ContentPlaceHolderID="leftPanel" runat="server">
    <% Html.RenderPartial("PartialViews/AboutContents", ViewData.Model)%>
</asp:Content>