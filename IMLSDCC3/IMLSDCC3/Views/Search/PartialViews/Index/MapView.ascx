<%@ Control Language="VB" Inherits="System.Web.Mvc.ViewUserControl" %>
<div id="coverage-map" class="panel">
    <h2>Find collections from <span id="state-name">your state</span><span id="state-count" style="color:Gray"></span></h2>
    <div id="visualization" style="left:0;" class="panel"></div>
    <script type="text/javascript" src="<%: Url.Content("~/Scripts/Code/record-map.js") %>"></script>
</div>
