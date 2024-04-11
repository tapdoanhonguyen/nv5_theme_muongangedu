<!-- BEGIN: main -->
<div class="detail">
	<div class="panel panel-default">
		<div class="panel-heading"><h1>{DATA.title}</h1></div>
		<div class="panel-body">
			<!-- BEGIN: hometext -->
			<p>{DATA.hometext}</p>
			<hr />
			<!-- END: hometext -->
			<dl class="dl-horizontal">
				<dt>{LANG.code}</dt>
				<dd>{DATA.code}</dd>

				<dt>{LANG.cat}</dt>
				<dd><a href="{DATA.cat.link}" title="{DATA.cat.title}">{DATA.cat.title}</a></dd>

				<dt>{LANG.area}</dt>
				<dd><a href="{DATA.area_link}" title="{DATA.area}" >{DATA.area}</a></dd>

				<!-- BEGIN: block -->
				<dt>{LANG.block}</dt>
				<dd><a href="{DATA.block_link}" title="{DATA.block}">{DATA.block}</a></dd>
				<!-- END: block -->
				
				<dt>{LANG.organ}</dt>
				<dd><a href="{DATA.organ_link}" title="{DATA.organ}">{DATA.organ}</a></dd>

				<dt>{LANG.publtime}</dt>
				<dd>{DATA.publtime}</dd>

				<dt>{LANG.startvalid}</dt>
				<dd>{DATA.startvalid}</dd>

				<dt>{LANG.exptime}</dt>
				<dd>{DATA.exptime}</dd>

				<dt>{LANG.signer}</dt>
				<dd><a href="{DATA.signer_link}" title="{DATA.signer}">{DATA.signer}</a></dd>
				
				<!-- BEGIN: invite_field -->
				<dt>{LANG.invite_time}</dt>
				<dd>{DATA.invite_time}</dd>
				
				<dt>{LANG.invite_address}</dt>
				<dd>{DATA.invite_address}</dd>
				
				<dt>{LANG.invite_owner}</dt>
				<dd>{DATA.invite_owner}</dd>
				
				<!-- END: invite_field -->
			</dl>
		</div>
	</div>

	<!-- BEGIN: bodytext -->
	<div class="panel panel-default">
		<div class="panel-heading">{LANG.content}</div>
		<div class="panel-body">
			{DATA.bodytext}
		</div>
	</div>
	<!-- END: bodytext -->

	<!-- BEGIN: files -->
	<div class="panel panel-default">
		<div class="panel-heading">{LANG.files}</div>
		<div class="panel-body">
			<ul>
			<!-- BEGIN: loop -->
			<li>
				<div class="row">
					<div class="col-xs-20 col-sm-20 col-md-20">
						<!-- BEGIN: path -->
						<a href="#" onclick="nv_download_file( {DATA.id}, {FILES.fileid}, 'path' )" class="show" title="{LANG.download} {FILES.filename}"><em class="fa fa-download fa-pointer">&nbsp;</em>{FILES.filename}</a>
						<!-- END: path -->
						<!-- BEGIN: url -->
						<a href="{FILES.filename}" target="_blank" onclick="nv_download_file( {DATA.id}, {FILES.fileid}, 'url' );" class="show" title="{LANG.download} {FILES.filename}"><em class="fa fa-download fa-pointer">&nbsp;</em>{FILES.filename}</a>
						<!-- END: url -->
					</div>
					<div class="col-xs-4 col-sm-4 col-md-4 text-right">{LANG.downcount}: <strong>{FILES.downcount}</strong></div>
				</div>
			</li>
			<!-- END: loop -->
			</ul>
		</div>
	</div>
	<!-- END: files -->
</div>
<!-- END: main -->