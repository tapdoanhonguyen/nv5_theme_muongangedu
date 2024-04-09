<!-- BEGIN: main -->
<style type="text/css">
#nukevn-bxslider a.image{display:block;height:{CONFIG.slide_height}px !important;overflow:hidden}
#nukevn-bxslider a.title{font-size:12px;}
#nukevn-bxslider{padding: 0}
#nukevn-bxslider li{border:1px #ddd solid;height: 140px;}
#nukevn-bxslider li a{display:block; text-align:center;height: 140px;overflow:hidden}
#nukevn-bxslider .bx-wrapper img {
  max-width: 100%;
  text-align: center;
}
.bx-wrapper bx-controls{
  display:none
} 
 
 
</style>
<link rel="stylesheet" href="{NV_BASE_SITEURL}themes/{TEMPLATE}/js/bxslider/jquery.bxslider.css" type="text/css" />
<script src="{NV_BASE_SITEURL}themes/{TEMPLATE}/js/bxslider/jquery.bxslider.min.js"></script>
<ul id="nukevn-bxslider" class="bxslider" style="visibility:hidden">
	<!-- BEGIN: loop -->
	<li>
		<a class="image" href="{LOOP.link}" title="{OTHERNEWS.title}" ><img src="{LOOP.thumb}" alt="{LOOP.title}" /></a>
		<a class="title" href="{LOOP.link}">{LOOP.title_cut}</a>
		</li>
		<!-- END: loop -->
	</ul> 
<script type="text/javascript">
$('#nukevn-bxslider').bxSlider({
  minSlides: {CONFIG.slide_min},
  maxSlides: {CONFIG.slide_max},
  slideWidth: {CONFIG.slide_width},
  slideMargin: 10,
  onSliderLoad: function(){
	$('#nukevn-bxslider').css("visibility", "visible");
  }
});
</script>
<!-- END: main -->