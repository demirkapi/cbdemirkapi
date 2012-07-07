<cfoutput>
<footer>
	<div class="row">
		<div class="span1">
			<p>
				<a href="#cb.linkHome()#"><i class="icon-home"></i></a>
				<a href="mailto:demirkapi+blog@gmail.com" target="_blank"><i class="icon-envelope"></i></a>                    
			</p>
		</div>
		<div class="span3">
			<h4>Recent Posts</h4>
			#cb.widget('RecentEntries')#
		</div>
		<div class="span3">
			<h4>Recent Comments</h4>
			#cb.widget('RecentComments')#
		</div>                
		<div class="span2">
			#cb.widget("Links")#
		</div> 
		<div class="span3 small">
			<p><i class="icon-info-sign"></i> Thanks for dropping by! Feel free to join the discussion by leaving comments, and stay updated by subscribing to the <a href="#cb.linkRSS()#" target="_blank">RSS feed</a>.</p>
		</div>                 
	</div> 
            
	<div class="row">               
		<div class="span12 bottomin">
			<span class="pull-left">&nbsp; Powered by <a href="http://coldbox.org" target="_blank">ContentBox</a>, <a href="http://coldbox.org" target="_blank">ColdBox</a> and <a href="http://coldbox.org" target="_blank">Adobe ColdFusion</a></span>
                
			<span class="pull-right">Designed by Oğuz Demirkapı (<a href="http://twitter.com/demirkapi" target="_blank">@demirkapi</a>) &nbsp; </span>
		</div>
	</div>             
</footer>
</div> <!-- /container -->

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="#cb.layoutRoot()#/includes/js/jquery.js"></script>
    <script src="#cb.layoutRoot()#/includes/js/bootstrap-transition.js"></script>
    <script src="#cb.layoutRoot()#/includes/js/bootstrap-alert.js"></script>
    <script src="#cb.layoutRoot()#/includes/js/bootstrap-modal.js"></script>
    <script src="#cb.layoutRoot()#/includes/js/bootstrap-dropdown.js"></script>
    <script src="#cb.layoutRoot()#/includes/js/bootstrap-scrollspy.js"></script>
    <script src="#cb.layoutRoot()#/includes/js/bootstrap-tab.js"></script>
    <script src="#cb.layoutRoot()#/includes/js/bootstrap-tooltip.js"></script>
    <script src="#cb.layoutRoot()#/includes/js/bootstrap-popover.js"></script>
    <script src="#cb.layoutRoot()#/includes/js/bootstrap-button.js"></script>
    <script src="#cb.layoutRoot()#/includes/js/bootstrap-collapse.js"></script>
    <script src="#cb.layoutRoot()#/includes/js/bootstrap-carousel.js"></script>
    <script src="#cb.layoutRoot()#/includes/js/bootstrap-typeahead.js"></script>

<!--- ContentBoxEvent --->
#cb.event("cbui_beforeBodyEnd")#
</body>
</html>
</cfoutput>