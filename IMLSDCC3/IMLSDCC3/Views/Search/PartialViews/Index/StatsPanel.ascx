<%@ Control Language="VB" Inherits="System.Web.Mvc.ViewUserControl" %>

<div id="stats-panel" class="panel">
    <h2>Stats</h2>
    <ul>
        <li>
        <a href="/BrowseList/Title/a/1/30">
            Items<br />
            <span id="statsItems" class="stat">
            </span></a>
        </li>
        <li>
        <a href="/BrowseList/Collections/a/1/30">
                Collections<br />
                <span id="statsColl" class="stat">
            </span></a>
        </li>
        <li>
        <a href="/BrowseList/Institutions/a/1/30">
                Institutions<br />
                <span id="statsInstit" class="stat">
            </span></a>
        </li>
    </ul>
    <script type="text/javascript">
        index.stats();
    </script>
</div>