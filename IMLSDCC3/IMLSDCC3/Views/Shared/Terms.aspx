<%@ Page Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="indexTitle" ContentPlaceHolderID="Title" runat="server">
    IMLS DCC About
</asp:Content>
<asp:Content ID="aboutCenterPanel" ContentPlaceHolderID="centerPanel" runat="server">
    <div id="details-container">
        <h2 id="usage" name="usage">Usage - IMLS DCC Content</h2>
        <p>The IMLS DCC aggregation (which underlies this DLF/DCC DPLA Prototype)  contains metadata about collections and items from distributed libraries, archives, and museums. Most of this metadata originates at, and is the intellectual property of, those distributed libraries, archives, and museums. IMLS DCC is only responsible for the creation of collection metadata records. The usage policy below applies to collection metadata records only. Source digital collections and digital items, along with item-level metadata provided by originating institutions, are not the intellectual property of IMLS DCC. We provide some guidance for determining appropriate use below, but originating institutions must be contacted for authoritative information about the correct use of their digital objects and metadata.</p>

        <h3>Usage policy</h3>

        <p>You are free to reuse and repurpose, for non-commercial uses, metadata about collections (i.e. collection records) in IMLS DCC. We would appreciate, though, attribution to the Institute of Museum and Library Services, which has funded this collection registry since 2002, and the hosting institution of the collection. Metadata about items and digital items themselves are not the intellectual property of IMLS DCC and remain subject to whatever copyright restrictions host institutions have placed on them. See below for general guidance on digital object usage.</p>

        <h3>General guidance on digital object usage</h3>

        <h4>How do I determine if a work accessible through the IMLS DCC aggregation is in the public domain? </h4>

        <p>For the United States, the copyright date must be 1922 or earlier. Be advised that works that may be in the public domain under United States law may not be in the public domain under the laws of other countries. In addition to works in the public domain, the IMLS DCC aggregation contains links to and metadata about digital versions of some works still under copyright. In these cases, information about use must be obtained from the item’s hosting institution.</p>

        <h4>What about commercial licensing?</h4>

        <p>You must contact the copyright holders for any commercial use. The IMLS DCC will not and cannot give or withhold permission for commercial use of any work accessible through IMLS DCC.</p>


        <h2 id="copyright" name="copyright">Copyright - IMLS DCC Interface</h2>

        <p>Interface software, dispatching (metadata processing) code, and other software produced for or associated with this project fall under a <a href="http://www.opensource.org/licenses/NCSA">University of Illinois/NCSA Open Source license</a>, summarized below. This copyright statement does not apply to the content of the aggregation (the metadata); see above under “usage” for more information about usage of metadata and digital items in IMLS DCC. </p>

        <p>Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal with the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
            * Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimers.
            * Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimers in the documentation and/or other materials provided with the distribution.
            * Neither the names of IMLS DCC, University of Illinois, nor the names of its contributors may be used to endorse or promote products derived from this Software without specific prior written permission.
        THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE CONTRIBUTORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS WITH THE SOFTWARE.</p>
    </div>
</asp:Content>

<asp:Content ID="indexLeftPanel" ContentPlaceHolderID="leftPanel" runat="server">
    <% Html.RenderPartial("PartialViews/AboutContents", ViewData.Model)%>
</asp:Content>
