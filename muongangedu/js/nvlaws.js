/**
 * @Project NUKEVIET 4.x
 * @Author hongoctrien (hongoctrien@2mit.org)
 * @Copyright (C) 2015 hongoctrien. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate Fri, 04 Sep 2015 23:27:19 GMT
 */

$(document).ready(function() {
	var numfile = $('#listfile').data('numfile');
	$('#addfile').click(function(e) {
		e.preventDefault();
		numfile += 1;
		var html = '';
		html += '<div class="input-group m-bottom">';
		html += '	<input class="form-control" type="text" name="files[]" id="file_'+numfile+'" value="" placeholder="' + CFG.files_note + '" />';
		html += '	<span class="input-group-btn">';
		html += '		<button class="btn btn-default" onclick="upload_fileupload_click(' + numfile + '); return false;">';
		html += '			<em class="fa fa-folder-open-o fa-fix">&nbsp;</em>';
		html += '		</button>';
		html += '	</span>';
		html += '</div>';
		html += '<input type="file" name="upload_fileupload[]" id="upload_fileupload_' + numfile + '" data-number="' + numfile + '" onchange="upload_fileupload_change($(this), ' + numfile + ')" style="display: none" />';

		$('#listfile').append( html );
	});
});

function upload_fileupload_change($_this, number){
	$('#file_' + number).val($_this.val().match(/[-_\w]+[.][\w]+$/i)[0]);
}

function upload_fileupload_click(number){
	$('#upload_fileupload_' + number).click();
}

function nv_download_file( lawsid, fileid )
{
	window.location.href = nv_base_siteurl + "index.php?" + nv_lang_variable + "=" + nv_lang_data + "&" + nv_name_variable + "=" + nv_module_name + "&" + nv_fc_variable + "=download&fileid=" + fileid + '&lawsid=' + lawsid;
	return false;
}

function nv_formReset(a)
{
    $(a)[0].reset();
}