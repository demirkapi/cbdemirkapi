<cfoutput>
	<div class="row">
		<div class="span8">
        	<!--- ContentBoxEvent --->
			#cb.event("cbui_preIndexDisplay")#
            
		<!--- Are we filtering by category? --->
	<cfif cb.categoryFilterExists()>
		<a href="#cb.linkHome()#" class="btn btn-info btn-mini">Remove Filter</a>
		<br />
		Category Filtering: '#cb.getCategoryFilter()#'
		<br/>
	</cfif>

	<!--- Are we searching --->
	<cfif cb.searchTermExists()>
		<a href="#cb.linkHome()#" class="btn btn-info btn-mini">Clear Search</a>
		<br />
		Searching by: '#cb.getSearchTerm()#'
		<br/>
	</cfif>

			<!---
				Display Entries using ContentBox collection template rendering
				The default convention for the template is "templates/entry.cfm" you can change it via the quickEntries() 'template' argument.
				I could have done it manually, but why?
			 --->
			#cb.quickEntries()#			
		</div> 
		
		<!--- Sidebar --->
		#cb.quickView("_sidebar")#                                    
	</div>

	<div class="row">
		<div class="span1">&nbsp;</div>
		<div class="span7">
			<div class="pagination">
				<!--- Paging via ContentBox via quick HTML --->
				#cb.quickPaging()#
			</div>
            
            <!--- ContentBoxEvent --->
			#cb.event("cbui_postIndexDisplay")#
		</div>     
	</div>             
   
</cfoutput>