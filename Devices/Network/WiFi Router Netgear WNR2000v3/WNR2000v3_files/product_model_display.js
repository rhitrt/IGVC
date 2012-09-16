
RightNow.Widget.ProductSearchWidget=function(data,instanceID){this.data=data;this.instanceID=instanceID;this._searchField=document.getElementById("ntgrPPSW_SearchField_"+this.instanceID);if(!this._searchField)return;this._productpathField=document.getElementById("ntgrPPSW_ProductPath_"+this.instanceID);YAHOO.util.Event.addListener("ntgrPPSW_SimpleSearch_"+this.instanceID+"_Submit","click",this._onSearch,null,this);};RightNow.Widget.ProductSearchWidget.prototype={_onSearch:function(){if(YAHOO.env.ua.ie!==0)
{if(!this._parentForm)
this._parentForm=document.getElementById("ntgrPPSW_FRM_"+this.instanceID);if(this._parentForm&&window.external&&"AutoCompleteSaveForm"in window.external)
{window.external.AutoCompleteSaveForm(this._parentForm);}}
var searchURL="/app/answers/list";var searchString=(this._searchField.value===this.data.attrs.label_hint)?"":this._searchField.value;if(searchString!="")searchURL+="/kw/"+searchString;if(!this._productpathField||this._productpathField.value==""){}
else{searchURL+="/p/"+this._productpathField.value;}
RightNow.Url.navigate(searchURL);}};
RightNow.Widget.SimpleSearch=function(data,instanceID){this.data=data;this.instanceID=instanceID;this._searchField=document.getElementById("rn_"+this.instanceID+"_SearchField");if(!this._searchField)return;if(this.data.attrs.initial_focus&&this._searchField.focus)
this._searchField.focus();if(this.data.attrs.label_hint)
{YAHOO.util.Event.addListener(this._searchField,"focus",this._onFocus,null,this);YAHOO.util.Event.addListener(this._searchField,"blur",this._onBlur,null,this);}
YAHOO.util.Event.addListener("rn_"+this.instanceID+"_Submit","click",this._onSearch,null,this);};RightNow.Widget.SimpleSearch.prototype={_onSearch:function(){if(YAHOO.env.ua.ie!==0)
{if(!this._parentForm)
this._parentForm=document.getElementById("rn_"+this.instanceID+"_SearchForm");if(this._parentForm&&window.external&&"AutoCompleteSaveForm"in window.external)
{window.external.AutoCompleteSaveForm(this._parentForm);}}
var searchString=(this._searchField.value===this.data.attrs.label_hint)?"":this._searchField.value;searchString=RightNow.Url.addParameter(this.data.attrs.report_page_url,"kw",searchString);searchString=RightNow.Url.addParameter(searchString,"search",1);searchString=RightNow.Url.addParameter(searchString,"session",RightNow.Url.getSession());RightNow.Url.navigate(searchString);},_onFocus:function(){if(this._searchField.value===this.data.attrs.label_hint)
this._searchField.value="";},_onBlur:function(){if(this._searchField.value==="")
this._searchField.value=this.data.attrs.label_hint;}};
RightNow.Widget.SiteFeedback2=function(data,instanceID)
{this.data=data;this.instanceID=instanceID;this._dialog=null;this._errorDisplay=document.getElementById("rn_"+this.instanceID+"_ErrorMessage");this._emailField=document.getElementById("rn_"+this.instanceID+"_EmailInput");this._feedbackField=document.getElementById("rn_"+this.instanceID+"_FeedbackTextarea");if(!this._feedbackField)
{RightNow.UI.DevelopmentHeader.addJavascriptError(RightNow.Text.sprintf(RightNow.Interface.getMessage("SITEFEEDBACK2_DIALOG_MISSING_REQD_MSG"),"rn_"+this.instanceID+"_FeedbackTextarea"));return;}
YAHOO.util.Event.addListener("rn_"+this.instanceID+"_FeedbackLink","click",this._onGiveFeedbackClick,null,this);RightNow.Event.subscribe("evt_siteFeedbackSubmitResponse",this._onResponseReceived,this);};RightNow.Widget.SiteFeedback2.prototype={_onGiveFeedbackClick:function()
{if(this.data.attrs.feedback_page_url)
{window.open(RightNow.Url.addParameter(this.data.attrs.feedback_page_url,"session",RightNow.Url.getSession()),"","resizable, scrollbars, width=630, height=400");}
else
{this._showDialog();}},_showDialog:function()
{if(!this._dialog)
{var buttons=[{text:this.data.attrs.label_send_button,handler:{fn:this._onSubmit,scope:this},isDefault:true},{text:this.data.attrs.label_cancel_button,handler:{fn:this._onCancel,scope:this},isDefault:false}];this._dialog=RightNow.UI.Dialog.actionDialog(this.data.attrs.label_dialog_title,document.getElementById("rn_"+this.instanceID+"_SiteFeedback2Form"),{"buttons":buttons});YAHOO.util.Dom.addClass(this._dialog.id,'rn_SiteFeedback2Dialog');}
if(this._errorDisplay)
{this._errorDisplay.innerHTML="";YAHOO.util.Dom.removeClass(this._errorDisplay,'rn_MessageBox rn_ErrorMessage');}
this._dialog.show();var focusElement;if(this._emailField&&this._emailField.value==='')
focusElement=this._emailField;else
focusElement=this._feedbackField;focusElement.focus();this._dialog.enableButtons();},_onSubmit:function()
{this._dialog.disableButtons();if(!this._validateDialogData())
{this._dialog.enableButtons();return;}
this._submitFeedback();},_onCancel:function()
{this._dialog.disableButtons();this._closeDialog(true);},_validateDialogData:function()
{YAHOO.util.Dom.removeClass(this._errorDisplay,'rn_MessageBox rn_ErrorMessage');this._errorDisplay.innerHTML="";var returnValue=true;if(this._emailField)
{this._emailField.value=YAHOO.lang.trim(this._emailField.value);if(this._emailField.value==="")
{this._addErrorMessage(RightNow.Text.sprintf(RightNow.Interface.getMessage("PCT_S_IS_REQUIRED_MSG"),this.data.attrs.label_email_address),this._emailField.id);returnValue=false;}
else if(!RightNow.Text.isValidEmailAddress(this._emailField.value))
{this._addErrorMessage(this.data.attrs.label_email_address+' '+RightNow.Interface.getMessage("FIELD_IS_NOT_A_VALID_EMAIL_ADDRESS_MSG"),this._emailField.id);returnValue=false;}}
this._feedbackField.value=YAHOO.lang.trim(this._feedbackField.value);if(this._feedbackField.value==="")
{this._addErrorMessage(RightNow.Text.sprintf(RightNow.Interface.getMessage("PCT_S_IS_REQUIRED_MSG"),this.data.attrs.label_comment_box),this._feedbackField.id);returnValue=false;}
return returnValue;},_closeDialog:function(cancelled)
{if(!cancelled)
{this._feedbackField.value="";}
if(this._errorDisplay)
{this._errorDisplay.innerHTML="";YAHOO.util.Dom.removeClass(this._errorDisplay,'rn_MessageBox rn_ErrorMessage');}
if(this._dialog)
this._dialog.hide();},_submitFeedback:function()
{var eventObject=new RightNow.Event.EventObject();eventObject.w_id=this.instanceID;eventObject.data={"a_id":null,"rate":0,"message":this._feedbackField.value};if(this.data.js.isProfile)
eventObject.data.email=this.data.js.email;else if(this._emailField)
eventObject.data.email=this._emailField.value;RightNow.Event.fire("evt_siteFeedbackRequest",eventObject);return false;},_onResponseReceived:function(type,arg)
{if(arg[1][0].w_id===this.instanceID)
{if(typeof(arg[0])==="string")
{RightNow.UI.Dialog.messageDialog(arg[0],{icon:"WARN",exitCallback:{fn:this._enableDialog,scope:this}});}
else
{RightNow.UI.Dialog.messageDialog(this.data.attrs.label_feedback_confirmation,{exitCallback:{fn:this._closeDialog,scope:this}});}}},_addErrorMessage:function(message,focusElement)
{if(this._errorDisplay)
{YAHOO.util.Dom.addClass(this._errorDisplay,'rn_MessageBox rn_ErrorMessage');var newMessage='<a href="javascript:void(0);" onclick="document.getElementById(\''+focusElement+'\').focus(); return false;">'+message+'</a>';var oldMessage=this._errorDisplay.innerHTML;if(oldMessage==="")
{this._errorDisplay.innerHTML=newMessage;}
else
{this._errorDisplay.innerHTML=oldMessage+'<br/>'+newMessage;}
this._errorDisplay.firstChild.focus();}}};