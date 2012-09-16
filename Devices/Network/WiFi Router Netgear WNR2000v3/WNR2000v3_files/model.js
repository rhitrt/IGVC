
RightNow.Widget.FamilyModelBreadcrumb=function(data,instanceID){this.data=data;this.instanceID=instanceID;}
RightNow.Widget.LoginForm=function(data,instanceID)
{this.data=data;this.instanceID=instanceID;};
RightNow.Widget.PsDisplay=function(data,instanceID){this.data=data;this.instanceID=instanceID;if(this.data.js.title)
document.title=this.data.js.title;}
RightNow.Widget.AnswersByCategory=function(data,instanceID){this.data=data;this.instanceID=instanceID;var $=YAHOO.util.Dom.get;var cbox;var list;if(!this.data.attrs.show_cbox)
return;this._inputField=document.getElementById("AnswersByCategory_Cbox_"+this.data.info.w_id);this.list=document.getElementById("AnswersByCategory_"+this.data.info.w_id);YAHOO.util.Event.addListener(this._inputField,"click",this.onListRequest,null,this);};RightNow.Widget.AnswersByCategory.prototype={onListUpdate:function(o)
{if(o.responseText!=null)
this.list.innerHTML=o.responseText;},onListRequest:function(type,args)
{var callback={success:this.onListUpdate,failure:function(o){if(o.responseText!==undefined)
alert("Async request failure: "+o.responseText);}};var post=new Object;post.a_id=this.data.js.a_id;if(this._inputField.checked==true)
post.checked=1
else
post.checked=0;post.hm_id=this.data.attrs.hm_id;var url="/ci/ajaxCustom/answersByCategory";RightNow.Ajax.makeRequest(url,post,{successHandler:this.onListUpdate,scope:this,argument:[type]});}};
RightNow.Widget.ModelTabArea=function(data,instanceID){this.data=data;this.instanceID=instanceID;var $=YAHOO.util.Dom.get;var tabs=new Array("ctl03_ctl02_tdDetails","ctl03_ctl02_tdSpecs","ctl03_ctl02_tdReqs","ctl03_ctl02_tdRltd");for(var i=0;i<tabs.length;++i){var td=$(tabs[i]);if(td){YAHOO.util.Event.on(td,'click',function(){for(var i=0;i<tabs.length;++i){var td=$(tabs[i]);if(td){if(this.id==td.id){YAHOO.util.Dom.replaceClass(td,'unselected','selected');YAHOO.util.Dom.setStyle($(td.id+'_tab'),'display','inline');}
else{YAHOO.util.Dom.replaceClass(td,'selected','unselected');YAHOO.util.Dom.setStyle($(td.id+'_tab'),'display','none');}}}},td,true);}}}
RightNow.Widget.RssForumTopics=function(data,instanceID)
{this.data=data;this.instanceID=instanceID;};