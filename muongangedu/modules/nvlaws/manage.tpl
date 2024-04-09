<!-- BEGIN: main -->

<!-- BEGIN: view -->
<div class="well">
	<form action="{NV_BASE_SITEURL}index.php" method="get">
		<input type="hidden" name="{NV_LANG_VARIABLE}"  value="{NV_LANG_DATA}" />
		<input type="hidden" name="{NV_NAME_VARIABLE}"  value="{MODULE_NAME}" />
		<input type="hidden" name="{NV_OP_VARIABLE}"  value="{OP}" />
		<div class="row">
			<div class="col-xs-24 col-md-4">
				<div class="form-group">
					<input class="form-control" type="text" value="{SEARCH.q}" name="q" maxlength="255" placeholder="{LANG.search_title}" />
				</div>
			</div>
			<div class="col-xs-24 col-md-4">
				<div class="form-group">
					<select name="cat_id" class="form-control">
						<option value="">---{LANG.cat_c}---</option>
						<!-- BEGIN: cat -->
						<option value="{CAT.id}" {CAT.selected}>{CAT.space}{CAT.title}</option>
						<!-- END: cat -->
					</select>
				</div>
			</div>
			<div class="col-xs-24 col-md-4">
				<div class="form-group">
					<select name="area_id" class="form-control">
						<option value="">---{LANG.area_c}---</option>
						<!-- BEGIN: area -->
						<option value="{AREA.id}" {AREA.selected}>{AREA.space}{AREA.title}</option>
						<!-- END: area -->
					</select>
				</div>
			</div>
			<div class="col-xs-24 col-md-4">
				<div class="form-group">
					<select name="organ_id" class="form-control">
						<option value="">---{LANG.organ_c}---</option>
						<!-- BEGIN: organ -->
						<option value="{ORGAN.id}" {ORGAN.selected}>{ORGAN.title}</option>
						<!-- END: organ -->
					</select>
				</div>
			</div>
			<div class="col-xs-24 col-md-4">
				<div class="form-group">
					<select name="signer_id" class="form-control">
						<option value="">---{LANG.signer_c}---</option>
						<!-- BEGIN: signer -->
						<option value="{SIGNER.id}" {SIGNER.selected}>{SIGNER.title}</option>
						<!-- END: signer -->
					</select>
				</div>
			</div>
			<div class="col-xs-24 col-md-4">
				<div class="form-group">
					<select name="active" class="form-control">
						<option value="-1">---{LANG.active}---</option>
						<!-- BEGIN: active -->
						<option value="{ACTIVE.key}" {ACTIVE.selected}>{ACTIVE.value}</option>
						<!-- END: active -->
					</select>
				</div>
			</div>
			<div class="col-xs-24 col-md-4">
				<div class="form-group">
					<select class="form-control" name="per_page">
						<option value="30">---{LANG.search_per_page}---</option>
						<!-- BEGIN: per_page -->
						<option value="{PER_PAGE.key}"{PER_PAGE.selected}>{PER_PAGE.key}</option>
						<!-- END: per_page -->
					</select>
				</div>
			</div>
			<div class="col-xs-12 col-md-6">
				<div class="form-group">
					<input class="btn btn-primary" type="submit" value="{LANG.search_submit}" />
					<a href="{ADD_URL}" title="{LANG.laws_add}" class="btn btn-success">{LANG.laws_add}</a>
				</div>
			</div>
		</div>
	</form>
</div>
<form action="{NV_BASE_SITEURL}index.php?{NV_LANG_VARIABLE}={NV_LANG_DATA}&amp;{NV_NAME_VARIABLE}={MODULE_NAME}&amp;{NV_OP_VARIABLE}={OP}" method="post">
	<div class="table-responsive">
		<table class="table table-striped table-bordered table-hover">
			<colgroup>
				<col width="50" />
				<col width="150" />
				<col />
				<col />
				<col width="100" />
				<col width="120" />
			</colgroup>
			<thead>
				<tr>
					<th class="text-center">{LANG.number}</th>
					<th>{LANG.code}</th>
					<th>{LANG.title}</th>
					<th>{LANG.cat}</th>
					<th class="text-center">{LANG.active}</th>
					<th>&nbsp;</th>
				</tr>
			</thead>
			<!-- BEGIN: generate_page -->
			<tfoot>
				<tr>
					<td class="text-center" colspan="6">{NV_GENERATE_PAGE}</td>
				</tr>
			</tfoot>
			<!-- END: generate_page -->
			<tbody>
				<!-- BEGIN: loop -->
				<tr>
					<td class="text-center"> {VIEW.number} </td>
					<td> {VIEW.code} </td>
					<td>
						<!-- BEGIN: url_view -->
						<a href="{VIEW.link_view}" target="_blank" title="{VIEW.title}">{VIEW.title}</a>
						<!-- END: url_view -->
						<!-- BEGIN: label -->
						{VIEW.title}
						<!-- END: label -->
					</td>
					<td> {VIEW.cat_title} </td>
					<td class="text-center">
						<!-- BEGIN: status_check -->
						<input type="checkbox" name="status" id="change_status_{VIEW.id}" value="{VIEW.id}" {CHECK} onclick="nv_change_status({VIEW.id});" />
						<!-- END: status_check -->
						<!-- BEGIN: status_label -->
						<span class="text-danger" data-placement="top" data-content="{LANG.suspended_note}" data-rel="tooltip">{LANG.suspended}</span>
						<!-- END: status_label -->
						<!-- BEGIN: status_queue -->
						<span class="text-success" >{LANG.queue}</span>
						<!-- END: status_queue -->
					</td>
					<td class="text-center"><i class="fa fa-edit">&nbsp;</i><a href="{VIEW.link_edit}">{GLANG.edit}</a> - <em class="fa fa-trash-o">&nbsp;</em><a href="{VIEW.link_delete}" onclick="return confirm(nv_is_del_confirm[0]);">{GLANG.delete}</a></td>
				</tr>
				<!-- END: loop -->
			</tbody>
		</table>
	</div>
</form>
<!-- END: view -->
<script>
	function nv_change_status(id) {
		var new_status = $('#change_status_' + id).is(':checked') ? true : false;
		if (confirm(nv_is_change_act_confirm[0])) {
			var nv_timer = nv_settimeout_disable('change_status_' + id, 5000);
			$.post(script_name + '?' + nv_name_variable + '=' + nv_module_name + '&' + nv_fc_variable + '=manage&nocache=' + new Date().getTime(), 'change_status=1&id=' + id, function(res) {
				var r_split = res.split('_');
				if (r_split[0] != 'OK') {
					alert(nv_is_change_act_confirm[2]);
				}
			});
		} else {
			$('#change_status_' + id).prop('checked', new_status ? false : true);
		}
		return;
	}
</script>
<!-- END: main -->