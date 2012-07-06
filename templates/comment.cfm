<cfoutput>
<!--- Anchor --->
<a name="comment_#comment.getCommentID()#"></a>
<div class="row" id="comment_#comment.getCommentID()#">
	<div class="span1">
		&nbsp;
	</div>                                     
	<div class="span2 commentdate pull-left">
		#cb.quickAvatar(author=comment.getAuthorEmail(),size=50)#
        <br />
		<cfif len(comment.getAuthorURL())>
			by <a href="<cfif NOT findnocase("http",comment.getAuthorURL())>http://</cfif>#comment.getAuthorURL()#" title="Open #comment.getAuthorURL()#" target="_blank">#comment.getAuthor()#</a>
		<cfelse>
			by #comment.getAuthor()#
		</cfif>
        <br />
		#comment.getDisplayCreatedDate()#	
    </div>                                     
	<div class="span5 commentcontent">
		<p>#comment.getDisplayContent()#</p>
	</div>                                     
</div>
</cfoutput>