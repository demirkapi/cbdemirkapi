<cfoutput>
<div class="span4">
	<div class="row"> 
		<div class="span4">
			<!--- ContentBoxEvent --->
			#cb.event("cbui_BeforeSideBar")#
            
            <div class="well">
            	<div class="pull-right">#cb.quickAvatar(author='demirkapi@gmail.com',size=120)#</div>
				<h4>#cb.siteName()#</h4>
				<p>#cb.siteDescription()#</p>
			</div> 
		</div> 
	</div> 

	<div class="row">      
		<div class="span2">      
			<h3>Categories</h3>
			#cb.quickCategories()#
            
			<h3>Archives</h3>
			#cb.widget("Archives")#
		</div>
		<div class="span2">      
			<h3>Latest Tweets</h3>
			#cb.quickView("tweets")#
            <!--- 
			<h3>Tags Cloud</h3>
			<p><a href="##">blog</a> <a href="##">personal</a> <a href="##">ColdFusion</a> <a href="##">Adobe</a> <a href="##">Flex</a> <a href="##">i18N</a> <a href="##">g11N</a></p>
			--->
		</div>
	</div> 
	<div class="row">
		<div class="span4">  
			<a href="http://www.adobe.com/communities/professionals/all.html" class="thumbnail" target="_blank"><img src="http://flashmobile.scottjanousek.com/wp-content/uploads/2011/01/adobecommunityprofessional_logo.png" hspace="0" vspace="15" border="0" height="80px"></a>  
		</div>
	</div>
	
    <div class="row">
		<div class="span2">  
                    	 
                            <a href="http://www.riacon.com" title="Rich Internet Applications Conference - Washington DC" class="thumbnail"><img alt="Rich Internet Applications Conference - Washington DC" src="http://riacon.com/sites/default/files/badges/riacon-12-website-attending-badge.png" /> </a>     
							
                    </div>
					<div class="span2">  
                    	      
								<a href="http://www.muracon.com" class="thumbnail"><img alt="MuraCon 2012" src="http://www.muracon.com/tasks/sites/muracon2012/assets/Image/muracon-150x200.png" /></a>
							
                    </div>
                </div>
                 <div class="row">      
                	<div class="span2">      
						<a href="http://opencfmlfoundation.org" class="thumbnail" target="_blank"><img src="http://opencfmlfoundation.org/ocf/includes/themes/OCF/images/logo.png" width="135" hspace="0" vspace="0" border="0"></a>
					</div>
					<div class="span2">      
						<a href="http://www.adobe.com/products/coldfusion-family.html" class="thumbnail" target="_blank"><img src="http://wwwimages.adobe.com/www.adobe.com/content/dam/Adobe/en/devnet/coldfusion/images/coldfusion-10-lg.png.adimg.mw.138.png" width="138" height="138" hspace="0" vspace="0" border="0"></a>
					</div>
                </div>
                <div class="row">      
                	<div class="span2">      
						<a href="http://www.ortussolutions.com/products/contentbox" class="thumbnail" target="_blank"><img src="http://www.ortussolutions.com//modules/contentbox/content/contentbox-185-logo.png" width="138"  hspace="0" vspace="0" border="0"></a>
					</div>
					<div class="span2">      
						<a href="http://www.ortussolutions.com/products/coldbox" class="thumbnail" target="_blank"><img src="http://www.ortussolutions.com//modules/contentbox/content/coldbox-185-logo.png" width="138" height="138" hspace="0" vspace="0" border="0"></a>
					</div>
                </div>
                <div class="row">
		<div class="span4">  
        
        	<!--- #cb.widget("Meta")#--->

			<!--- ContentBoxEvent --->
			#cb.event("cbui_afterSideBar")#
		</div>
	</div>
   			</div>     
            
	
</cfoutput>            