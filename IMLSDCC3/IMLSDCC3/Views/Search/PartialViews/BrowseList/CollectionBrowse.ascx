<%@ Control Language="VB" Inherits="System.Web.Mvc.ViewUserControl" %>
<div id="collections-browse">
    <div id ="collections-pager" class="pager upper"></div>
    <div id ="collections-search" class="browse-search">
        <span id="collections-search-label" class="browse-label">Or enter first few letters: </span>
        <input id="collections-search-text" class="browse-search-text" type="text" onkeydown="if (event.keyCode == 13) {browse.draw('','Collections')}"/>
        <input id="collections-search-button" class="browse-search-button" type="image" src="<%: Url.Content("~/Images/temp-search.png") %>" onclick="browse.draw('','Collections')" />
    </div>
    <div id ="collections-results" class="tab browse-results-panel">
        <ul id="collections-results-pager-1" class="pager"></ul>
        <div id ="collections-results-panel">
            <span class="spinner" style="text-align:left; color:#ccc; font-weight:bold;"><img alt="Spinner" src="<%: Url.Content("~/Images/ajax-loader-small.gif") %>" /> Searching... </span>
        </div>
        <ul id="collections-results-pager-2" class="pager"></ul>
    </div>
</div>