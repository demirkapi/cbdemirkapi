<cfscript>
	twuser = "demirkapi";
	cacheMinutes = 60;
	feedurl="http://search.twitter.com/search.atom?q=from%3A#twuser#";
</cfscript>

<!--- Cache Tweets --->
<cfif NOT structKeyExists(application,"cachedTweets") OR dateDiff("n", application.cachedTweets.created, Now()) GT cacheMinutes>
	<cffeed source="#feedurl#" properties="feedmeta" query="feeditems" />
    <cfset application.cachedTweets = structNew()>
    <cfset application.cachedTweets.data = feeditems>
    <cfset application.cachedTweets.created = now()>
</cfif>

<ul class="unstyled smalltext11">
<cfoutput query="application.cachedTweets.data" maxrows="3">
    <li>#content#</li>
</cfoutput>
</ul>
