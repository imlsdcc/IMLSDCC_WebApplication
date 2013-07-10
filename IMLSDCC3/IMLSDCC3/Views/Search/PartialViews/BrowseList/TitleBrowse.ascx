<%@ Control Language="VB" Inherits="System.Web.Mvc.ViewUserControl" %>
<div id="title-browse">
    <div id ="title-pager" class="pager upper"></div>
    <div id ="title-search" class="browse-search">
        <span id="title-search-lable" class="browse-label">Or enter first few letters: </span>
        <input id="title-search-text" class="browse-search-text" type="text" onkeydown="if (event.keyCode == 13) {browse.draw('','Title')}"/>
        <input id="title-search-button" class="browse-search-button" type="image" src="<%: Url.Content("~/Images/temp-search.png") %>" onclick="browse.draw('','Title')"/>
    </div>
    <div id ="title-results" class="tab browse-results-panel">
        <ul id="title-results-pager-1" class="pager"></ul>
        <div id ="title-results-panel">
            <span class="spinner" style="text-align:left; color:#ccc; font-weight:bold;"><img alt="Spinner" src="<%: Url.Content("~/Images/ajax-loader-small.gif") %>" /> Searching... </span>
        </div>
        <ul id="title-results-pager-2" class="pager"></ul>
    </div>
</div>