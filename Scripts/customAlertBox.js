/* This script and many more are available free online at
The JavaScript Source!! http://javascript.internet.com
Created by: Steve Chipman | http://slayeroffice.com/ */

// constants to define the title of the alert and button text.
var ALERT_TITLE = "Atenção";
var ALERT_BUTTON_TEXT = "Ok";
var ALERT_BUTTON_YES_TEXT = "Sim";
var ALERT_BUTTON_NO_TEXT = "Não";

if (redirect == null)
    var redirect = "";


// over-ride the alert method only if this a newer browser.
// Older browser will see standard alerts
if (document.getElementById) {

    window.alert = function(txt) {
        createCustomAlert(txt);
    }

    window.confirm = function(txt, obj) {
        return createCustomConfirm(txt, obj);
       }
}

function createCustomConfirm(txt, obj) {
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

    // create an anchor element to use as the confirmation button.
    // create an anchor element to use as the confirmation button.
    btnyes = alertObj.appendChild(d.createElement("a"));
    btnyes.id = "OkBtnCtr";    
    btnyes.appendChild(d.createTextNode(ALERT_BUTTON_YES_TEXT));
    btnyes.href = "#";    
    
    btnNo = alertObj.appendChild(d.createElement("a"));
    btnNo.id = "closeBtnCtr";
    btnNo.appendChild(d.createTextNode(ALERT_BUTTON_NO_TEXT));
    btnNo.href = "#";
    
    // set up the onclick event to remove the alert when the anchor is clicked
    btnNo.onclick = function() { removeCustomConfirm(obj, false); return false; }
    btnyes.onclick = function() { removeCustomConfirm(obj, true); return true; }

    alertObj.style.display = "block";
    window.scroll(0, 0);
    window.onscroll = function() { window.scroll(0, 0); }
    return false;
}

function createCustomAlert(txt) {

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
    msg.style.paddingBottom = "20px";

    // create an anchor element to use as the confirmation button.
    btn = alertObj.appendChild(d.createElement("a"));
    btn.id = "closeBtn";
    btn.appendChild(d.createTextNode(ALERT_BUTTON_TEXT));
    btn.href = "#";
    // set up the onclick event to remove the alert when the anchor is clicked

    btn.onclick = function() { removeCustomAlert(); return false; }

    window.scroll(0, 0);
    window.onscroll = function() { window.scroll(0, 0); }
}

// removes the custom alert from the DOM
function removeCustomAlert() {
    document.getElementsByTagName("div")[0].removeChild(document.getElementById("modalContainer"));
    document.getElementsByTagName("div")[0].removeChild(document.getElementById("alertBox"));
    
    window.onscroll = "";

    if (redirect != null && redirect != "") {
        window.document.location.href = redirect;
    }    
}

function removeCustomConfirm(obj, post) {    

    document.getElementsByTagName("div")[0].removeChild(document.getElementById("modalContainer"));
    document.getElementsByTagName("div")[0].removeChild(document.getElementById("alertBox"));
    window.onscroll = "";
    
    if (post) {
        __doPostBack(obj.name, '');
//        __doPostBack(obj.uniqueID,'');
    }
}