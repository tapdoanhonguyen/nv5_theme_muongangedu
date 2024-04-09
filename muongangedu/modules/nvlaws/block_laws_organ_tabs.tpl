<!-- BEGIN: main -->
<div class="block_laws_organ_tabs">
	<ul class="nav nav-tabs" role="tablist" id="block_laws_organ_tabs">
		<!-- BEGIN: tabs -->
		<li role="presentation">
			<a href="#{TABS.id}" aria-controls="{TABS.id}" role="tab" data-toggle="tab">{TABS.title}</a>
		</li>
		<!-- END: tabs -->
	</ul>

	<div class="tab-content">
		<!-- BEGIN: tabs_data -->
		<div role="tabpanel" class="tab-pane" id="{TABS_DATA.id}">
			<ul>
				<!-- BEGIN: loop -->
				<li>
					<a href="{DATA.url}" title="{DATA.title}">{DATA.title0}</a>
					<span class="help-block">{DATA.code}</span>
				</li>
				<!-- END: loop -->
			</ul>
		</div>
		<!-- END: tabs_data -->
	</div>
</div>
<script>
$(window).load(function(){
	$('#block_laws_organ_tabs a:first').tab('show');
});
</script>
<!-- END: main -->