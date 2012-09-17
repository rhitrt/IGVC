//****** Advanced DHTML Popup Pro Flash Video Add-on Version 1.2 ******

// Copyright (c) Digital Flow Software 2007-2008
// The present javascript code is property of Digital Flow Software.
// This code can only be used inside Internet/Intranet web sites located on *web servers*, as the outcome of a licensed Advanced DHTML Popup application only. 
// This code *cannot* be used inside distributable implementations (such as demos, applications or CD-based webs), unless this implementation is licensed with an "Advanced DHTML Popup License for Distributed Applications". 
// Any unauthorized use, reverse-engineering, alteration, transmission, transformation, facsimile, or copying of any means (electronic or not) is strictly prohibited and will be prosecuted.
// ***Removal of the present copyright notice is strictly prohibited***



function ADPConstObj(){
  args=arguments;

  var str = '<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" ';

  str += args[0] + '=' + '"' + args[1] + '" ';
  str += args[2] + '=' + '"' + args[3] + '" ';
  str += args[4] + '=' + '"' + args[5] + '"';
  str += '>';
  str += '<param name="' + args[32] + '" value="' + args[33] + '" /> ';
  str += '<param name="' + args[6] + '" value="' + args[7] + '" /> ';
  str += '<param name="' + args[8] + '" value="' + args[9] + '" />';
  str += '<param name="' + args[10] + '" value="' + args[11] + '" />';
  str += '<param name="' + args[12] + '" value="' + args[13] + '" />';
  str += '<param name="' + args[14] + '" value="' + args[15] + '" />';
  str += '<param name="' + args[34] + '" value="' + args[35] + '" />';
  str += '<embed ';
  str += args[8] + '="' + args[9] + '" ';
  str += args[34] + '="' + args[35] + '" ';
  str += args[10] + '="' + args[11] + '" ';
  str += args[12] + '="' + args[13] + '" ';  
  str += args[0] + '="' + args[1] + '" ';
  str += args[2] + '="' + args[3] + '" ';
  str += args[26] + '="' + args[27] + '" ';
  str += args[6] + '="' + args[7] + '" ';
  str += args[14] + '="' + args[15] + '" ';
  str += 'type="application/x-shockwave-flash" ';
  str += args[16] + '="' + args[17] + '" ';
  str += '/></object>';
  document.write(str);
}


