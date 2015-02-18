{include file="Layouts/Base/Header.tpl"}
    <div class="container">
        <div id="slides" class="row" style="height: 100%;">
            <div class="slides-container">
                {foreach item=RESTORANT from=$DATA}
                    <div class="row">
                        <div class="container-fluid" style="border-bottom: 1px;">
                            <div class="span2">
                                <div style="background-image: url({$RESTORANT['image']}); height: 20%; width: 100%; background-repeat: no-repeat;">
                                    &nbsp;
                                </div>
                            </div>
                            <div class="span6">
                                <span style="font-size: 16pt;"> {$RESTORANT['name']} </span>
                                <br>
                                <br>
                                <br>
                                <!-- LikeBtn.com BEGIN -->
                                <span class="likebtn-wrapper" data-white_label="true"></span>
                                <script>
                                    {literal}
                                    (function(d,e,s){a=d.createElement(e);m=d.getElementsByTagName(e)[0];a.async=1;a.src=s;m.parentNode.insertBefore(a, m)})(document,"script","//w.likebtn.com/js/w/widget.js");
                                    {/literal}
                                </script>
                                <!-- LikeBtn.com END -->
                            </div>
                            <div class="span4" style="font-size: 12pt;">
                                <div class="padding5px">
                                    <span>
                                        <i class="fa fa-clock-o fa-2x"></i>&nbsp;&nbsp; Time: {$RESTORANT['delivery_time']}
                                    </span>
                                </div>
                                <div class="padding5px">
                                    <span>
                                        <i class="fa fa-truck fa-2x"></i>&nbsp;&nbsp; Delivery: {$RESTORANT['delivery_charge']}
                                    </span>
                                </div>
                                <div class="padding5px">
                                    <span>
                                        <i class="fa fa-shopping-cart fa-2x"></i>&nbsp;&nbsp; Min. Order: {$RESTORANT['min_order']}/-
                                    </span>
                                </div>
                                <div class="padding5px">
                                    <span>
                                        <i class="fa fa-credit-card fa-2x"></i>&nbsp;&nbsp; COD or Online
                                    </span>
                                </div>
                            </div>
                        </div>
                        <br>
                        <div class="container-fluid">
                            {foreach item=MENU from=$RESTORANT['menu'] name=foo}
                                <div class="span6">
                                    <div class="well">
                                        <span stye="font-size: 12pt;">
                                            {$MENU['item']}
                                        </span>
                                        <span class="pull-right">
                                            {$MENU['price']} &nbsp;&nbsp;
                                        </span>
                                    </div>
                                </div>
                                {if ($smarty.foreach.foo.index + 1) % 2 == 0 and $smarty.foreach.foo.index != 0}
                                   </div>
                                   <div class="container-fluid">
                                {/if}
                            {/foreach}
                        </div>
                        <br>
                        <div class="container-fluid">
                            <div class="span6">&nbsp;</div>
                            <div class="span6 pull-right">
                                <form class="download_form" href="index.php" method="POST">
                                    <input type="hidden" name="action" value="PDF" />
                                    <input type="hidden" name="data" value='{Utils::jsonEncode($RESTORANT)}' />
                                    Download : <a href="javascript:{}" onclick="jQuery(this).closest('.download_form').submit();"><i class="fa fa-download fa-2x"></i></a>
                                </form>
                            </div>
                        </div>
                    </div>
                {/foreach}
            </div>
            <nav class="slides-navigation">
                <a href="#" class="next pull-right"><i class="fa fa-chevron-circle-right fa-3x"></i></a>
                <a href="#" class="prev pull-left"><i class="fa fa-chevron-circle-left fa-3x"></i></a>
            </nav>
        </div>
    </div>

    <script src="libs/jquery/superslides/js/jquery.easing.1.3.js"></script>
    <script src="libs/jquery/superslides/js/jquery.animate-enhanced.min.js"></script>
    <script src="libs/jquery/superslides/js/jquery.superslides.min.js" type="text/javascript" charset="utf-8"></script>
    <script>
      $(function() {
        $('#slides').superslides({
          hashchange: false
        });
      });
    </script>
	<script>
      {literal}
	  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

	  ga('create', 'UA-59882246-1', 'auto');
	  ga('send', 'pageview');
      {/literal}
	</script>
</body>
</html>