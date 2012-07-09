<cfoutput>
<cfif category.getNumberOfEntries()>
	<!--- Category --->
	<li><a href="#cb.linkCategory(category)#" title="Filter by #category.getCategory()#">#category.getCategory()# (#category.getNumberOfEntries()#)</a> <a href="#cb.linkRSS(category=category)#" title="RSS Feed For #category.getCategory()#" class="smalltext">(RSS)</a></li>
</cfif>
</cfoutput>