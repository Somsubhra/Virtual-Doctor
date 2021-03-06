
var ajaxObj = getAjaxObject();

var targetID = new Array() ;
var searchID = new Array() ;
var inputID = new Array() ;

function autoSuggest(id, targetid, searchid, inputid, e)
{
   
   var keyCode = getKeyCode(e, 'keyup');
   if (keyCode == 40 || keyCode == 38)
   {
	   return false;   
   }
   
   autoSugPointer[id] = 0;
   
   targetID[id] = targetid;
   searchID[id] = searchid;
   inputID[id] = inputid;
   countSuggestions[id] = 0;
   
   var searchInput = getElemId(id).value;
   
   var url = "autosuggest.php";
   var params = "input=" + searchInput;
   
   if (trim(searchInput) !== "")
   {
	  sendRequest(ajaxObj, url, params, handleSuggestResponse, id);
   }
   else
   {
	  hideSuggestions();   
   }
}

function handleSuggestResponse(id)
{
   if (ajaxObj.readyState == 4)
   {
      if (ajaxObj.status == 200)
      {
		  try
		  {
			  var XMLResponse = ajaxObj.responseXML.documentElement;
			  // work with the xml response
			  var keywordsTag = XMLResponse.getElementsByTagName('keywords');
			  
			  var suggestions = new Array();
			  
			  for (var i = 0; i < keywordsTag.length; i++)
			  {
				 var keywords = keywordsTag.item(i).firstChild.data.toString();
				 suggestions.push(keywords);
			  }
			  showSuggestions(suggestions, id);
		  }
		  catch(e)
		  {
			  hideSuggestions(id);
			  if (trim(ajaxObj.responseText) !== "")
			  alert(ajaxObj.responseText);  
		  }
	  }
   }
}


var countSuggestions = new Array();

function showSuggestions(suggestions, id)
{
   var listWrapID = getElemId(targetID[id]);
   listWrapID.style.visibility = "visible";
   
   var listID = getElemId(searchID[id]);
   listID.innerHTML = "";
   
   for(var i = 0; i < suggestions.length; i++)
   {
     listID.innerHTML += "<li><a id='"+id + "-" +(i+1)+"' href=\"javascript:void(0);\" onclick=\"insertKeyword(this.innerHTML, '"+id+"');\">" + suggestions[i] + "</a></li>";      
   }  
   
   countSuggestions[id] = i;
   
}

var autoSugPointer = new Array();

function keyBoardNav(e, id)
{

   var keyCode = getKeyCode(e, 'keydown');

   if (keyCode == 40)
   {
      if (autoSugPointer[id] >= 0 && autoSugPointer[id] < countSuggestions[id])
	  {
		 if (autoSugPointer[id] != 0 && autoSugPointer[id] != countSuggestions[id])
		 {
		    revertAutoSuggestKeyNav(autoSugPointer[id], id);
		 }
		 autoSugPointer[id] ++;
		 changeAutoSuggestKeyNav(autoSugPointer[id], id);
		 if (autoSugPointer[id] > 6)
		 {
			getElemId(searchID[id]).scrollTop = 30;
		 }
	  }
   }
   else if (keyCode == 38)
   {
	  if (autoSugPointer[id] > 1)
	  {
		 revertAutoSuggestKeyNav(autoSugPointer[id], id);
		 autoSugPointer[id] --;
		 changeAutoSuggestKeyNav(autoSugPointer[id], id);
		 if (autoSugPointer[id] <= 2)
		 {
			getElemId(searchID[id]).scrollTop = 0;
		 }
	  }
   }
   else if (keyCode == 13 && autoSugPointer[id])
   {
	  var str = getElemId(id + "-" + autoSugPointer[id]).innerHTML;
		
	  insertKeyword(str, id);
	 
   }

}

function changeAutoSuggestKeyNav(id, ID)
{
   getElemId(ID + "-" + id).style.backgroundColor = "#555";
   getElemId(ID + "-" + id).style.color = "#FFF";   	
}

function revertAutoSuggestKeyNav(id, ID)
{
   getElemId(ID + "-" + id).style.backgroundColor = "#F9F9F9";
   getElemId(ID + "-" + id).style.color = "#006";   	
}


function hideSuggestions(id)
{
   try
   {
   var listWrapID = getElemId(targetID[id]);
   listWrapID.style.visibility = "hidden";	
   }catch(e){}
}

function insertKeyword(str, id)
{
	hideSuggestions(id);
	getElemId(inputID[id]).value = str;
	getElemId(inputID[id]).focus();
}