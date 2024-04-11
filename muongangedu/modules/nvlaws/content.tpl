<!-- BEGIN: main -->
<link type="text/css" href="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/ui/jquery.ui.core.css" rel="stylesheet" />
<link type="text/css" href="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/ui/jquery.ui.theme.css" rel="stylesheet" />
<link type="text/css" href="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/ui/jquery.ui.menu.css" rel="stylesheet" />
<link type="text/css" href="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/ui/jquery.ui.datepicker.css" rel="stylesheet" />

<!-- BEGIN: error -->
<div class="alert alert-warning">
	{ERROR}
</div>
<!-- END: error -->

<form class="form-horizontal" action="{NV_BASE_SITEURL}index.php?{NV_LANG_VARIABLE}={NV_LANG_DATA}&amp;{NV_NAME_VARIABLE}={MODULE_NAME}&amp;{NV_OP_VARIABLE}={OP}" method="post" enctype="multipart/form-data">
	<input type="hidden" name="id" value="{ROW.id}" />
	<div class="row">
		<div class="col-md-18">
			<div class="panel panel-default">
				<div class="panel-body">
					<div class="form-group">
						<label class="col-sm-5 col-md-4 control-label"><strong>{LANG.title}</strong></label>
						<div class="col-sm-19 col-md-20">
							<input class="form-control required" type="text" name="title" value="{ROW.title}" required="required" oninvalid="setCustomValidity( nv_required )" oninput="setCustomValidity('')" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-5 col-md-4 control-label"><strong>{LANG.code}</strong></label>
						<div class="col-sm-19 col-md-20">
							<input class="form-control required" type="text" name="code" value="{ROW.code}" required="required" oninvalid="setCustomValidity( nv_required )" oninput="setCustomValidity('')" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-5 col-md-4 control-label"><strong>{LANG.hometext}</strong></label>
						<div class="col-sm-19 col-md-20">
							<textarea class="form-control required" style="height:100px;" cols="75" rows="5" name="hometext">{ROW.hometext}</textarea>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-5 col-md-4 control-label"><strong>{LANG.bodytext}</strong></label>
						<div class="col-sm-19 col-md-20">
							{ROW.bodytext}
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-5 col-md-4 control-label"><strong>{LANG.files}</strong></label>
						<div class="col-sm-19 col-md-20">
							<div id="listfile" data-numfile="{NUMFILE}" data-upload="{MODULE_UPLOAD}">
								<!-- BEGIN: files -->
								<div class="input-group m-bottom">
									<span class="input-group-btn">
										<button class="btn btn-default" onclick="$(this).parent().parent().slideUp().remove(); return false;">
											<em class="fa fa-trash-o fa-fix">&nbsp;</em>
										</button>
									</span>
									<input class="form-control" type="text" name="files[]" id="file_{FILES.number}" value="{FILES.src}" placeholder="{LANG.files_note}" />
									<span class="input-group-btn">
										<button class="btn btn-default" onclick="$('#upload_fileupload_{FILES.number}').click(); return false;">
											<em class="fa fa-folder-open-o fa-fix">&nbsp;</em>
										</button>
									</span>
								</div>
								<input type="file" name="upload_fileupload[]" id="upload_fileupload_{FILES.number}" data-number="{FILES.number}" onchange="upload_fileupload_change($(this), {FILES.number}); return false;" value="{FILES.src}" style="display: none" />
								<!-- END: files -->
							</div>
							<button class="btn btn-primary btn-xs" id="addfile"><em class="fa fa-hand-pointer-o">&nbsp;</em>{LANG.files_add}</button>
						</div>
					</div>
					<div class="form-group" style="text-align: center"><input class="btn btn-primary" name="submit" type="submit" value="{LANG.save}" />
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-6">
			<div class="panel panel-default">
				<div class="panel-body">
					<div class="form-group">
						<label><strong>{LANG.cat}</strong></label>
						<select name="cat_id" class="form-control required">
							<!-- BEGIN: cat -->
							<option value="{CAT.id}" {CAT.selected}>{CAT.space}{CAT.title}</option>
							<!-- END: cat -->
						</select>
					</div>
					<div class="form-group">
						<label><strong>{LANG.area}</strong></label>
						<select name="area_id" class="form-control required">
							<!-- BEGIN: area -->
							<option value="{AREA.id}" {AREA.selected}>{AREA.space}{AREA.title}</option>
							<!-- END: area -->
						</select>
					</div>
					<div class="form-group">
						<label><strong>{LANG.organ}</strong></label>
						<select name="organ_id" class="form-control required">
							<!-- BEGIN: organ -->
							<option value="{ORGAN.id}" {ORGAN.selected}>{ORGAN.title}</option>
							<!-- END: organ -->
						</select>
					</div>
					<div class="form-group">
						<label><strong>{LANG.signer}</strong></label>
						<select name="signer_id" class="form-control required">
							<!-- BEGIN: signer -->
							<option value="{SIGNER.id}" {SIGNER.selected}>{SIGNER.title}</option>
							<!-- END: signer -->
						</select>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-body">
					<div class="form-group">
						<label><strong>{LANG.publtime}</strong></label>
						<div class="input-group">
							<input class="form-control" type="text" name="publtime" value="{ROW.publtime}" id="publtime" pattern="^[0-9]{2,2}\/[0-9]{2,2}\/[0-9]{1,4}$" />
							<span class="input-group-btn">
								<button class="btn btn-default" type="button" id="publtime-btn">
									<em class="fa fa-calendar fa-fix"> </em>
								</button> </span>
						</div>
					</div>
					<div class="form-group">
						<label><strong>{LANG.startvalid}</strong></label>
						<div class="input-group">
							<input class="form-control" type="text" name="startvalid" value="{ROW.startvalid}" id="startvalid" pattern="^[0-9]{2,2}\/[0-9]{2,2}\/[0-9]{1,4}$" />
							<span class="input-group-btn">
								<button class="btn btn-default" type="button" id="startvalid-btn">
									<em class="fa fa-calendar fa-fix"> </em>
								</button> </span>
						</div>
					</div>
					<div class="form-group">
						<label><strong>{LANG.exptime}</strong></label>
						<div class="input-group">
							<input class="form-control" type="text" name="exptime" value="{ROW.exptime}" id="exptime" pattern="^[0-9]{2,2}\/[0-9]{2,2}\/[0-9]{1,4}$" />
							<span class="input-group-btn">
								<button class="btn btn-default" type="button" id="exptime-btn">
									<em class="fa fa-calendar fa-fix"> </em>
								</button> </span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</form>

<script type="text/javascript" src="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/ui/jquery.ui.core.min.js"></script>
<script type="text/javascript" src="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/ui/jquery.ui.menu.min.js"></script>
<script type="text/javascript" src="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/ui/jquery.ui.datepicker.min.js"></script>
<script type="text/javascript" src="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/language/jquery.ui.datepicker-{NV_LANG_INTERFACE}.js"></script>

<script type="text/javascript">
	//<![CDATA[
	var CFG = [];
	CFG.files_note = '{LANG.files_note}';

	$("#publtime,#startvalid,#exptime").datepicker({
		dateFormat : "dd/mm/yy",
		changeMonth : true,
		changeYear : true,
		showOtherMonths : true,
	});

	//]]>
</script>
<!-- END: main -->