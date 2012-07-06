<cfset twuser = "demirkapi">
<cfset feedurl="http://search.twitter.com/search.atom?q=from%3A#twuser#" />
<cffeed source="#feedurl#" properties="feedmeta" query="feeditems" />
<ul class="unstyled smalltext11">
<cfoutput query="feeditems" maxrows="3">
    <li>#content#</li>
</cfoutput>
</ul>
