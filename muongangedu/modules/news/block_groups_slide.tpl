<!-- BEGIN: main -->
<link rel="stylesheet" href="{NV_BASE_SITEURL}themes/{TEMPLATE}/js/pgwslider/pgwslider.min.css">
<script type="text/javascript" src="{NV_BASE_SITEURL}themes/{TEMPLATE}/js/pgwslider/pgwslider.min.js"></script>

<style type="text/css">
	.pgwSlider .ps-current, ul.pgwSlider>li, .pgwSlider>.ps-list>li{
		font-size: inherit
	}
</style>

<ul class="pgwSlider">
	<!-- BEGIN: loop -->
    <li>
    	<a href="{ROW.link}" title="{ROW.title}">
    		<img src="{ROW.imgsource}" alt="{ROW.title}" data-description="{ROW.hometext}">
    		<span>{ROW.title}</span>
    	</a>
    </li>
    <!-- END: loop -->
</ul>
<script type="text/javascript">
$(document).ready(function() {
    $('.pgwSlider').pgwSlider();
});
</script>
<!-- END: main -->