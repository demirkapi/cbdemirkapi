<cfoutput>
<div class="row">
	<div class="span8">
		<!--- ContentBoxEvent --->
		#cb.event("cbui_preArchivesDisplay")#

		<!--- Title --->
		<h2>Blog Archives - #cb.getCurrentEntriesCount()# Record(s)</h2>

		<!--- Archives --->
		<cfif cb.getYearFilter() NEQ 0>
			Remove Filter
			<br>
			Year: '#cb.getYearFilter()#'
			<cfif cb.getMonthFilter() NEQ 0>- Month: '#cb.getMonthFilter()#'</cfif>
			<cfif cb.getDayFilter() NEQ 0>- Day: '#cb.getDayFilter()#'</cfif>
			<br/>
		</cfif>
        
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
			#cb.event("cbui_postArchivesDisplay")#
		</div>     
	</div> 

</cfoutput>
