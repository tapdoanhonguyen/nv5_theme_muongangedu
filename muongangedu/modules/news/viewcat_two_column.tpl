<!-- BEGIN: main -->
<!-- BEGIN: viewdescription -->
<div class="news_column">
    <div class="alert alert-info clearfix">
        <h3>{CONTENT.title}</h3>
        <!-- BEGIN: image -->
        <img alt="{CONTENT.title}" src="{HOMEIMG1}" width="{IMGWIDTH1}" class="img-thumbnail pull-left imghome" />
        <!-- END: image -->
        <p class="text-justify">{CONTENT.description}</p>
    </div>
</div>
<!-- END: viewdescription -->
<div class="news_column">
    <!-- BEGIN: catcontent -->
    <!-- BEGIN: content -->
    <div class="panel panel-default clearfix">
        <div class="panel-body">
            <!-- BEGIN: image -->
            <a href="{NEWSTOP.link}" title="{NEWSTOP.title}" {NEWSTOP.target_blank}><img alt="{HOMEIMGALT0}" src="{HOMEIMG0}" width="{IMGWIDTH0}" class="img-thumbnail pull-left imghome" /></a>
            <!-- END: image -->
            <h3>
                <a href="{NEWSTOP.link}" title="{NEWSTOP.title}" {NEWSTOP.target_blank}>{NEWSTOP.title}</a>
            </h3>
            <div class="text-justify">
                {NEWSTOP.hometext}
            </div>
        </div>
        <!-- END: content -->
        <ul class="related list-items">
            <!-- BEGIN: other -->
            <li>
                <a class="show h4" href="{NEWSTOP.link}" {NEWSTOP.target_blank} <!-- BEGIN: tooltip -->data-content="{NEWSTOP.hometext_clean}" data-img="{NEWSTOP.imghome}" data-placement="{TOOLTIP_POSITION}" data-rel="tooltip"<!-- END: tooltip --> title="{NEWSTOP.title}">{NEWSTOP.title}</a>
            </li>
            <!-- END: other -->
        </ul>
    </div>
    <!-- END: catcontent -->
</div>
<div class="row">
<!-- BEGIN: loopcat -->
<!-- BEGIN: block_topcat -->
<div class="block-top clear">
    {BLOCK_TOPCAT}
</div>
<!-- END: block_topcat -->
<div class="news_column two_column col-md-12">
    <div class="panel panel-default clearfix">
        <h2><a title="{CAT.title}" href="{CAT.link}">{CAT.title}</a></h2>
        <div class="panel-body">
            <!-- BEGIN: content -->
            <h3><a href="{CONTENT.link}" title="{CONTENT.title}" {CONTENT.target_blank}>{CONTENT.title}</a></h3>
            <!-- BEGIN: image -->
            <a href="{CONTENT.link}" title="{CONTENT.title}" {CONTENT.target_blank}><img alt="{HOMEIMGALT01}" src="{HOMEIMG01}" width="{IMGWIDTH0}" class="img-thumbnail pull-left imghome" /></a>
            <!-- END: image -->
            <p>{CONTENT.hometext}</p>
            <!-- END: content -->
            <ul class="related list-items">
                <!-- BEGIN: other -->
                <li class="{CLASS}">
                    <a class="show h4" href="{CONTENT.link}" {CONTENT.target_blank} <!-- BEGIN: tooltip -->data-content="{CONTENT.hometext_clean}" data-img="{CONTENT.imghome}" data-rel="tooltip" data-placement="{TOOLTIP_POSITION}"<!-- END: tooltip --> title="{CONTENT.title}">{CONTENT.title}</a>
                </li>
                <!-- END: other -->
            </ul>
        </div>
    </div>
</div>
<!-- BEGIN: block_bottomcat -->
<div class="bottom-cat clear">
    {BLOCK_BOTTOMCAT}
</div>
<!-- END: block_bottomcat -->
<!-- END: loopcat -->
</div>
<div class="clear"></div>
<script type="text/javascript">
var cat2ColTimer;
$.scrollbarWidth=function(){var a,b,c;if(c===undefined){a=$('<div style="width:50px;height:50px;overflow:auto"><div/></div>').appendTo('body');b=a.children();c=b.innerWidth()-b.height(99).innerWidth();a.remove()}return c};
function fixColumnHeight(){
    var winW = $(document).width() + $.scrollbarWidth();
    if (winW < 992) {
        $('.two_column .panel-body').height('auto');
    } else {
        $.each($('.two_column .panel-body'), function(k,v) {
            if(k % 2 == 0) {
                $($('.two_column .panel-body')[k]).height('auto');
                $($('.two_column .panel-body')[k+1]).height('auto');
                var height1 = $($('.two_column .panel-body')[k]).height();
                var height2 = $($('.two_column .panel-body')[k+1]).height();
                var height = (height1 > height2 ? height1 : height2);
                $($('.two_column .panel-body')[k]).height(height);
                $($('.two_column .panel-body')[k+1]).height(height);
            }
        });
    }
}
$(window).on('load', function() {
    cat2ColTimer = setTimeout(function(){
       fixColumnHeight();
    }, 100)
});
$(function(){
    $(window).resize(function(){
        clearTimeout(cat2ColTimer)
        cat2ColTimer = setTimeout(function(){
           fixColumnHeight();
        }, 100)
    });
});
</script>
<!-- END: main -->
