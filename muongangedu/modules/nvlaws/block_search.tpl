<!-- BEGIN: main -->
<link type="text/css" href="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/jquery-ui/jquery-ui.min.css" rel="stylesheet" />

<form action="{BASE_URL_SITE}" method="get">
	<input type="hidden" name="{NV_LANG_VARIABLE}" value="{NV_LANG_DATA}" />
	<input type="hidden" name="{NV_NAME_VARIABLE}" value="{MODULE_NAME}" />
	<input type="hidden" name="{NV_OP_VARIABLE}" value="{OP_NAME}" />

	<!-- BEGIN: template_0 -->
	<div class="form-group">
		<label>{LANG.search_keywods}</label>
		<input type="text" class="form-control" name="q" value="{SEARCH.q}" />
	</div>
	<div class="form-group">
		<label>{LANG.cat}</label>
		<select name="cat_id" class="form-control">
			<option value="0">---{LANG.cat_c}---</option>
			<!-- BEGIN: cat -->
			<option value="{CAT.id}" {CAT.selected}>{CAT.space}{CAT.title}</option>
			<!-- END: cat -->
		</select>
	</div>
	<div class="form-group">
		<label>{LANG.area}</label>
		<select name="area_id" class="form-control">
			<option value="0">---{LANG.area_c}---</option>
			<!-- BEGIN: area -->
			<option value="{AREA.id}" {AREA.selected}>{AREA.space}{AREA.title}</option>
			<!-- END: area -->
		</select>
	</div>
	<div class="form-group">
		<label>{LANG.organ}</label>
		<select name="organ_id" class="form-control">
			<option value="0">---{LANG.organ_c}---</option>
			<!-- BEGIN: organ -->
			<option value="{ORGAN.id}" {ORGAN.selected}>{ORGAN.title}</option>
			<!-- END: organ -->
		</select>
	</div>
	<div class="form-group">
		<label>{LANG.signer}</label>
		<select name="signer_id" class="form-control">
			<option value="0">---{LANG.signer_c}---</option>
			<!-- BEGIN: signer -->
			<option value="{SIGNER.id}" {SIGNER.selected}>{SIGNER.title}</option>
			<!-- END: signer -->
		</select>
	</div>
	<div class="form-group">
		<label>{LANG.publtime}</label>
		<div class="row">
			<div class="col-xs-24 col-sm-24 col-md-12">
				<div class="input-group">
					<input class="form-control" value="{SEARCH.publtime_begin}" type="text" id="publtime_begin" name="publtime_begin" readonly="readonly" placeholder="{LANG.date_from}" />
					<span class="input-group-btn">
						<button class="btn btn-default" type="button" id="publtime_begin-btn">
							<em class="fa fa-calendar fa-fix">&nbsp;</em>
						</button> </span>
				</div>
			</div>
			<div class="col-xs-24 col-sm-24 col-md-12">
				<div class="input-group">
					<input class="form-control" value="{SEARCH.publtime_end}" type="text" id="publtime_end" name="publtime_end" readonly="readonly" placeholder="{LANG.date_to}" />
					<span class="input-group-btn">
						<button class="btn btn-default" type="button" id="publtime_end-btn">
							<em class="fa fa-calendar fa-fix">&nbsp;</em>
						</button> </span>
				</div>
			</div>
		</div>
	</div>
	<!-- END: template_0 -->
	
	<!-- BEGIN: template_1 -->
	<div class="row">
		<div class="col-xs-24 col-sm-24 col-md-24">
			<div class="form-group">
				<label>{LANG.search_keywods}</label>
				<input type="text" class="form-control" name="q" value="{SEARCH.q}" />
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-xs-24 col-sm-12 col-md-12">
			<div class="form-group">
				<label>{LANG.cat}</label>
				<select name="cat_id" class="form-control">
					<option value="0">---{LANG.cat_c}---</option>
					<!-- BEGIN: cat -->
					<option value="{CAT.id}" {CAT.selected}>{CAT.space}{CAT.title}</option>
					<!-- END: cat -->
				</select>
			</div>
		</div>
		<div class="col-xs-24 col-sm-12 col-md-12">
			<div class="form-group">
				<label>{LANG.area}</label>
				<select name="area_id" class="form-control">
					<option value="0">---{LANG.area_c}---</option>
					<!-- BEGIN: area -->
					<option value="{AREA.id}" {AREA.selected}>{AREA.space}{AREA.title}</option>
					<!-- END: area -->
				</select>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-xs-24 col-sm-12 col-md-12">
			<div class="form-group">
				<label>{LANG.organ}</label>
				<select name="organ_id" class="form-control">
					<option value="0">---{LANG.organ_c}---</option>
					<!-- BEGIN: organ -->
					<option value="{ORGAN.id}" {ORGAN.selected}>{ORGAN.title}</option>
					<!-- END: organ -->
				</select>
			</div>
		</div>
		<div class="col-xs-24 col-sm-12 col-md-12">
			<div class="form-group">
				<label>{LANG.signer}</label>
				<select name="signer_id" class="form-control">
					<option value="0">---{LANG.signer_c}---</option>
					<!-- BEGIN: signer -->
					<option value="{SIGNER.id}" {SIGNER.selected}>{SIGNER.title}</option>
					<!-- END: signer -->
				</select>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="form-group">
			<label>{LANG.publtime}</label>
			<div class="row">
				<div class="col-xs-24 col-sm-24 col-md-12">
					<div class="input-group">
						<input class="form-control" value="{SEARCH.publtime_begin}" type="text" id="publtime_begin" name="publtime_begin" readonly="readonly" placeholder="{LANG.date_from}" />
						<span class="input-group-btn">
							<button class="btn btn-default" type="button" id="publtime_begin-btn">
								<em class="fa fa-calendar fa-fix">&nbsp;</em>
							</button> </span>
					</div>
				</div>
				<div class="col-xs-24 col-sm-24 col-md-12">
					<div class="input-group">
						<input class="form-control" value="{SEARCH.publtime_end}" type="text" id="publtime_end" name="publtime_end" readonly="readonly" placeholder="{LANG.date_to}" />
						<span class="input-group-btn">
							<button class="btn btn-default" type="button" id="publtime_end-btn">
								<em class="fa fa-calendar fa-fix">&nbsp;</em>
							</button> </span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- END: template_1 -->
	
	<div class="text-center">
		<input type="button" class="btn btn-danger" value="{LANG.reset}" onclick="nv_formReset(this.form); return false;" />
		<input type="submit" class="btn btn-primary" value="{LANG.search}" />
	</div>
	
</form>

<script type="text/javascript" src="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/jquery-ui/jquery-ui.min.js"></script>
<script type="text/javascript" src="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/language/jquery.ui.datepicker-{NV_LANG_INTERFACE}.js"></script>
<script>
	$("#publtime_begin, #publtime_end").datepicker({
		dateFormat : "dd/mm/yy",
		changeMonth : true,
		changeYear : true,
		showOtherMonths : true,
	});
</script>
<!-- END: main -->

<!-- BEGIN: config -->
<tr>
	<td>{LANG.template}</td>
	<td>
		<select name="config_template" class="form-control">
			<!-- BEGIN: template -->
			<option value="{TEMP.index}" {TEMP.selected}>{TEMP.value}</option>
			<!-- END: template -->
		</select>
	</td>
</tr>
<!-- END: config -->