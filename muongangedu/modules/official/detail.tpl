<!-- BEGIN: main -->
<div id="viewdetail">
	<h1 class="m-bottom">{LANG.info}: {DATA.fullname}</h1>
	<div class="panel panel-default">
		<div class="panel-body">
			<div class="row">
				<div class="col-xs-3">
					<img src="{DATA.image}" alt="{DATA.fullname}" class="img-thumbnail pointer" width="90" id="openImageModal" />
				</div>
				<div class="col-xs-21">
					<dl class="dl-horizontal bottom">
						<dt>{LANG.fullname}</dt>
						<dd>{DATA.fullname}</dd>

						<dt>{LANG.part}</dt>
						<dd><a href="{DATA.part_url}" title="{DATA.part}">{DATA.part}</a></dd>

						<dt>{LANG.jobtitle}</dt>
						<dd>{DATA.jobtitle}</dd>

						<dt>{LANG.birthday}</dt>
						<dd>{DATA.birthday}</dd>

						<dt>{LANG.gender}</dt>
						<dd>{DATA.gender}</dd>

						<!-- BEGIN: email -->
						<dt>{LANG.email}</dt>
						<dd>{DATA.email}</dd>
						<!-- END: email -->

						<!-- BEGIN: phone -->
						<dt>{LANG.phone}</dt>
						<dd>{DATA.phone}</dd>
						<!-- END: phone -->

						<!-- BEGIN: unionist_date -->
						<dt>{LANG.unionist_date}</dt>
						<dd>{DATA.unionist_date}</dd>
						<!-- END: unionist_date -->
						
						<!-- BEGIN: unionist_code -->
						<dt>{LANG.unionist_code}</dt>
						<dd>{DATA.unionist_code}</dd>
						<!-- END: unionist_code -->

						<!-- BEGIN: party_date_tmp -->
						<dt>{LANG.party_date_tmp}</dt>
						<dd>{DATA.party_date_tmp}</dd>
						<!-- END: party_date_tmp -->
						
						<!-- BEGIN: party_date -->
						<dt>{LANG.party_date}</dt>
						<dd>{DATA.party_date}</dd>
						<!-- END: party_date -->
						
						<!-- BEGIN: party_date_code -->
						<dt>{LANG.party_date_code}</dt>
						<dd>{DATA.party_date_code}</dd>
						<!-- END: party_date_code -->

						<!-- BEGIN: resident -->
						<dt>{LANG.resident}</dt>
						<dd>{DATA.resident}</dd>
						<!-- END: resident -->

						<!-- BEGIN: temporarily -->
						<dt>{LANG.temporarily}</dt>
						<dd>{DATA.temporarily}</dd>
						<!-- END: temporarily -->
						
						<!-- BEGIN: nation -->
						<dt>{LANG.nation}</dt>
						<dd>{DATA.nation}</dd>
						<!-- END: nation -->
						
						<!-- BEGIN: religion -->
						<dt>{LANG.religion}</dt>
						<dd>{DATA.religion}</dd>
						<!-- END: religion -->
						
						<!-- BEGIN: education -->
						<dt>{LANG.education}</dt>
						<dd>{DATA.education}</dd>
						<!-- END: education -->
						
						<!-- BEGIN: idspecialize -->
						<dt>{LANG.specialize}</dt>
						<dd>{DATA.specialize}</dd>
						<!-- END: idspecialize -->
						
						<!-- BEGIN: idpolitic -->
						<dt>{LANG.politic}</dt>
						<dd>{DATA.politic}</dd>
						<!-- END: idpolitic -->
						
						<!-- BEGIN: idlanguage -->
						<dt>{LANG.language}</dt>
						<dd>{DATA.language}</dd>
						<!-- END: idlanguage -->

						<!-- BEGIN: field -->
						<!-- BEGIN: loop -->
						<dt>{FIELD.title}</dt>
						<dd>{FIELD.value}</dd>
						<!-- END: loop -->
						<!-- END: field -->
					</dl>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- END: main -->