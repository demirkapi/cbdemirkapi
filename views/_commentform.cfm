<div class="span2">
	&nbsp;
</div>
<div class="span6">
<cfoutput>
<h4>Add Comment</h4>
<form id="commentForm" name="commentForm" method="post" action="#cb.linkCommentPost(prc.entry)#" class="navbar-search form-horizontal">
<fieldset>
	<input name="contentID" type="hidden" value="#prc.entry.getContentID()#" >
	<input name="contentType" type="hidden" value="#prc.entry.getContentType()#" >    
	<div class="control-group">
		<label class="control-label" for="author">Name</label>
		<div class="controls">
			<input type="text" class="input-xlarge" id="author" name="author">
		</div>
		<label class="control-label" for="authorEmail">E-mail</label>
		<div class="controls">
			<input type="text" class="input-xlarge" id="authorEmail" name="authorEmail">
		</div>
        <label class="control-label" for="authorURL">Website</label>
		<div class="controls">
			<input type="text" class="input-xlarge" id="authorURL" name="authorURL">
		</div>
        <label class="control-label" for="content">Comment</label>
		<div class="controls">
			<textarea name="content" class="span4" wrap="virtual"></textarea>
            <p class="help-block">You may use basic HTML tags and attributes.</p>
		</div>
        <label class="control-label" for="captchacode"></label>
		<div class="controls">
			<p class="help-block">Enter the security code shown above:</p>
            #getMyPlugin(plugin="Captcha",module="contentbox").display()#
            <br>
            <input type="text" class="input-xlarge" id="captchacode" name="captchacode">
		</div>
       
		<div class="controls">
	        <br>
			<input type="submit" id="commentSubmitButton" value="Post Comment" class="btn">
		</div>
	</div>

</fieldset>
</form>
</cfoutput>				
</div>