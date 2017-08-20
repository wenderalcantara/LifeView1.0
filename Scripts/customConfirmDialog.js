/* This script and many more are available free online at
The JavaScript Source!! http://javascript.internet.com
Created by: Steve Chipman | http://slayeroffice.com/ */

// constants to define the title of the alert and button text.
var ALERT_TITLE = "Atenção";
var ALERT_BUTTON_OK = "Ok";
var ALERT_BUTTON_CANCEL = "Cancelar";
var redirect = "";
// over-ride the alert method only if this a newer browser.
// Older browser will see standard alerts
if (document.getElementById) {

    window.confirm = function(txt) {
        createCustomConfirm(txt);
    }
}

function createCustomConfirm(txt) {

    // shortcut reference to the document object
    d = document;
    
    // if the modalContainer object already exists in the DOM, bail out.
    if (d.getElementById("modalContainer")) return;

    // create the modalContainer div as a child of the BODY element
    mObj = d.getElementsByTagName("div")[0].appendChild(d.createElement("div"));
    mObj.id = "modalContainer";

    // make sure its as tall as it needs to be to overlay all the content on the page
    //mObj.style.height = document.documentElement.scrollHeight + "px";

    // create the DIV that will be the alert
    alertObj = d.getElementsByTagName("div")[0].appendChild(d.createElement("div"));
    alertObj.id = "alertBox";
  
    // MSIE doesnt treat position:fixed correctly, so this compensates for positioning the alert
    //if (d.all && !window.opera) alertObj.style.top = document.documentElement.scrollTop + "px";
    alertObj.style.top = "33%"; //(d.documentElement.scrollHeight - alertObj.offsetHeight) / 2 + "px";
        
    // center the alert box
    alertObj.style.left = (d.documentElement.scrollWidth - alertObj.offsetWidth) / 2 + "px";

    // create an H1 element as the title bar
    h1 = alertObj.appendChild(d.createElement("h1"));
    h1.appendChild(d.createTextNode(ALERT_TITLE));

    // create a paragraph element to contain the txt argument
    msg = alertObj.appendChild(d.createElement("p"));
    msg.innerHTML = txt;

    debugger;
    // create an anchor element to use as the confirmation button.
    btnOk = alertObj.appendChild(d.createElement("a"));
    btnOk.id = "OkBtn";
    btnOk.appendChild(d.createTextNode(ALERT_BUTTON_OK));
    btnOk.href = "#";
    // set up the onclick event to remove the alert when the anchor is clicked
    btnOk.onclick = function() { removeCustomAlert(); return true; }
    window.onscroll = function() { window.scroll(0, 0); }
    
    // create an anchor element to use as the cancelation button.
    btnCancel = alertObj.appendChild(d.createElement("b"));
    btnCancel.id = "closeBtn";
    btnCancel.appendChild(d.createTextNode(ALERT_BUTTON_CANCEL));
    btnCancel.href = "#";
    // set up the onclick event to remove the alert when the anchor is clicked
    btnCancel.oncancel = function() { removeCustomAlert(); return false; }
    window.onscroll = function() { window.scroll(0, 0); }
}

// removes the custom alert from the DOM
function removeCustomAlert() {
    document.getElementsByTagName("div")[0].removeChild(document.getElementById("modalContainer"));
    document.getElementsByTagName("div")[0].removeChild(document.getElementById("alertBox"));
    window.onscroll = "";
    if (redirect != "") {
        window.document.location = redirect;
    }
}