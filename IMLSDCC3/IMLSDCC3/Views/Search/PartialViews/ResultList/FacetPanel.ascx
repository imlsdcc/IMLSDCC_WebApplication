<%@ Control Language="VB" Inherits="System.Web.Mvc.ViewUserControl" %>

<span class="field-query panel">
    <h2>Searched Terms</h2>
    <ul id="field-query-ul"></ul>
</span>
<br />

<div id="facet-panel" class="panel">
    <h2>Guided search</h2>
    
    <div id="date-facet">
        <p><strong>Time</strong></p>
        <span id="datesSpinner" class="spinner facetSpinner" style="text-align:left; color:#ccc; font-weight:bold;"><img alt="Spinner" src="<%: Url.Content("~/Images/ajax-loader-small.gif") %>" /> Searching... </span>

        <ul id="items-date-facet" class="dateFacet facet" style="display: none">
        </ul>
        <ul id="collections-date-facet" class="dateFacet facet" style="display: none">
        </ul>
        
        <div id="date-facet-buttons" style="display: none; text-align: right; margin-top: 5px;">
            <span id="more-date" class="facet-button">
                <a onclick="dcc.toggle_facets('date', 'more'); return false;" href="">+ More</a>
            </span>
            <span id="less-date" class="hidden facet-button">
                <a onclick="dcc.toggle_facets('date', 'less'); return false;" href="">- Less</a>
            </span>
            <span id="clear-date" class="facet-button">
                <a onclick="dcc.toggle_facets('date', 'clear'); return false;" href="">Clear</a>
            </span>
            <span class="facet-filter-button">
                <a href="" onclick="dcc.facetUpdate('date'); return false;">Filter</a>
            </span>
        </div>
    </div>

    
    <div id="place-facet">
        <p><strong>Place</strong></p>
        <span id="placesSpinner" class="spinner facetSpinner" style="text-align:left; color:#ccc; font-weight:bold;"><img alt="Spinner" src="<%: Url.Content("~/Images/ajax-loader-small.gif") %>" /> Searching... </span>
        
        <ul id="items-place-facet" class="placeFacet facet" style="display: none">
        </ul>
        <ul id="collections-place-facet" class="placeFacet facet" style="display: none">
        </ul>
        
        <div id="place-facet-buttons" style="display: none; text-align: right; margin-top: 5px;">
            <span id="more-place" class="facet-button">
                <a onclick="dcc.toggle_facets('place', 'more'); return false;" href="">+ More</a>
            </span>
            <span id="less-place" class="hidden facet-button">
                <a onclick="dcc.toggle_facets('place', 'less'); return false;" href="">- Less</a>
            </span>
            <span id="clear-place" class="facet-button">
                <a onclick="dcc.toggle_facets('place', 'clear'); return false;" href="">Clear</a>
            </span>
            <span class="facet-filter-button">
                <a href="" onclick="dcc.facetUpdate('place'); return false;">Filter</a>
            </span>
        </div>
    </div>

    
    <div id="type-facet">
        <p><strong>Type</strong></p>
        <span id="typesSpinner" class="spinner facetSpinner" style="text-align:left; color:#ccc; font-weight:bold;"><img alt="Spinner" src="<%: Url.Content("~/Images/ajax-loader-small.gif") %>" /> Searching... </span>
        
        <ul id="items-type-facet" class="typeFacet facet" style="display: none">
        </ul>
        <ul id="collections-type-facet" class="typeFacet facet" style="display: none">
        </ul>
        
        <div id="type-facet-buttons" style="display: none; text-align: right; margin-top: 5px;">
            <span id="more-type" class="facet-button">
                <a onclick="dcc.toggle_facets('type', 'more'); return false;" href="">+ More</a>
            </span>
            <span id="less-type" class="hidden facet-button">
                <a onclick="dcc.toggle_facets('type', 'less'); return false;" href="">- Less</a>
            </span>
            <span id="clear-type" class="facet-button">
                <a onclick="dcc.toggle_facets('type', 'clear'); return false;" href="">Clear</a>
            </span>
            <span class="facet-filter-button">
                <a href="" onclick="dcc.facetUpdate('type'); return false;">Filter</a>
            </span>
        </div>
    </div>
</div>