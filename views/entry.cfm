<cfoutput>
<div class="row">
	<div class="span8">
		<!--- Quickly reuse our entry template to build this one with some extra pizzaz --->
		#cb.quickEntry(args={addComments=true})#
        
		<!--- Display Comments --->
		#cb.quickComments()#	
        
        <!--- Comment Form --->
        <!--- 
		#cb.quickCommentForm(prc.entry)#
        --->
        #cb.quickView("_commentform")# 
		
        <!--- ContentBoxEvent --->
		#cb.event("cbui_postEntryDisplay")#
        
	</div> 
		
	<!--- Sidebar --->
	#cb.quickView("_sidebar")#                                    
</div>
</cfoutput>