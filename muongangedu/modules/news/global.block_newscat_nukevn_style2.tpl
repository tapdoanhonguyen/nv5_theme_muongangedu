<!-- BEGIN: main -->
<style type="text/css">
.box-group2-news ul{padding:0;margin:0}
.box-group2-news ul li{border-bottom: 1px #ccc dotted;padding:0 5px;}
.box-group2-news ul li a.title{font-size:14px;}
.box-group2-news ul li a img{}
</style>
<div class="clearfix box-group2-news">
	<ul>
		<!-- BEGIN: loop -->
		<li class="clearfix">
			<a title="{LOOP.title}" href="{LOOP.link}"><img src="{LOOP.thumb}" alt="{LOOP.title}" width="70" class="img-thumbnail pull-left"></a>
			<a class="title" title="{LOOP.title}" href="{LOOP.link}">{LOOP.title_cut}</a>
		</li>
		<!-- END: loop -->
	</ul>
</div>
<!-- END: main -->