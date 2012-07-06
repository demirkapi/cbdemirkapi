<cfoutput>
<cfif category.getNumberOfEntries()>
<ul class="unstyled">	
	<!--- Category --->
	<li><a href="#cb.linkCategory(category)#" title="Filter by #category.getCategory()#">#category.getCategory()# (#category.getNumberOfEntries()#)</a> <!--- mini rss ---> <a href="#cb.linkRSS(category=category)#" title="RSS Feed For #category.getCategory()#" class="smalltext">(RSS)</a></li>
</ul>
</cfif>
</cfoutput>