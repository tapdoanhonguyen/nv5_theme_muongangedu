<!-- BEGIN: main -->
<div class="viewlist">
	<div class="panel panel-default">
		<!-- BEGIN: data -->
		<div class="row list-title">
			<div class="col-md-2"><strong>{LANG.number}</strong></div>
			<div class="col-md-4"><strong>{LANG.code}</strong></div>
			<div class="col-md-4"><strong>{LANG.publtime}</strong></div>
			<div class="col-md-10"><strong>{LANG.hometext}</strong></div>
			<div class="col-md-4 text-center"><strong>{LANG.files}</strong></div>
		</div>
		<!-- BEGIN: loop -->
		<div class="row list-content">
			<div class="col-md-2">{DATA.number}</div>
			<div class="col-md-4">{DATA.code}</div>
			<div class="col-md-4">{DATA.publtime}</div>
			<div class="col-md-10 text-justify"><a href="{DATA.link_view}" title="{DATA.hometext}">{DATA.hometext0}</a></div>
			<div class="col-md-4 text-center">
				<!-- BEGIN: files -->
				<a href="#" onclick="nv_download_file( {DATA.id}, {FILES.id} )" title="{LANG.download} {FILES.filename}"><em class="fa fa-download fa-pointer">&nbsp;</em></a>
				<!-- END: files -->
			</div>
		</div>
		<!-- END: loop -->
		<!-- END: data -->
	</div>
	<div class="text-center"><!-- BEGIN: page -->{PAGE}<!-- END: page --></div>
</div>
<!-- END: main -->