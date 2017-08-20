//  keeps track of the delete button for the row
//  that is going to be removed
var _source;
// keep track of the popup div
var _popup;

function showConfirm(source) {
    this._source = source;
    this._popup = $find('modalDelete');

    //  find the confirm ModalPopup and show it    
    this._popup.show();
}

function okClick() {
    //  find the confirm ModalPopup and hide it    
    this._popup.hide();
    //  use the cached button as the postback source
    __doPostBack(this._source.name, '');
}

function cancelClick() {
    //  find the confirm ModalPopup and hide it 
    this._popup.hide();
    //  clear the event source
    this._source = null;
    this._popup = null;
}


var _sourceAux;
// keep track of the popup div
var _popupAux;

function showConfirmAux(sourceAux) {
    this._sourceAux = sourceAux;
    this._popupAux = $find('modalDeleteAux');    
    
    //  find the confirm ModalPopup and show it
    this._popupAux.show();
}

function okClickAux() {
    //  find the confirm ModalPopup and hide it
    this._popupAux.hide();
    //  use the cached button as the postback source
    __doPostBack(this._sourceAux.name, '');
}

function cancelClickAux() {
    //  find the confirm ModalPopup and hide it
    this._popupAux.hide();
    //  clear the event source
    this._sourceAux = null;
    this._popupAux = null;
}

function ShowAviso() {
    this._popup = $find('modalloding');

    //  find the confirm ModalPopup and show it 

    this._popup.show();
    return;
}

function HideAviso() {
    this._popup = $find('modalloding');

    //  find the confirm ModalPopup and show it 
    if (this._popup != null)
        this._popup.hide();

    return;
}