<html>
    <head>
        <link rel="stylesheet" type="text/css" href="libs/bootstrap/css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="libs/bootstrap/css/bootstrap-responsive.min.css" />
        <link rel="stylesheet" type="text/css" href="Layouts/css/style.css" />
        <link rel="stylesheet" href="libs/font-awesome/css/font-awesome.min.css">
    </head>
    <body>
        <div class="container-fluid">
            <div class="row-fluid">
                <div class="span2">
                    <img src="{$RESTORANT['image']}" >
                </div>
                <div class="span6">
                    <br>
                    <span style="font-size: 16pt;"> {$RESTORANT['name']} </span>
                    <br>
                    <br>
                    <br>
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
                <div class="row-fluid">
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
                        {if ($smarty.foreach.foo.index + 1) % 2  == 0 and $smarty.foreach.foo.index neq 0}
                           </div>
                           <div class="row-fluid">
                        {/if}
                    {/foreach}
                </div>
            </div>
        </div>
    </body>
</html>