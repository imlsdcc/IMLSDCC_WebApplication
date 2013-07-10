<%@ Control Language="VB" Inherits="System.Web.Mvc.ViewUserControl" %>

<div id="flickr-widget-panel" class="panel">
    <h2><a href="http://www.flickr.com/people/imlsdcc/">Find us on Flickr</a></h2>
    <!-- Start of Flickr Badge -->
    <style type="text/css">
    .zg_div_inner {color:#666666; text-align:center; font-family:arial, helvetica; font-size:11px;}
    .zg_div a, .zg_div a:hover, .zg_div a:visited {color:#3993ff; background:inherit !important; text-decoration:none !important;}
    </style>
    <script type="text/javascript">
        zg_insert_badge = function () {
            var zg_bg_color = 'FCF8FA';
            var zgi_url = 'http://www.flickr.com/apps/badge/badge_iframe.gne?zg_bg_color=' + zg_bg_color + '&zg_person_id=42381338%40N04';
            document.write('<iframe style="background-color:#' + zg_bg_color + '; border-color:#' + zg_bg_color + '; border:none;" width="113" height="151" frameborder="0" scrolling="no" src="' + zgi_url + '" title="Flickr Badge"><\/iframe>');
        }
    </script>
    <div class="zg_div">
        <div class="zg_div_inner">
        <a href="http://www.flickr.com">www.<strong style="color:#3993ff">flick<span style="color:#ff1c92">r</span></strong>.com</a><br />
            <script type="text/javascript">zg_insert_badge();</script>
        </div>
    </div>
</div>
    <!-- End of Flickr Badge -->