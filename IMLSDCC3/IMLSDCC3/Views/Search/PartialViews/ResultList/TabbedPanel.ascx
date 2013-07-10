<%@ Control Language="VB" Inherits="System.Web.Mvc.ViewUserControl" %>



 <div class="demo">
    <div id="tabs">
        <ul class="tabbedPannel">
            <li><a id="tabs-iTitle" href="#tabs-i" onclick="dcc.tabChange('Items')">Item Matches</a></li>
            <li><a id="tabs-cTitle" href="#tabs-c" onclick="dcc.tabChange('Collections')">Collection Matches</a></li>
        </ul>
        <div id="tabs-i">
            <div class="tab tab-default" id="item">
                <%--<h2><span class="field-totalRecords"></span> matches for "<span class="field-query"></span>"</h2>--%>
                <div class="match-description">
                    <div id="item-count-1" class="description itemDescription">
                        <%--<span class="field-startRecord"></span> - <span class="field-endRecord"></span> of <span class="field-totalRecords"></span> items--%>
                    </div>
                    <div>
                        <ul id="item-pager-1" class="pager itemPager"></ul>
                        <span class="spinner itemSpinner" style="text-align:left; color:#ccc; font-weight:bold;"><img alt="Spinner" src="<%: Url.Content("~/Images/ajax-loader-small.gif") %>" /> Searching... </span>
                    </div>
                </div>
                <div id="item-matches">
        	        <ol id="item-page-1">
        	        <!-- Search results go here -->
        	        </ol>
		        </div>
                <div class="match-description">
                    <div id="item-count-2" class="description itemDescription">
                        <%--<span class="field-startRecord"></span> - <span class="field-endRecord"></span> of <span class="field-totalRecords"></span> items--%>
                    </div>
                    <div>
                        <ul id="item-pager-2" class="pager itemPager"></ul>
                    </div>
                </div>
            </div>
        </div>
        <div id="tabs-c">
            <div class="tab tab-default" id="collection">
                <%--<h2><span class="field-totalRecords"></span> matches for "<span class="field-query"></span>"</h2>--%>
                <div class="match-description">
                    <div id="collection-count-1" class="description collectionDescription">
                        <%--<span class="field-startRecord"></span> - <span class="field-endRecord"></span> of <span class="field-totalRecords"></span> items--%>
                    </div>
                    <div>
                        <ul id="collection-pager-1" class="pager collectionPager"></ul>
                        <span class="spinner collectionSpinner" style="text-align:left; color:#ccc; font-weight:bold;"><img alt="Spinner" src="<%: Url.Content("~/Images/ajax-loader-small.gif") %>" /> Searching... </span>
                    </div>
                </div>
                <div id="collection-matches">
        	        <ol id="collection-page-1">
        	        <!-- Search results go here -->
        	        </ol>
		        </div>
                <div class="match-description">
                    <div id="collection-count-2" class="description collectionDescription">
                        <%--<span class="field-startRecord"></span> - <span class="field-endRecord"></span> of <span class="field-totalRecords"></span> items--%>
                    </div>
                    <div>
                        <ul id="collection-pager-2" class="pager collectionPager"></ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
 </div>


<script type="text/javascript">
    $(function () {

        $("#tabs").tabs();
        dcc.runService('', null, true);
        var iorcTab = (document.location.href).split('?')[0].search('Items');
        if (iorcTab > 0) {
            $("#tabs").tabs('select', 0);
            if (iorcTab == 'Collections') {
                $("#tabs").tabs('disable', 1);
            }
        } else {
            $("#tabs").tabs('select', 1);
            if (iorcTab == 'Items') {
                $("#tabs").tabs('disable', 0);
            }
        }
        
        dcc.secondarySources();
    });
 </script>