<!-- BEGIN: subcat -->
<ul>
	<!-- BEGIN: loop -->
	<li>
		<a href="{SUBCAT.link}" title="{SUBCAT.title}">{SUBCAT.title0}</a>
		<!-- BEGIN: sub -->
		{SUB}
		<!-- END: sub -->
	</li>
	<!-- END: loop -->
</ul>
<!-- END: subcat -->

<!-- BEGIN: main -->
<link rel="stylesheet" type="text/css"	href="{NV_BASE_SITEURL}themes/{TEMPLATE}/css/jquery.metisMenu.css" />
<script type="text/javascript" src="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/jquery/jquery.metisMenu.js"></script>

<div class="clearfix panel metismenu">
	<aside class="sidebar">
		<nav class="sidebar-nav">
			<ul id="menu_{BLOCK_ID}">
				<!-- BEGIN: cat -->
				<li>
					<a href="{CAT.link}" title="{CAT.title}">{CAT.title0}</a>
					<!-- BEGIN: subcat -->
					<span class="fa arrow expand">&nbsp;</span>
					{SUBCAT}
					<!-- END: subcat -->
				</li>
				<!-- END: cat -->
			</ul>
		</nav>
	</aside>
</div>

<script type="text/javascript">
$(function () {
	$('#menu_{BLOCK_ID}').metisMenu({
        toggle: false
    });
});
</script>
<!-- END: main -->

<!-- BEGIN: config -->
<tr>
	<td>{LANG.type}</td>
	<td>
		<select name="config_type" class="form-control">
			<!-- BEGIN: type -->
			<option value="{TYPE.index}" {TYPE.selected}>{TYPE.value}</option>
			<!-- END: type -->
		</select>
	</td>
</tr>
<tr>
	<td>{LANG.title_length}</td>
	<td><input tyle="number" class="form-control" name="config_title_length" value="{DATA.title_length}" /></td>
</tr>
<!-- END: config -->