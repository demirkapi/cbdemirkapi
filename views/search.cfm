<cfoutput>
<div class="row">
	<div class="span8">
		<!--- ContentBoxEvent --->
		#cb.event("cbui_prePageDisplay")#

		<!--- Title --->
		<h2>Search Results</h2>

		<!--- Search Form 
		#html.startForm(name="searchForm",action=cb.linkContentSearch())#
			#html.textField(name="q",size="55",value=cb.getSearchTerm())#
			#html.submitButton(name="searchSubmitButton",value="Search")#
		#html.endForm()#
        --->
        
        <form id="searchForm" name="searchForm" method="post" action="#cb.linkContentSearch()#" class="navbar-search">
			<input name="q" type="text" class="keywords" id="textfield" maxlength="50" class="search-query" value="#cb.getSearchTerm()#" /> 
			<input name="b" type="submit" class="btn" value="Search" />
		</form>
        <br /><br style="clear:both" />


        
        <!--- Search Results --->
		#cb.getSearchResultsContent()#
		
        
	</div> 
		
	<!--- Sidebar --->
	#cb.quickView("_sidebar")#                                    
</div>


	<div class="row">
		<div class="span1">&nbsp;</div>
		<div class="span7">
			<div class="pagination">
				<!--- Paging  --->
				#cb.quickSearchPaging()#
			</div>
            
           	<!--- ContentBoxEvent --->
			#cb.event("cbui_postPageDisplay")#
		</div>     
	</div> 

</cfoutput>


<!--- 
<cfoutput>

	<!--- ContentBoxEvent --->
	#cb.event("cbui_prePageDisplay")#
	
	<!--- top gap --->
	<div class="post-top-gap"></div>
	
	<!--- search Results --->
	<div>
		<h1>Search Results</h1>
		
		<!--- Search Form --->
		#html.startForm(name="searchForm",action=cb.linkContentSearch())#
			#html.textField(name="q",size="55",value=cb.getSearchTerm())#
			#html.submitButton(name="searchSubmitButton",value="Search")#
		#html.endForm()#
		
		<br/>
		
		<!--- Search Results --->
		#cb.getSearchResultsContent()#
		
		<!--- Search paging --->
		#cb.quickSearchPaging()#		
	</div>
		
	<!--- ContentBoxEvent --->
	#cb.event("cbui_postPageDisplay")#
	
</cfoutput>
--->