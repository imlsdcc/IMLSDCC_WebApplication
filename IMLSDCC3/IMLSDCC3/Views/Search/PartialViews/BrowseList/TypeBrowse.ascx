<%@ Control Language="VB" Inherits="System.Web.Mvc.ViewUserControl" %>
<div id="type-browse">
    <div id ="type-pager" class="pager upper"></div>
    <div id ="type-search" class="browse-search">
        <span id="type-search-label" class="browse-label">Or enter first few letters: </span>
        <input id="type-search-text" class="browse-search-text" type="text" onkeydown="if (event.keyCode == 13) {browse.draw('','Type')}"/>
        <input id="type-search-button" class="browse-search-button" type="image" src="<%: Url.Content("~/Images/temp-search.png") %>" onclick="browse.draw('','Type')"/>
    </div>
    <div id ="type-results" class="tab browse-results-panel">
        <ul id="type-results-pager-1" class="pager"></ul>
        <div id ="type-results-panel">
            <span class="spinner" style="text-align:left; color:#ccc; font-weight:bold;"><img alt="Spinner" src="<%: Url.Content("~/Images/ajax-loader-small.gif") %>" /> Searching... </span>
        </div>
        <ul id="type-results-pager-2" class="pager"></ul>
    </div>
</div>