<!-- BEGIN: main -->
<ul class="block_laws_block">
	<!-- BEGIN: loop -->
	<li>
		<strong>{DATA.organ}</strong>
		<span class="help-block">{DATA.hometext_clean}</span>
		<span class="pull-left"><a href="{DATA.url}" title="{LANG.detail}">{LANG.detail}</a></span>
		<span class="pull-right">
			<!-- BEGIN: files -->
			<a href="#" onclick="nv_download_file( {DATA.id}, {FILES.id} )" title="{LANG.download} {FILES.filename}"><em class="fa fa-download fa-pointer">&nbsp;</em></a>
			<!-- END: files -->
		</span>
		<span class="clearfix"></span>
	</li>
	<!-- END: loop -->
</ul>

<!-- BEGIN: file_js -->
<script>
	function nv_download_file(lawsid, fileid)
	{
		window.location.href = nv_base_siteurl + "index.php?" + nv_lang_variable + "=" + nv_lang_data + "&" + nv_name_variable + "={MODULE_NAME}&" + nv_fc_variable + "=download&fileid=" + fileid + '&lawsid=' + lawsid;
		return false;
	}
</script>
<!-- END: file_js -->

<!-- END: main -->