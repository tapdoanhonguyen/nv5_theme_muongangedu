<!-- BEGIN: main -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.1.6/Chart.min.js"></script>
<style>
canvas {
	-moz-user-select: none;
	-webkit-user-select: none;
	-ms-user-select: none;
}

#chartjs-tooltip {
	opacity: 0;
	position: absolute;
	background: rgba(0, 0, 0, .7);
	color: white;
	padding: 3px;
	border-radius: 3px;
	-webkit-transition: all .1s ease;
	transition: all .1s ease;
	pointer-events: none;
	-webkit-transform: translate(-50%, 0);
	transform: translate(-50%, 0);
}

.chartjs-tooltip-key {
	display: inline-block;
	width: 10px;
	height: 10px;
}
</style>
<canvas id="myChart" width="400" height="200"></canvas>
<div id="chartjs-tooltip"></div>

<script>
window.onload = function() {
    var customTooltips = function(tooltip) {

        // Tooltip Element
        var tooltipEl = $('#chartjs-tooltip');

        if (!tooltipEl[0]) {
          $('body').append('<div id="chartjs-tooltip"></div>');
          tooltipEl = $('#chartjs-tooltip');
        }

        // Hide if no tooltip
        if (!tooltip.opacity) {
          tooltipEl.css({
            opacity: 0
          });
          $('.chartjs-wrap canvas')
            .each(function(index, el) {
              $(el).css('cursor', 'default');
            });
          return;
        }

        $(this._chart.canvas).css('cursor', 'pointer');

        // Set caret Position
        tooltipEl.removeClass('above below no-transform');
        if (tooltip.yAlign) {
          tooltipEl.addClass(tooltip.yAlign);
        } else {
          tooltipEl.addClass('no-transform');
        }

        // Set Text
        if (tooltip.body) {
          var innerHtml = [
            (tooltip.beforeTitle || []).join('\n'), (tooltip.title || []).join('\n'), (tooltip.afterTitle || []).join('\n'), (tooltip.beforeBody || []).join('\n'), (tooltip.body || []).join('\n'), (tooltip.afterBody || []).join('\n'), (tooltip.beforeFooter || [])
            .join('\n'), (tooltip.footer || []).join('\n'), (tooltip.afterFooter || []).join('\n')
          ];
          tooltipEl.html(innerHtml.join('\n'));
        }

        // Find Y Location on page
        var top = 0;
        if (tooltip.yAlign) {
          if (tooltip.yAlign == 'above') {
            top = tooltip.y - tooltip.caretHeight - tooltip.caretPadding;
          } else {
            top = tooltip.y + tooltip.caretHeight + tooltip.caretPadding;
          }
        }

        var position = $(this._chart.canvas)[0].getBoundingClientRect();

        // Display, position, and set styles for font
        tooltipEl.css({
          opacity: 1,
          width: tooltip.width ? (tooltip.width + 'px') : 'auto',
          left: position.left + tooltip.x + 'px',
          top: position.top + top + 'px',
          fontFamily: tooltip._fontFamily,
          fontSize: tooltip.fontSize,
          fontStyle: tooltip._fontStyle,
          padding: tooltip.yPadding + 'px ' + tooltip.xPadding + 'px',
        });
      };
      
    var data = [
	<!-- BEGIN: data -->
	{
        label: '{DATA.label}',
        data: [7, 9.25, 8, 12, 17, 17],
        backgroundColor: 'red',
        pointBackgroundColor: 'red',
        pointRadius: 7,
        pointHoverRadius: 7
    },
	<!-- END: data -->
    ];
      
	var ctx = document.getElementById("myChart");
	var myChart = new Chart(ctx, {
	    type: 'line',    
	    data: {
	        labels: {LABEL},
	        datasets: data
	    },
	    options: {
	    	showLines: false,
			title:{
			    display:true,
			    text: '{BLOCK.title}'
			}/*,
			tooltips: {
				enabled: false,
			    custom: customTooltips
			}*/
	    }
	});
};
</script>
<!-- END: main -->

<style>
.block-invite-char .table-bordered>thead>tr>th, .table-bordered>tbody>tr>th,
	.table-bordered>tfoot>tr>th, .table-bordered>thead>tr>td,
	.table-bordered>tbody>tr>td, .table-bordered>tfoot>tr>td {
	border: 1px dashed #dddddd
}
</style>
<div class="block-invite-char">
	<table class="table table-bordered">
		<tfoot>
			<tr>
				<th class="text-center"></th>
				<!-- BEGIN: day_title -->
				<th class="text-center" style="width: {TD_WIDTH">{DAY.day}</th>
				<!-- END: day_title -->
			</tr>
		</tfoot>
		<tbody>
			<!-- BEGIN: house -->
			<tr>
				<td class="text-center"><strong>{HOUSE}</strong></td>
				<!-- BEGIN: day_content -->
				<td></td>
				<!-- END: day_content -->
			</tr>
			<!-- END: house -->
		</tbody>
	</table>
</div>