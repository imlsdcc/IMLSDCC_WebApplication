<%@ Page Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="indexTitle" ContentPlaceHolderID="Title" runat="server">
    IMLS DCC Resources
</asp:Content>
<asp:Content ID="aboutCenterPanel" ContentPlaceHolderID="centerPanel" runat="server">
    <div class="panel">
            <h2>Important Resources</h2>
            <p align="left" class="BodyText"><a name="top"></a>We hope these descriptions, 
              web sites, and articles to help you learn more about metadata, registries, 
              and other ways to expose your collection to a wider audience. Click 
              a topic below.</p>
            <p align="left" class="AnchorLink"> <a href="#ADC">About Digital Collections</a></p>
            <p align="left" class="AnchorLink"><a href="#whatismetadata">What 
              is metadata?</a></p>
            <blockquote> 
              <p align="left" class="AnchorLink"><a href="#AM">General Resources 
                about Metadata</a></p>
              <p align="left" class="AnchorLink"><a href="#EMS">Examples of Metadata 
                Schemas</a></p>
            </blockquote>
            <p align="left" class="AnchorLink"><a href="#whatisregistry">What 
              is a collection registry?</a></p>
            <blockquote> 
              <p align="left" class="AnchorLink"><a href="#ECR">Examples of Collection 
                Registries</a></p>
            </blockquote>
            <p align="left" class="AnchorLink"><a href="#whatiscld">What is a 
              collection-level description metadata schema?</a></p>
            <blockquote> 
              <p align="left" class="AnchorLink"><a href="#CLD">General Resources 
                about Collection-Level Description</a></p>
              <p align="left" class="AnchorLink"><a href="#EDS">Examples of Collection-Level 
                Description Metadata Schemas</a></p>
            </blockquote>
            <p align="left" class="AnchorLink"><a href="#interoperability">What 
              is interoperability?</a></p>
            <p align="left" class="AnchorLink"><a href="#shareablemetadata">What 
              is shareable metadata? </a></p>
            <p align="left" class="AnchorLink"><a href="#whatisoai">What is the 
              Open Archives Initiative (OAI) Protocol for Metadata Harvesting 
              (PMH)?</a></p>
            <blockquote> 
              <p align="left" class="AnchorLink"><strong><a href="#oaioptions">What 
                are the options for implementing OAI metadata provider services?</a></strong></p>
              <p align="left" class="AnchorLink"><a href="#AOAI">General Resources 
                about the Open Archives Initiative (OAI)</a><br>
                <br>
                <a href="#EOSP">Examples of OAI Service Providers</a></p>
            </blockquote>
            <p align="left" class="AnchorLink"><a href="#repository">What is an 
              item-level repository?</a></p>
            <p>
            </p><hr>
            <h3 class="pageheading" name="ADC" id="ADC">About digital collections</h3> <span class="back">(<a href="#top">back to top</a>)</span></strong></p>
            <p align="left" class="BodyText"> <a href="http://www.niso.org/framework/Framework2.html">A 
              Framework of Guidance for Building Good Digital Collections</a>, 
              by Priscilla Caplan et al</p>
              <blockquote> 
                <p>A report from the Digital Library Forum, a group convened by 
                  IMLS to discuss issues related to the management of networked 
                  digital libraries. Much of the work of the IMLS DCC project 
                  is based on recommendations from the Framework.</p>
              </blockquote>
            <h3 class="pageheading" name="whatismetadata" id="whatismetadata">What 
              is metadata?</h3><strong class="back">(<a href="#top">back to top</a>)</strong>
            <p align="left" class="bodytext"><a href="http://www.icbl.hw.ac.uk/perx/advocacy/exposingmetadata.htm">Marketing 
              with Metadata</a>, by M.Moffat</p>
            <p align="left" class="bodytext">Metadata is information about a resource 
              (whether physical or digital). It can be descriptive information 
              (such as that found in a library catalog record), administrative 
              (such as that describing the donor of a museum item), or structural 
              (such as that describing the technical details of a digitized image).</p>
            <h4>How does metadata affect 
              my collection?</h4>
            <p align="left" class="BodyText">Metadata allows users to discover 
              resources that might be useful to them. It also enables a user to 
              decide whether to select a particular resource. For example, the 
              user can determine whether he or she has the technical capability 
              needed to view a .PDF file. Metadata also tells the user where to 
              find the resource, and it allows administrators of collections to 
              manage their resources.</p>
            <p align="left" class="BodyText">There are many metadata schemas in 
              use by many different communities. Much effort has been made to 
              map between different schemas so that different collections can 
              be searched and used together. These mapping tools are called <em>crosswalks</em>. 
              In addition, there are many different controlled vocabularies, or 
              taxonomies. There are fewer crosswalks available for taxonomies, 
              although automatically mapping between them is being actively researched.</p>
            <p class="BodyText" align="left">The metadata that describes the digital 
              resources in National Leadership Grant (NLG) collections is a key 
              component of this project.</p>
            <p align="left" class="BodyText">We will create <a href="#whatiscld">collection-level 
              description metadata schema</a> (metadata describing a collection 
              as a whole rather than the individual items in it) for every NLG 
              project with digital content and store it in a collection registry.</p>
            <p align="left" class="BodyText">In addition, we harvest the item-level 
              metadata in these collections using the <a href="#whatisoai">Open 
              Archives Initiative Protocol for Metadata Harvesting</a>. Then we 
              created a central repository of the aggregated metadata.</p>
            <blockquote> 
              <p align="left" class="BodyText"><strong><a name="AM">General Resources 
                About Metadata</a> <span class="back">(<a href="#top">back to 
                top</a>)</span></strong></p>
              <p align="left" class="BodyText"><a href="http://www.getty.edu/research/publications/electronic_publications/intrometadata/index.html">Introduction 
                to Metadata</a>, from the Getty Research Institute</p>
              <blockquote> 
                <p align="left" class="BodyText">An excellent basic overview of 
                  what metadata is, why it's important, and what it is used for.</p>
              </blockquote>
              <p align="left" class="BodyText"><a href="http://lcweb.loc.gov/catdir/bibcontrol/arms_paper.html">Some 
                observations on metadata and digital libraries</a>, by Caroline 
                Arms</p>
              <blockquote> 
                <p align="left" class="BodyText">An interesting paper given at 
                  the Conference on Bibliographic Control in the New Millennium 
                  in 2000 on the role of metadata within digital libraries.</p>
              </blockquote>
              <p align="left" class="BodyText"><strong><a name="EMS">Examples 
                of Metadata Schemas</a> <span class="back">(<a href="#top">back 
                to top</a>)</span></strong></p>
              <p align="left" class="BodyText"><a href="http://dublincore.org/">Dublin 
                Core Metadata Initiative</a></p>
              <blockquote> 
                <p align="left" class="BodyText">Dublin Core is a simple and flexible 
                  metadata standard. The DCMI home page provides current information 
                  about the standard and specific applications for its use. Registered 
                  Open Archives Initiative data providers are required to provide 
                  metadata in at least Dublin Core for interoperability purposes. 
                  Additional schemas may also be provided.</p>
              </blockquote>
              <p align="left" class="BodyText"><a href="http://www.thslc.org/encompass/documents/WSDCMBP.pdf">Western 
                States Dublin Core Metadata Best Practices</a> (pdf)</p>
              <blockquote> 
                <p align="left" class="BodyText"> A part of a multi-state initiative 
                  to create a virtual collection of widely dispersed digital resources, 
                  representatives from several cultural heritage institutions 
                  developed these best practices.</p>
              </blockquote>
              <p align="left" class="BodyText"><a href="http://www.loc.gov/marc/">MARC 
                Standards</a>, The Library of Congress</p>
              <blockquote> 
                <p align="left" class="BodyText">The standard used by libraries 
                  to describe bibliographic and other resources.</p>
              </blockquote>
              <p align="left" class="BodyText"><a href="http://lcweb.loc.gov/ead/">Encoded 
                Archival Description (EAD)</a></p>
              <blockquote> 
                <p align="left" class="BodyText">The standard used to encode archival 
                  finding aids.</p>
              </blockquote>
            </blockquote>
            <h3 class="pageheading" name="whatisregistry" id="whatisregistry"><strong>What 
              is a collection registry?</strong></h3> <strong><span class="back">(<a href="#top">back 
              to top</a>)</span></strong>
            <p align="left" class="BodyText">A collection registry, as we envision 
              it, provides access, services, and additional functionality to a 
              database of collection descriptions.</p>
            <p align="left" class="BodyText"><strong>Why provide access at the 
              collection level? </strong></p>
            <p align="left" class="BodyText">The registry will offer users access 
              to collections that are not easily found or that do not have accessible 
              catalogs. For example, <a href="http://www.cornucopia.org.uk/index.html">Cornucopia</a>, 
              a registry of museum collections in the United Kingdom, provides 
              access to many collections that otherwise are not easy to find.</p>
            <p align="left" class="BodyText"> Building a trusted registry of high-quality, 
              important collections helps to promote the collections' visibility 
              and improve access for all users. The <a href="http://www.nsdl.org/">National 
              Science Digital Library</a> (NSDL) is a good example. 
            </p>
            <blockquote class="BodyText"> 
              <p align="left"><strong><a name="ECR">Examples of Collection Registries</a> 
                <span class="back">(<a href="#top">back to top</a>)</span></strong></p>
              <p align="left"><a href="http://www.nsdl.org">National Science Digital 
                Library</a>(NSDL)</p>
              <blockquote class="BodyText"> 
                <p align="left">The NSDL stores collection descriptions in a metadata 
                  repository alongside item level metadata. While not every collection 
                  within the NSDL will have item level metadata, every collection 
                  must have a collection description. The collection description 
                  is based on Qualified Dublin Core. GEM subject headings are 
                  assigned in addition to whatever subject headings are submitted. 
                  Collections can be submitted by contributors (see <a href="http://nsdl.org/recommend/collection">http://nsdl.org/recommend/collection</a>) 
                  or are created by NSDL staff.</p>
              </blockquote>
              <p><a href="http://www.cornucopia.org.uk">Cornucopia: Discovering 
                UK Collections</a></p>
              <blockquote class="BodyText"> 
                <p>Registry of museum collections maintained by Resource: The 
                  Council for Museums, Archives, and Libraries in the United Kingdom. 
                  The collection description is based on the RSLP CD schema.</p>
              </blockquote>
              <p><a href="http://www.oac.cdlib.org/">Online Archive of California</a></p>
              <blockquote class="BodyText"> 
                <p>Provides access to finding aids and collection guides describing 
                  a wide range of materials such as manuscripts, photographs, 
                  and works of art held in libraries, museums, archives, and other 
                  institutions across California. The collection description schema 
                  used is EAD.</p>
                  </blockquote>
                  </blockquote>
             <h3 align="left" class="pageheading" name="whatiscld" id="whatiscld">What is a collection-description schema?</h3><span class="back"></h3>(<a href="#top">back 
              to top</a>)</span></strong>
            <p align="left" class="BodyText">A collection-description schema is 
              simply a metadata schema that is designed to describe a collection 
              of resources rather than individual items. For example, a collection 
              description of the Wright Brothers Negatives, held by the Library 
              of Congress, looks like this:</p>
            <blockquote> 
              <p align="left" class="sidebar"><strong>title:</strong> Records 
                for collection of glass negatives from the Papers of Wilbur and 
                Orville Wright, digitized by the Library of Congress<br>
                <strong>creator:</strong> Library of Congress<br>
                <strong>description:</strong> Orville and Wilbur Wright, pioneers 
                in early aviation, used photography to document their experiments 
                with flight and to record family events. Subjects depicted include 
                portraits of the Wright brothers and their family members; friends 
                and associates; views of the Wright family home at 7 Hawthorn 
                St., Dayton, Ohio; Orville Wright's home "Hawthorne Hill", 
                Dayton; family gatherings; the brothers performing gliding experiments 
                and powered flight tests at Kitty Hawk, N.C....<br>
                <strong>type:</strong> image<br>
                <strong>type:</strong> still image<br>
                <strong>type:</strong> photograph<br>
                <strong>type:</strong> glass negatives<br>
                <strong>type:</strong> portrait photographs<br>
                <strong>type:</strong> group portraits<br>
                <strong>type: </strong>landscape photographs<br>
                <strong>type:</strong> collection<br>
                <strong>coverage:</strong> 1890-1930<br>
                <strong>coverage:</strong> United States--Ohio--Dayton<br>
                <strong>coverage:</strong> United States--North Carolina--Kitty 
                Hawk<br>
                <strong>subject:</strong> Wright, Wilbur, 1867-1912, photographer<br>
                <strong>subject:</strong> Wright, Orville, 1871-1948, photographer<br>
                <strong>subject:</strong> Wright family.<br>
                <strong>subject:</strong> Aeronautics--United States--1890-1930.<br>
                <strong>subject:</strong> Flight testing--North Carolina--Kitty 
                Hawk--1890-1930.<br>
                <strong>subject:</strong> Flight testing--Ohio--Dayton--1890-1930.<br>
                <strong>subject:</strong> Gliders--1890-1930.<br>
                <strong>subject:</strong> Airplanes--1890-1930.<br>
                <strong>subject:</strong> Families--Ohio--Dayton--1890-1930.<br>
                <strong>subject: </strong>Wright, Wilbur, 1867-1912--Friends &amp; 
                associates.<br>
                <strong>subject: </strong>Wright, Orville, 1871-1948--Friends 
                &amp; associates.<br>
                <strong>subject:</strong> Pets--1890-1930.<br>
                <strong>subject:</strong> Dogs--1890-1930.<br>
                <strong>contributor: </strong>Prints and Photographs Division, 
                Library of Congress<br>
                <strong>relation:</strong> <a href="http://lcweb2.loc.gov/pp/wrihtml/wriabt.html">http://lcweb2.loc.gov/pp/wrihtml/wriabt.html</a></p>
            </blockquote>
            <p align="left" class="BodyText">There are only a few standard collection-description 
              schemas. In some cases metadata schemas that were originally developed 
              for individual resources have been adapted to describe a collection. 
              (MARC has been used in this way.)</p>
            <p align="left" class="BodyText">The <a href="http://www.loc.gov/ead/tglib/index.html">Encoded 
              Archival Description</a> (EAD) was designed to encode archival finding 
              aids that describe library and museum collections. An EAD contains 
              both a top-level collection description as well as descriptions 
              of individual resources or groups of resources.</p>
            <p align="left" class="BodyText">The <a href="http://www.ukoln.ac.uk/metadata/rslp/">Research 
              Support Libraries Programme</a> (RSLP) in the UK developed a collection-description 
              schema to describe their collections in a consistent manner. Several 
              planned collection registries, including one for the digitized collections 
              emerging from the <a href="http://www.nof-digitise.org/">NOF-Digitise</a> 
              initiative, will be using the RSLP schema as a basis.</p>
            <blockquote> 
              <p align="left" class="bodytext"><strong><a name="CLD">General Resources 
                for Collection-Level Descriptions</a> <span class="back">(<a href="#top">back 
                to top</a>)</span></strong></p>
              <p align="left" class="BodyText"><a href="http://www.dlib.org/dlib/september00/09contents.html">A 
                special issue for collection-level description</a> (D-Lib Magazine, 
                September 2000)</p>
              <p align="left" class="BodyText"><a href="http://firstmonday.org/issues/issue7_5/lynch/index.html">Digital 
                Collections, Digital Libraries, and the Digitization of Cultural 
                Heritage Information</a> (Clifford Lynch) in First Monday, v. 
                7, no. 5, May 2002</p>
              <blockquote> 
                <div class="BodyText" align="left">An article based on the keynote 
                  address given at the 2002 Web-Wise conference.</div>
              </blockquote>
              <p align="left" class="BodyText">Geisler, Gary et al. 2002. “Creating 
                Virtual Collections in Digital Libraries: Benefits and Implementation 
                Issues.” <em>Proceedings of the second ACM/IEEE-CS joint 
                conference on Digital Libraries</em>. Pgs. 210-218.</p>
              <blockquote> 
                <div class="BodyText" align="left"> Provides insight into the 
                  use of collection descriptions in the iLumina 
                  project and the <a href="http://www.open-video.org/">Open 
                  Video Project</a> at the University of North Carolina at Chapel 
                  Hill. </div>
              </blockquote>
              <p align="left" class="BodyText">Hill, Linda L. et al. 1999. "Collection 
                Metadata Solutions for Digital Library Applications." Journal 
                of the American Society for Information Science. 50(13):1169-1181.</p>
              <blockquote class="BodyText"> 
                <div align="left"> 
                  <p>Describes the process of creating collection metadata for 
                    a digital library.</p>
                </div>
              </blockquote>
              <p align="left" class="BodyText"><strong><a name="EDS">Examples 
                of Description Schemas</a> <span class="back">(<a href="#top">back 
                to top</a>)</span></strong></p>
              <p align="left" class="BodyText"> <a href="http://www.ukoln.ac.uk/metadata/rslp/schema/">RSLP 
                (Research Support Libraries Programme) Collection Description 
                Schema</a></p>
              <blockquote>
                <p align="left" class="BodyText">This schema was developed to 
                  enable RSLP projects to describe their collections in a consistent 
                  and machine readable way. The schema was released in 2000.</p>
              </blockquote>
              <p align="left" class="BodyText"><a href="http://homes.ukoln.ac.uk/%7Elispj/dc-cd/rslpcd.html">Proposed 
                Dublin Core Collection Description</a></p>
              <blockquote>
                <p align="left" class="BodyText">This proposed schema is based 
                  upon the RSLP CD. For more information see the <a href="http://dublincore.org/groups/collections/">Collection 
                  Description Working Group</a> of the Dublin Core Metadata Initiative 
                  (DCMI).</p>
              </blockquote>
              <p align="left" class="BodyText"><a href="http://cicharvest.grainger.uiuc.edu/collectiondescription.asp">CIC 
                Collection Description Format </a></p>
              <blockquote> 
                <p align="left">The CIC collection description format is created 
                  out of the last proposal made by the Dublin Core Collection 
                  working group for a Collection application profile available 
                  to date. This <a href="http://www.ukoln.ac.uk/metadata/dcmi/collection-application-profile/">proposal 
                  </a> has been made on August 20th 2004. The collection description 
                  format is intended to provide a way for data providers to describe 
                  the collections they expose. From those description, it will 
                  be possible to extract contextual information to display for 
                  end-user when they browse records on the CIC metadata portal.</p>
              </blockquote>
              <p align="left" class="BodyText"><a href="http://www.loc.gov/ead/tglib/index.html">Encoded 
                Archival Description</a> (EAD)</p>
              <blockquote>
                <p align="left" class="BodyText">This is the schema for encoding 
                  archival finding aids. It has also been used to describe museum 
                  collections (‘collection guides’) as in the <a href="http://www.oac.cdlib.org/">Museum 
                  and Online Archives of California</a> project.</p>
              </blockquote>
            </blockquote>
            <h3 name="interoperability" id="interoperability">What is interoperability?</a> <strong><span class="back"></h3>(<a href="#top">back 
              to top</a>)</span></strong>
            <p align="left" class="BodyText">Interoperability has been defined 
              as the "ability of systems, services, and organizations to work 
              together seamlessly toward common or diverse goals." (from the <a href="http://www.oaforum.org">Open 
              Archives Forum</a> "OAI For Beginners Tutorial") In the 
              context of the IMLS DCC project, interoperability means the ability 
              to seamlessly share and access content from different digital collections. 
              Metadata standards facilitate interoperability by making it easier 
              to exchange metadata and use crosswalks.The Open Archives Initiative 
              Protocol for Metadata Harvesting enables interoperability by allowing 
              data providers to share metadata with service providers who then 
              build services around the metadata collected from multiple institutions.</p>
            <p align="left" class="bodytext"><strong>How do you make a collection 
              interoperable?</strong></p>
            <ul class="BodyText">
              <li><strong>Build an infrastructure.</strong><br>
                Essential for your ability to share metadata is an infrastructure 
                that supports it! Protocols like Z39.50 or the Open Archives Initiative 
                Protocol for Metadata Harvesting (<a href="#whatisoai">OAI-PMH</a>) 
                enable distributed searching of multiple collections. They make 
                it possible for a digital library or other service provider to 
                gather metadata from many collections and present it to the user 
                in one search interface.</li>
              <li><strong>Create interoperable metadata.</strong><br>
                Usually, you will be sharing the metadata for your collection, 
                not the content itself. But sharing your metadata isn't enough. 
                Because organizations use metadata in different ways, you need 
                to think carefully about your metadata. Does it make sense outside 
                of its native database? Does it include references that someone 
                in another location would understand? (See <a href="#shareablemetadata">shareable 
                metadata</a> below).</li>
              <li><strong>Clarify rights.</strong><br>
                You may have content that is only available to certain individuals 
                and groups. You can still share the metadata that describes this 
                content without opening up access to the items themselves. When 
                you share item-level metadata with IMLS DCC, you should include 
                a Rights Statement. That way, when users examine your metadata 
                records to learn about the content of your collection, they will 
                also learn that access to your content is restricted. For example, 
                here's the <a href="http://www.loc.gov/rr/print/res/269_wri.html">rights 
                statement</a> for the collection of Wright Brothers negatives 
                at the Library of Congress.</li>
            </ul>
            <h3 name="shareablemetadata" id="shareablemetadata">What 
              is shareable metadata?</h3><strong><span class="back">(<a href="#top">back 
              to top</a>)</span></strong></span>
            <p align="left" class="tableLabel"><strong>(The following is based 
              on the CIC-OAI 
              project recommendations for Dublin Core metadata providers)</strong></p>
            <p align="left">1. Metadata is used for both information discovery 
              and display, so that it must contain information formatted for both 
              purposes. <br>
              <br>
              2. Whenever possible, provide the native metadata schema via the 
              OAI Protocol. <br>
              <br>
              3. For digital objects that are representations or surrogates of 
              physical objects, the descriptive metadata should describe the original 
              physical object. Descriptive metadata specific to the digital surrogate 
              should also be included and the URI of the digital surrogate is 
              placed in the dc:identifier element. The object type is not Physical 
              object.&nbsp; The Dublin Core 'one to one' rule does not apply here. 
              <br>
              <br>
              4. Do not merge elements when they are distinct in the original 
              metadata record (eg, subject 1 ; subject 2 ...). <br>
              <br>
              5. Do not include empty elements or elements with no informational 
              value (such as not available or n/a). Note that the value 'unknown' 
              might have some informational value; use your judgement. <br>
              <br>
              6.&nbsp; Repeat elements and element content as many times as needed 
              for adequate resource discovery (e.g., The same geographic string 
              may appear once in subject and once in coverage if you think this 
              is necessary). <br>
              <br>
              7.&nbsp; To express more complex semantics within simple Dublin 
              Core elements, indicate refinements within the value. For example, 
              to indicate a collection that a resource is a part of: &lt;dc:relation&gt;Is 
              Part Of: Teaching with Digital Content&lt;/dc:relation&gt;. <br>
              <br>
              8. A single dc:identifier element shall contain a URI. This URI 
              points to the resource for display purpose, any other URI will have 
              to go to another element. For example, if the URI actually points 
              to the collections homepage, it can be recorded in the dc:publisher 
              or dc:relation element. Any other dc:identifier element that is 
              not a URI such as ISBN or whatever information is acceptable. <br>
              <br>
              9. Make clear whether the end user will access a digital resource 
              or a description of a physical resource (or a finding aid). If there 
              is no existing digital material, make that clear, e.g., by not writing 
              any URI in the dc:identifier element (but rather in another element 
              such as relation or publisher) and/or writing a dc:type physicalobject, 
              possibly additional to any other dc:type. <br>
              <br>
              10. Do not create multiple records pointing to the same URI (identifier). 
              <br>
              <br>
              11. If your resource is restricted access, this shall be mentioned 
              in the dc:rights (accessRights) element with the designation of 
              the categories of persons who are granted access (written for the 
              benefit of end-users). <br>
              <br>
              12. Indicate the collection the item belongs to in the Relation 
              (isPartOf) element. <br>
              <br>
              13. Whenever possible, use a controlled vocabulary or encoding scheme. 
              <br>
              <br>
              14. Whenever possible, name the controlled vocabulary particularly 
              for subject. In simple Dublin Core this is possible by adding the 
              controlled vocabulary to the value in brackets. For example, &lt;dc:subject&gt;United 
              States--Politics and government--1857-1861. [LCSH]&lt;/dc:subject&gt; 
              <br>
              <br>
              15. Include the DCMI type in the dc:type element in addition to 
              any other more specific type (preferable from a controlled vocabulary 
              such as the LC Thesaurus of Graphic Materials II). For instance, 
              if the object described is a lithograph, you might include both 
              'lithograph' and 'image'. <br>
              <br>
              16. Include the Internet Media Type encoding scheme in the dc:format 
              element in addition to any other formats (such as the physical dimensions 
              of the object). These are available at: <a href="http://www.iana.org/assignments/media-types/index.html">http://www.iana.org/assignments/media-types/index.html 
              </a>.&nbsp; Please note that the first level (image for example) 
              can be used if an appropriate media type can't be found in this 
              list. <br>
              <br>
              17. Include the ISO 639-2 encoding scheme for the dc:language element 
              where possible. <br>
              <br>
              18. Use an appropriate standard encoding scheme for dates and for 
              the temporal aspect of the coverage element. <br>
              <br>
              19. Don't use local jargon or language, or use it in addition to 
              controlled vocabulary. <br>
              <br>
              20. Make sure your metadata meets the 'On the Horse' test. Take 
              a look at your metadata without the resource it describes and outside 
              of its website (copy to a word document for instance). Conduct a 
              usability test. Can the user tell you what this metadata describes? 
            </p>
            <h3 name="whatisoai" id="whatisoai">What is the Open Archives Initiative (OAI) Protocol for Metadata Harvesting 
              (PMH)?</h3> <strong><span class="back">(<a href="#top">back to top</a>)</span></strong>
            <p align="left" class="BodyText">The Open Archives Initiative Protocol 
              for Metadata Harvesting (OAI-PMH) supports interoperability between 
              disparate collections of metadata.It achieves interoperability through 
              <em>metadata harvesting</em> rather than through <em>distributed 
              searches</em> as in the Z39.50 protocol.</p>
            <p align="left" class="BodyText">In Z39.50, searches are requested 
              simultaneously across multiple metadata providers. Each provider 
              searches their own metadata and returns results to the search service, 
              which aggregates results from all responding providers.</p>
            <p align="left" class="BodyText">In contrast, when OAI-PMH is used, 
              the metadata itself is completely or selectively harvested from 
              each metadata provider and aggregated in a central location. Searches 
              are then performed within this central repository. The <a href="http://www.openarchives.org">Open 
              Archives Initiative</a> is the organization responsible for the 
              metadata harvesting protocol used in the IMLS DCC project.</p>
            <p align="left" class="BodyText">The OAI protocol is based on XML 
              and HTTP. A service provider sends an HTTP request to a data provider 
              using the protocol. The metadata provider—who has implemented 
              the OAI protocol—responds to the request by sending an XML 
              document through HTTP. In this way, the service provider can learn 
              who the metadata provider is (<em>Identify</em> request), what metadata 
              formats it supports (<em>ListMetadataFormats</em> request), and 
              how it has divided its metadata (<em>ListSets</em> request). The 
              service provider can also request the metadata itself (<em>GetRecord</em>, 
              <em>ListIdentifiers</em>, <em>ListRecord</em> requests).</p>
            <p align="left" class="BodyText">The OAI protocol is metadata neutral. 
              It can be used with any metadata format. However, OAI-compliant 
              metadata providers (those who register with the Open Archives Initiative) 
              provide metadata in <a href="http://www.dublincore.org">Dublin Core</a>.</p>
            <p align="left" class="BodyText"><strong>How is the OAI protocol going 
              to be used in the IMLS DCC project?</strong></p>
            <p align="left" class="BodyText">We will build a repository for metadata 
              describing the item-level content of digital collections created 
              through the IMLS National Leadership Grant program. We will harvest 
              metadata from these NLG projects using the OAI protocol. Our goal 
              is to provide assistance and tools to NLG projects to make it possible 
              for their metadata to be harvested using the protocol.</p>
            <p align="left" class="BodyText"><strong><a name="oaioptions">What 
              are the options for implementing OAI metadata provider services?</a> 
              <span class="back">(<a href="#top">back to top</a>)</span></strong></p>
            <p align="left" class="BodyText">There are two options for participation 
              in the item-level repository:</p>
            <blockquote> 
              <p align="left" class="BodyText">Option 1: Become a full OAI data 
                provider.<br>
                Option 2: Become a static OAI data provider.</p>
            </blockquote>
            <p align="left" class="BodyText"><strong>Option 1: Full OAI Data Provider</strong></p>
            <blockquote> 
              <p align="left" class="BodyText">You can become an OAI metadata 
                provider whether you have a database or a file-based system. Becoming 
                a full data provider is the best option for projects:</p>
              <blockquote> 
                <p align="left" class="BodyText">• Actively adding metadata 
                  to their collection<br>
                  • With a large collection of metadata (over 5000 records)</p>
              </blockquote>
              <p align="left" class="BodyText">Requirements for a database system:</p>
              <blockquote> 
                <p align="left" class="BodyText">• Metadata<br>
                  • Database application <br>
                  (e.g. MySQL, Oracle, MS Access, MS SQL)<br>
                  • Web server with CGI capability <br>
                  (e.g. Apache/Tomcat, MS IIS)<br>
                  • Validating, transforming XML parser <br>
                  (e.g. Xerces, Sun’s JavaXMLPack, MSXML)</p>
              </blockquote>
              <p align="left" class="BodyText">Requirements for a file-based system:</p>
              <blockquote> 
                <p align="left" class="BodyText">• Metadata in XML or available 
                  for IMLS DCC to put into XML<br>
                  • Web server with CGI capability <br>
                  (e.g. Apache/Tomcat, MS IIS)<br>
                  • Validating, transforming XML parser <br>
                  (e.g. Xerces, Sun’s JavaXMLPack, MSXML)</p>
              </blockquote>
            </blockquote>
            <p align="left" class="BodyText"><strong>Option 2: Static OAI Data 
              Provider</strong></p>
            <blockquote> 
              <p align="left" class="BodyText"> To become a static data provider, 
                you will store your metadata records in a single, static XML file. 
                The XML file is then exposed for harvesting using a 3rd-party 
                gateway (which we will provide). This is the best option for projects:</p>
              <blockquote> 
                <p align="left" class="BodyText">• No longer adding metadata 
                  to their collection<br>
                  • With small collections (fewer than 5000 records)</p>
              </blockquote>
              <p align="left" class="BodyText">Requirements to become a static 
                data provider:</p>
              <blockquote> 
                <p align="left" class="BodyText">• Metadata in XML. (IMLS 
                  DCC will help with conversions.)<br>
                  • Available space on a web server for posting static XML 
                  files</p>
              </blockquote>
            </blockquote>
            <blockquote class="BodyText"> 
              <p align="left"><strong><a name="AOAI">General Resources About the 
                Open Archives Initiative (OAI)</a> <span class="back">(<a href="#top">back 
                to top</a>)</span></strong></p>
              <p align="left" class="BodyText"><a href="http://www.arl.org/resources/pubs/br/br217/br217mhp.shtml">Metadata 
                Harvesting and the Open Archives Initiative</a> (Clifford Lynch) 
                ARL Bimonthly Report, no. 217, August 2001.</p>
              <blockquote>
                <p align="left" class="BodyText">A good overview of the OAI and 
                  its significance.</p>
              </blockquote>
              <p align="left" class="BodyText"><a href="http://www.openarchives.org/documents/FAQ.html">Frequently 
                Asked Questions about OAI-PMH</a></p>
              <blockquote>
                <p align="left" class="BodyText">This Q&amp;A covers what OAI-PMH 
                  is and how you can become involved.</p>
              </blockquote>
              <p align="left" class="BodyText"><a href="http://www.openarchives.org/OAI/openarchivesprotocol.html">The 
                Open Archives Initiative Protocol for Metadata Harvesting</a></p>
              <blockquote>
                <p align="left" class="BodyText">The technical framework for the 
                  protocol.</p>
              </blockquote>
              <p align="left" class="BodyText"><a href="http://www.oaforum.org/tutorial/">OAI 
                for Beginners - the Open Archives Forum online tutorial</a></p>
              <blockquote>
                <p align="left" class="BodyText">An excellent tutorial that covers 
                  both the history and technical aspects of the protocol. Highly 
                  recommended.</p>
              </blockquote>
              <p align="left" class="BodyText"><a href="http://oai.grainger.uiuc.edu">University 
                of Illinois Open Archives Initiative Metadata Harvesting Project</a></p>
              <blockquote> 
                <p align="left" class="BodyText">This was an effort to create 
                  and implement a suite of OAI-based metadata harvesting services, 
                  search services, and tools to facilitate discovery and retrieval 
                  of cultural heritage resources. It serves as the basis for the 
                  IMLS DCC project. Here you can find an <a href="http://dli.grainger.uiuc.edu/Publications/TWCole/JCDL-OAI/JCDL_2003_OAI_Intro.ppt">OAI-PMH 
                  tutorial</a> (ppt) first presented at JCDL 2003.</p>
              </blockquote>
              <p align="left" class="BodyText"><strong><a name="EOSP">Examples 
                of OAI Service Providers</a> <span class="back">(<a href="#top">back 
                to top</a>)</span></strong></p>
                <p align="left" class="BodyText">Here are a few sites that provide 
                  access to metadata harvested through the OAI protocol:</p>
              <p align="left" class="BodyText"><a href="http://oaister.umdl.umich.edu/o/oaister/">OAIster</a></p>
              <blockquote>
                <p align="left" class="BodyText">OCLC's 
                  gateway to a collection of freely available, difficult-to-access, 
                  academically-oriented digital resources that are easily searchable 
                  by anyone.</p>
              </blockquote>
              <p align="left" class="BodyText"><a href="http://www.ncstrl.org/">Networked 
                Computer Science Technical Reference Library (NCSTRL)</a></p>
              <blockquote> 
                <p align="left" class="BodyText">A collaborative project involving 
                  NASA Langley, Old Dominion University, the University of Virginia, 
                  and Virginia Tech.</p>
              </blockquote>
              <p>&nbsp;</p>
            </blockquote>
            <h3 name="repository" id="repository">What is an item level repository?</h3> <strong><span class="back">(<a href="#top">back 
              to top</a>)</span></strong>
            <p align="left" class="BodyText">When we harvest metadata from the 
              NLG projects, we aggregate the data in one location, called a repository. 
              The repository acts as a portal to the item-level records for digital 
              content in NLG collections.</p>
            <p align="left" class="BodyText"><strong>Why provide access to item-level 
              records?</strong></p>
            <p align="left" class="BodyText">The repository promotes the visibility 
              and usability of NLG collections. It works in concert with the collection 
              registry so that a user can more easily discover what types of resources 
              exist in these collections. For example, a user can first search 
              the registry for all NLG collections with content related to the 
              Civil War. Normally, in order to see the individual item records 
              for this content, the user would need to search each collection 
              individually. The IMLS DCC project makes it possible for the user 
              to retrieve item-level records for Civil War-related content—in 
              all NLG collections—with one search.</p>
                </div>
</asp:Content>

<asp:Content ID="indexLeftPanel" ContentPlaceHolderID="leftPanel" runat="server">
    <% Html.RenderPartial("PartialViews/AboutContents", ViewData.Model)%>
</asp:Content>
