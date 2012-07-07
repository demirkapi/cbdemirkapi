/**
* A cool basic widget that shows some links
*/
component extends="contentbox.model.ui.BaseWidget" singleton{

	Links function init(controller){
		// super init
		super.init(controller);

		// Widget Properties
		setPluginName("Links");
		setPluginVersion("0.2");
		setPluginDescription("A cool basic widget that shows some links");
		setPluginAuthor("Oğuz Demirkapı");
		setPluginAuthorURL("demirkapi.net");
		return this;
	}

	/**
	* Show Some Links
	* @dropdown.hint Display as a dropdown or a list, default is list
	* @title.hint The title to show before the dropdown or list, defaults to H4
	* @titleLevel.hint The H{level} to use, by default we use H4
	*/
	any function renderIt(boolean dropdown=false, string title="Links",string titleLevel="4"){
		var rString	= "";
		var links = [
				{link='http://blog.demirkapi.net', title="Oğuz Demirkapı"},
				{link='http://bennadel.com', title="Ben Nadel"},
				{link='http://www.raymondcamden.com', title="Ray Camden"},
				{link='http://www.coldbox.org', title="ColdBox"},
				{link="http://www.gocontentbox.org", title="ContentBox"}
			];

		saveContent variable="rString"{
			// title
			if( len(arguments.title) ){ writeOutput("<h#arguments.titleLevel#>#arguments.title#</h#arguments.titleLevel#>"); }
			// Build Type
			if( arguments.dropdown ){
				writeoutput( buildDropDown( links ) );
			}
			else{
				writeoutput( buildList( links ) );
			}
		}

		return rString;
	}

	private function buildDropDown(links){
		var rString = "";

		saveContent variable="rString"{
			writeOutput('<select name="links" id="links" onchange="window.location=this.value")><option value="##">Links</option>');
			// iterate and create
			for(var x=1; x lte arrayLen( arguments.links ); x++){
				writeOutput('<option value="#links[x].link#">#links[x].title#</option>');
			}
			// close ul
			writeOutput("</select>");
		}
		return rString;
	}

	private function buildList(links){
		var rString = "";

		saveContent variable="rString"{
			writeOutput('
<ul id="links">');
			// iterate and create
			for(var x=1; x lte arrayLen( arguments.links ); x++){
				writeOutput('<li class="links"><a href="#links[x].link#" target="_blank">#links[x].title#</a></li>');
			}
			// close ul
			writeOutput("</ul>");
		}
		return rString;
	}

}
