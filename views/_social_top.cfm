<!--- 
	If URL is blank, it will not render. 
	Do not change sitenames! 
--->
<cfoutput>
<cfscript>
	socialData = deserializeJSON(fileRead("#ExpandPath('/')##cb.layoutRoot()#/config/social.json"));
</cfscript>
<div class="socialicons pull-right span5">

<!--- 
<table>
<tr>
	<cfloop index="ix" array="#socialData#">
	    <cfif Len(Trim(ix.url)) GT 0 AND fileExists("#ExpandPath('/')##cb.layoutRoot()#/includes/img/social/#ix.sitename#.png")>
		<td><a href="#ix.url#" target="_blank"><img src="#cb.layoutRoot()#/includes/img/social/#ix.sitename#.png" alt="#ix.sitename#"></a></td>
	    </cfif>
    </cfloop>
</tr>
</table>
--->
<ul class="navsocial pull-right">
	<cfloop index="ix" array="#socialData#">
    	<cfif Len(Trim(ix.url)) GT 0 AND fileExists("#ExpandPath('/')##cb.layoutRoot()#/includes/img/social/#ix.sitename#.png")>
		<li><a href="#ix.url#" target="_blank"><img src="#cb.layoutRoot()#/includes/img/social/#ix.sitename#.png" alt="#ix.sitename#"></a></li>
        </cfif>
	</cfloop>
	</ul>

</div>
</cfoutput>




