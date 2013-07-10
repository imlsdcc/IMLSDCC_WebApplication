<%@ Control Language="VB" Inherits="System.Web.Mvc.ViewUserControl" %>

<div id="social-panel" class="panel">
	<h2>Find this interesting? Share it!</h2>
	<div  style="float:left; margin-right: 5px"><a href="http://twitter.com/share" class="twitter-share-button" data-count="none">Tweet</a><script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script></div>
	<div id="fb-root"></div><fb:like href="" send="false" layout="button_count" width="90" show_faces="false" font=""></fb:like>
	<div id="gp-root" style="float:left; margin-right: 5px"><g:plusone size="medium" count="false"></g:plusone></div>
	<script>		                    (function () { var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true; po.src = 'https://apis.google.com/js/plusone.js'; var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s); })();</script>
	<script src="http://connect.facebook.net/en_US/all.js#appId=123363687758204&amp;xfbml=1"></script>
</div>