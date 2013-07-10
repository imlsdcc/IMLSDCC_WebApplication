<%@ Control Language="VB" Inherits="System.Web.Mvc.ViewUserControl" %>
<div id="institutions-browse">
    
    <div id ="institutions-pager" class="pager upper"></div>
    <div id ="institutions-search" class="browse-search" style="margin-right: 50%;">
        <span id="institutions-search-label" class="browse-label">Or enter first few letters: </span>
        <input id="institutions-search-text" class="browse-search-text" type="text" onkeydown="if (event.keyCode == 13) {browse.draw('','Institutions')}"/>
        <input id="institutions-search-button" class="browse-search-button" type="image" src="<%: Url.Content("~/Images/temp-search.png") %>" onclick="browse.draw('','Institutions')"/>
    </div>
    <%--<br />
    <br />
    <br />--%>
    <div id="institutions-browseby">
        <ul style="margin-left: -28px">
            <li class="rbutton" >Or browse by:</li>
            <li id="institutions-browseby-types" class="rbutton"><a href="/BrowseList/Institutions/Types/1/34" onclick="browse.draw(this.href);return false;">kind of institution</a></li>
            <li id="institutions-browseby-states" class="rbutton"><a href="/BrowseList/Institutions/States/1/52" onclick="browse.draw(this.href);return false;">institution location</a></li>
            <li id="institutions-browseby-names" class="rbutton"><a href="/BrowseList/Institutions/a/1/30" onclick="browse.draw(this.href);return false;">institution name</a></li>
        </ul>
        </div>
        
    <div id ="institutions-results" class="tab browse-results-panel">
        <div id="institutions-selectAnother-state" class="rbutton selectOther" style="display: none;"><a href="/BrowseList/Institutions/States/1/52" onclick="browse.draw(this.href);return false;" style="padding-top:1px;padding-bottom:1px;border:0px;">other locations</a></div>
        <div id="institutions-selectAnother-type" class="rbutton selectOther" style="display: none;"><a href="/BrowseList/Institutions/Types/1/34" onclick="browse.draw(this.href);return false;" style="padding-top:1px;padding-bottom:1px;border:0px;">other types</a></div>
        <ul id="institutions-results-pager-1" class="pager"></ul>
        <div id ="institutions-states-results-panel">
            <span class="spinner" style="text-align:left; color:#ccc; font-weight:bold;"><img alt="Spinner" src="<%: Url.Content("~/Images/ajax-loader-small.gif") %>" /> Searching... </span>
        </div>
        <div id ="institutions-results-panel">
            <span class="spinner" style="text-align:left; color:#ccc; font-weight:bold;"><img alt="Spinner" src="<%: Url.Content("~/Images/ajax-loader-small.gif") %>" /> Searching... </span>
        </div>
        <div id ="institutions-types-results-panel">
            <span class="spinner" style="text-align:left; color:#ccc; font-weight:bold;"><img alt="Spinner" src="<%: Url.Content("~/Images/ajax-loader-small.gif") %>" /> Searching... </span>
        </div>
        <ul id="institutions-results-pager-2" class="pager"></ul>
    </div>
</div>
