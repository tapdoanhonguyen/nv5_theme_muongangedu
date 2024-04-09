<!-- BEGIN: main -->
<style type="text/css">
div.img-news a img {
	width: 100%;
	height: 165px;
}
.box-home-news ul {
    list-style: none outside none;
    margin: 15px 0 0;
    padding: 0;
}
.box-home-news li {
    border-bottom: 1px solid #ccc;
    margin: 4px 0;
    padding-bottom: 4px;
}
.box-home-news li.first a {
   font-size:16px
}
.box-home-news li a {
    padding: 5px 0 5px 0px;
    font-size: 12px;
    font-family: Arial, Helvetica, sans-serif;
    text-align: justify;
    font-weight: 600;
}
</style>
<div class="clearfix box-home-news">
	<div class="img-news"><a href="{FIRST.link}" title="{FIRST.title}"><img border="0" src="{FIRST.thumb}" class="img-news-home"></a></div>
	<ul>
		<li class="first"><a title="{FIRST.title}" href="{FIRST.link}">{FIRST.title}</a></li>
		<!-- BEGIN: loop -->
		<li><a title="{LOOP.title}" href="{LOOP.link}"><i class="fa fa-arrow-right" aria-hidden="true"></i> {LOOP.title_cut}</a></li>
		<!-- END: loop -->
	</ul>
</div>
<!-- END: main -->