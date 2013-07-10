<%@ Control Language="VB" Inherits="System.Web.Mvc.ViewUserControl" %>

<br />

<div id="metasearch-panel" class="panel">
    <h2>Secondary Source matches</h2>
        <div id='meta_search_hathi'>  <span style="text-align:left; color:#ccc; font-weight:bold;"><img alt="Spinner" src="<%: Url.Content("~/Images/ajax-loader-small.gif") %>" /> Searching... </span></div>
        <div id='meta_search_googbk'><span style="text-align:left; color:#ccc; font-weight:bold;"><img alt="Spinner" src="<%: Url.Content("~/Images/ajax-loader-small.gif") %>" /> Searching... </span></div>
        <div id='meta_search_amer'>  <span style="text-align:left; color:#ccc; font-weight:bold;"><img alt="Spinner" src="<%: Url.Content("~/Images/ajax-loader-small.gif") %>" /> Searching... </span></div>
        <div id='meta_search_jstor'><span style="text-align:left; color:#ccc; font-weight:bold;"><img alt="Spinner" src="<%: Url.Content("~/Images/ajax-loader-small.gif") %>" /> Searching... </span></div>
        <div id='meta_search_acse'><span style="text-align:left; color:#ccc; font-weight:bold;"><img alt="Spinner" src="<%: Url.Content("~/Images/ajax-loader-small.gif") %>" /> Searching... </span></div>
        <div id='meta_search_scopus'><span style="text-align:left; color:#ccc; font-weight:bold;"><img alt="Spinner" src="<%: Url.Content("~/Images/ajax-loader-small.gif") %>" /> Searching... </span></div>
</div>
