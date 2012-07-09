<cfscript>
	twuser = "demirkapi";
	cacheMinutes = 60;
	feedurl="http://search.twitter.com/search.atom?q=from%3A#twuser#";
	isConnected = 1;
</cfscript>

<!--- Cache Tweets --->
<cfif NOT structKeyExists(application,"cachedTweets") OR dateDiff("n", application.cachedTweets.created, Now()) GT cacheMinutes>
	<cftry>
    	<cffeed source="#feedurl#" properties="feedmeta" query="feeditems" />
    <cfcatch type="Any">
    	<cfset isConnected = 0>
    </cfcatch>
    </cftry>
	<cfif isConnected>
	    <cfset application.cachedTweets = structNew()>
    	<cfset application.cachedTweets.data = feeditems>
	    <cfset application.cachedTweets.created = now()>
    </cfif>
</cfif>

<ul class="unstyled smalltext11">
<cfif isConnected>
	<cfoutput query="application.cachedTweets.data" maxrows="5">
    	<li>#content#</li>
	</cfoutput>
<cfelse>
	<li>No Internet connection detected!</li>
</cfif>
</ul>
