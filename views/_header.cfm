<!DOCTYPE html>
<html lang="en">
<head>
<cfoutput>
	<cfif cb.isEntryView()>
		<cfset pagetitle = "#cb.getCurrentEntry().getTitle()#">
	<cfelse>
		<cfset pagetitle = "#cb.siteName()# - #cb.siteTagLine()#">
	</cfif>
	<cfif cb.isPageView()>
    	<cfset pagetitle = "#cb.getCurrentPage().getTitle()#">		
	<cfelse>
		<cfset pagetitle = "#cb.siteName()# - #cb.siteTagLine()#">
	</cfif>
    
	<meta charset="UTF-8">
	<title>#pagetitle#</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="author" content="Oğuz Demirkapı">
	<meta name="generator" content="ContentBox powered by ColdBox" />
	<meta name="robots"	content="index,follow" />

	<!--- Meta Description By Entry or By Site --->
	<cfif cb.isEntryView() AND len(cb.getCurrentEntry().getHTMLDescription())>
		<cfset description = "#cb.getCurrentEntry().getHTMLDescription()#">    
	<cfelse>
		<cfset description = "#cb.siteDescription()#">    
	</cfif>
	<!--- Meta Description By Page or By Site --->
	<cfif cb.isPageView() AND len(cb.getCurrentPage().getHTMLDescription())>
		<cfset description = "#cb.getCurrentPage().getHTMLDescription()#">        
	<cfelse>
		<cfset description = "#cb.siteDescription()#">    
	</cfif>
	<meta name="description" content="#description#" />
	
	<!--- Meta Keywords By Entry or By Site --->
	<cfif cb.isEntryView() AND len(cb.getCurrentEntry().getHTMLKeywords())>
		<cfset keywords = "#cb.getCurrentEntry().getHTMLKeywords()#">
	<cfelse>
		<cfset keywords = "#cb.siteKeywords()#">    
	</cfif>
	<!--- Meta Keywords By Page or By Site --->
	<cfif cb.isPageView() AND len(cb.getCurrentPage().getHTMLKeywords())>
		<cfset keywords = "#cb.getCurrentPage().getHTMLKeywords()#">        
	<cfelse>
		<cfset keywords = "#cb.siteKeywords()#">    
	</cfif>
	<meta name="keywords" content="#keywords#" />

	<!--- Base HREF for SES enabled URLs --->
	<base href="#cb.siteBaseURL()#" />

	<!-- Le styles -->
	<link href="#cb.layoutRoot()#/includes/css/bootstrap.css" rel="stylesheet">
	<link href="#cb.layoutRoot()#/includes/css/bootstrap-responsive.css" rel="stylesheet">
    
	<!--- Google Code Pretify --->
	<link href="#cb.layoutRoot()#/includes/js/google-code-prettify/prettify.css" type="text/css" rel="stylesheet" />
	<script type="text/javascript" src="#cb.layoutRoot()#/includes/js/google-code-prettify/prettify.js"></script>

	<!--- HTML5 shim, for IE6-8 support of HTML5 elements --->
	<!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<!--- fav and touch icons --->
	<link rel="shortcut icon" href="#cb.layoutRoot()#/includes/ico/favicon.ico">
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="#cb.layoutRoot()#/includes/ico/apple-touch-icon-144-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="#cb.layoutRoot()#/includes/ico/apple-touch-icon-114-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="#cb.layoutRoot()#/includes/ico/apple-touch-icon-72-precomposed.png">
	<link rel="apple-touch-icon-precomposed" href="#cb.layoutRoot()#/includes/ico/apple-touch-icon-57-precomposed.png">
    
	<!--- RSS Links --->
	<link rel="alternate" type="application/rss+xml" title="Recent Blog Updates" href="#cb.linkRSS()#" />
	<link rel="alternate" type="application/rss+xml" title="Recent Blog Comment Updates" href="#cb.linkRSS(comments=true)#" />
	<link rel="alternate" type="application/rss+xml" title="Recent Page Updates" href="#cb.linkPageRSS()#" />
	<link rel="alternate" type="application/rss+xml" title="Recent Page Comment Updates" href="#cb.linkPageRSS(comments=true)#" />
	<link rel="alternate" type="application/rss+xml" title="Recent Content Updates" href="#cb.linkSiteRSS()#" />
	<link rel="alternate" type="application/rss+xml" title="Recent Content Comment Updates" href="#cb.linkSiteRSS(comments=true)#" />
    
	<!--- RSS Discovery If In View Mode --->
	<cfif cb.isEntryView()>
		<link rel="alternate" type="application/rss+xml" title="Blog Entry's Recent Comments" href="#cb.linkRSS(comments=true,entry=cb.getCurrentEntry())#" />
	</cfif>
    
    <!--- RSS Discovery If In View Mode --->
	<cfif cb.isPageView()>
		<link rel="alternate" type="application/rss+xml" title="Pages's Recent Comments" href="#cb.linkPageRSS(comments=true,page=cb.getCurrentPage())#" />
	</cfif>
    
	<!--- <!--- Google Fonts --->
    <link href='http://fonts.googleapis.com/css?family=Ubuntu|Ubuntu+Condensed|Squada+One' rel='stylesheet' type='text/css'> --->

	<!--- Customized Bootstrap CSS --->
	<link href="#cb.layoutRoot()#/includes/css/custom.css" rel="stylesheet">

	<!--- contentboxEvent --->
	#cb.event("cbui_beforeHeadEnd")#
</head>

<body>
	<!--- ContentBoxEvent --->
	#cb.event("cbui_afterBodyStart")#
    
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
				<a class="brand" href="#cb.linkHome()#"><cfif fileexists('#ExpandPath('/')##cb.layoutRoot()#/includes/img/cb_logo.png')><img src="#cb.layoutRoot()#/includes/img/cb_logo.png" alt="#pagetitle#"><cfelse><h1 class="title">#cb.siteName()#</h1><small>#cb.siteTagLine()#</small></cfif></a>
				<div class="nav-collapse pull-right">
					<ul class="nav pull-right">
						<li><a href="#cb.linkHome()#">Home</a></li>
						<!--- Root Menu --->
						#cb.rootMenu(type="li")#
					</ul>					
				<cfinclude template="_social_top.cfm">
                </div><!--/.nav-collapse -->
				
			</div>
		</div>
	</div>
    <div class="container">
</cfoutput>