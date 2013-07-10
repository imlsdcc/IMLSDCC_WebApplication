<%@ Control Language="VB" Inherits="System.Web.Mvc.ViewUserControl" %>

<div id="browse-by-type" class="panel">
    <%--<h2>Browse by item type</h2>--%>
    <div id="Div1" class="panel">
        <h2>Browse By item type</h2>
        <a href="ResultList/Items/1?type=7,16,17&iStartRecord=1&iMaximumRecords=10">
            <div class="type_container">
                <div class="type_thumb" style="background: url(http://gita.grainger.uiuc.edu/thumbnails/thumbnail.aspx?identifier=oai:digital.lib.usu.edu:Ridgeway/1241); background-position: -10px -5px;"></div>
                <div class="type_label">Texts</div>
            </div>
        </a>
        <a href="ResultList/Items/1?type=1&iStartRecord=1&iMaximumRecords=10">
        <div class="type_container">
        <div class="type_thumb" style="background: url(http://gita.grainger.uiuc.edu/thumbnails/thumbnail.aspx?identifier=oai:aquifer.grainger.uiuc.edu:8ED40BC03E5014D7B7A58AA2DC5B460C3B5A1DCD&amp;format=thumbnail); background-position: -10px -10px;"></div>
        <div class="type_label">Artifacts</div>
        </div></a>
        <a href="ResultList/Items/1?type=3,11,12,13,18,19,20&iStartRecord=1&iMaximumRecords=10">
        <div class="type_container">
            <div class="type_thumb" style="
                background: url(http://gita.grainger.uiuc.edu/thumbnails/thumbnail.aspx?identifier=oai:aquifer.grainger.uiuc.edu:9BC5242EB027A717FA3EE2202D621594E1997826&amp;format=thumbnail); background-position: -10px -10px;"></div>
            <div class="type_label">Images</div>
        </div>
        </a>
    </div>

    <%--<ul>
        <li><a href="ResultList/Items/1?type=3,11,12,13,18,19,20&iStartRecord=1&iMaximumRecords=10"><img alt="Browse images" src="Images/type3-photo-off.png" /><br /><span class="caption">Images</span></a></li>
        <li><a href="ResultList/Items/1?type=7,16,17&iStartRecord=1&iMaximumRecords=10"><img alt="Browse texts" src="Images/type3-text-off.png" /><br /><span class="caption">Texts</span></a></li>
        <li><a href="ResultList/Items/1?type=1&iStartRecord=1&iMaximumRecords=10"><img alt="Browse artifacts" src="Images/type3-artifact-off.png" /><br /><span class="caption">Artifacts</span></a></li>
                    <!--<li><img src="Images/type-photo.png" /></li>
                    <li><img src="Images/type-book.png" /></li>
                    <li><img src="Images/type-map.png" /></li>
                    <li><img src="Images/type-poster.png" /></li>-->
    </ul>--%>
</div>