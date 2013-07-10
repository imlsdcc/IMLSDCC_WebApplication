﻿<%@ Control Language="VB" Inherits="System.Web.Mvc.ViewUserControl" %>

<div id="comments" class="panel">
    <h2>Participate</h2>                                         
    <!--Start Disqus commenting module-->
    <div id="disqus_thread"></div>
    <script type="text/javascript">
        /* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
        var disqus_shortname = 'imlsdcc'; // required: replace example with your forum shortname
        var disqus_developer = 1;
        var disqus_title = $("#item-title").text();
        // var disqus_identifier = 'unique_dynamic_id_1234';
        // var disqus_url = 'http://example.com/permalink-to-page.html';

        /* * * DON'T EDIT BELOW THIS LINE * * */
        (function () {
            var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
            dsq.src = 'http://' + disqus_shortname + '.disqus.com/embed.js';
            (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
        })();
    </script>
                   


    <noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
    <a href="http://disqus.com" class="dsq-brlink">powered by <span class="logo-disqus">Disqus</span></a>
    <!--End Disqus Module -->
</div>