<%@ Control Language="VB" Inherits="System.Web.Mvc.ViewUserControl" %>
<div id="date-browse">
    <div id ="browse-by-date" class="panel"></div>
    <div id ="date-search" class="browse-search">
        <span id="date-search-label" class="browse-label">Or enter first few numbers or letters of a date: </span>
        <input id="date-search-text" class="browse-search-text" type="text" onkeydown="if (event.keyCode == 13) {browse.draw('','Date')}"/>
        <input id="date-search-button" class="browse-search-button" type="image" src="<%: Url.Content("~/Images/temp-search.png") %>" onclick="browse.draw('','Date')"/>
    </div>
    <div id ="date-results" class="tab browse-results-panel">
        <ul id="date-results-pager-1" class="pager"></ul>
        <div id ="date-results-panel">
            <span class="spinner" style="text-align:center; color:#ccc; font-weight:bold;"><img alt="Spinner" src="<%: Url.Content("~/Images/ajax-loader-small.gif") %>" /> Searching... </span>
        </div>
        <ul id="date-results-pager-2" class="pager"></ul>
    </div>
</div>