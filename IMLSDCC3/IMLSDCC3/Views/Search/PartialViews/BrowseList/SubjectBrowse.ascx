<%@ Control Language="VB" Inherits="System.Web.Mvc.ViewUserControl" %>
<div id="subject-browse">
    <div id ="subject-pager" class="pager upper"></div>
    <div id ="subject-search" class="browse-search">
        <span id="subject-search-label" class="browse-label">Or enter first few letters: </span>
        <input id="subject-search-text" class="browse-search-text" type="text" onkeydown="if (event.keyCode == 13) {browse.draw('','Subject')}"/>
        <input id="subject-search-button" class="browse-search-button" type="image" src="<%: Url.Content("~/Images/temp-search.png") %>" onclick="browse.draw('','Subject')"/>
    </div>
    <div id ="subject-results" class="tab browse-results-panel">
        <ul id="subject-results-pager-1" class="pager"></ul>
        <div id ="subject-results-panel">
            <span class="spinner" style="text-align:left; color:#ccc; font-weight:bold;"><img alt="Spinner" src="<%: Url.Content("~/Images/ajax-loader-small.gif") %>" /> Searching... </span>
        </div>
        <ul id="subject-results-pager-2" class="pager"></ul>
    </div>
</div>