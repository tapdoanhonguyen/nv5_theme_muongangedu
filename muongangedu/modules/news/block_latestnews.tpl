<!-- BEGIN: main -->
<style>
	.tintuc_i{background:url({NV_BASE_SITEURL}themes/{TEMPLATE}/images/bg_news.png);height:auto;padding:7px}
</style>
<script type="text/javascript" language="javascript" src="{NV_BASE_SITEURL}themes/{TEMPLATE}/js/jcarousellite_1.0.1c4.js"></script>
<script type="text/javascript">
//<![CDATA[
$(function() {
	$(".newsticker-jcarousellite").jCarouselLite({
		vertical: true,
		hoverPause:true,
		visible: 6,
		auto:3000,
		speed:2000
	});
});
//]]>
</script>
<div class="tintuc_i row">
	<div id="newsticker-{BLOCKID}">
		<div class="newsticker-jcarousellite">
			<ul>
				<!-- BEGIN: newloop -->
				<li>
					<!-- BEGIN: imgblock -->
					<a title="{blocknews.title}" href="{blocknews.link}"><img src="{blocknews.imgurl}" alt="{blocknews.title}" class="img-thumbnail pull-left" width="80"/></a>
					<!-- END: imgblock -->
					<a title="{blocknews.title}" href="{blocknews.link}">{blocknews.title_cut}</a>
				</li>
				<!-- END: newloop -->
			</ul>
		</div>
	</div>
</div>
<!-- END: main -->
