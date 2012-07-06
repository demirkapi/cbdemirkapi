<cfoutput>
<div class="row">
	<div class="span1 postdate" align="center">
		<h2>#dateformat(entry.getPublishedDate(),"dd")#</h2>
		<p>
        #dateformat(entry.getPublishedDate(),"mmmm")# 
        <br />
        #dateformat(entry.getPublishedDate(),"yyyy")#</p>
		<p>
        #cb.quickAvatar(author=entry.getAuthorEmail(),size=40)#
		<br /> 
		#entry.getAuthorName()#
        </p>
        <cfif NOT cb.isIndexView()>
        <p>
        #cb.quickView("_social_entry")#
        </p>
        </cfif>
	</div>
	<div class="span7 postin"> 
		<!--- ContentBoxEvent --->
		#cb.event("cbui_preEntryDisplay")#
                  
		<h2><a href="#cb.linkEntry(entry)#" rel="bookmark" title="#entry.getTitle()#">#entry.getTitle()#</a></h2>
		<!--- excerpt or content --->
		<cfif entry.hasExcerpt() and cb.isIndexView()>
			<p>#entry.getExcerpt()#</p>

			<p><a href="#cb.linkEntry(entry)#" class="btn btn-mini" title="Read The Full Entry!">Read More ...</a></p>

		<cfelse>
			<!--- Don't get the content, render the content --->
			<p>#entry.renderContent()#</p>
		</cfif>	
	</div>
</div>

<div class="row">
	<div class="span1">&nbsp;</div>                                     
	<div class="span7 postbottom">
		<p>In #cb.quickCategoryLinks(entry)# | 
        <a href="#cb.linkComments(entry)#" title="View Comments">#entry.getNumberOfApprovedComments()# Comments</a>
         | 
         <cfif NOT cb.isCommentsEnabled(entry)>
			Comments are currently closed
		<cfelse>
            <a href="#cb.linkComments(entry)#?##addcomment" title="Add Comment">Add New Comment</a>
		</cfif>
		</p>
	</div>                                     
</div>
</cfoutput>