<?xml version='1.0' encoding='UTF-8'?>
<Library LVVersion="11008008">
	<Property Name="Instrument Driver" Type="Str">True</Property>
	<Property Name="NI.Lib.DefaultMenu" Type="Str">dir.mnu</Property>
	<Property Name="NI.Lib.Description" Type="Str">LabVIEW Plug and Play instrument driver for Hokuyo URG series scanning range finders. Supported models include UTM-30LX, UHG-08LX, UBG-04LX-F01, URG-04LX (in SCIP 2.0 mode).</Property>
	<Property Name="NI.Lib.HelpPath" Type="Str"></Property>
	<Property Name="NI.Lib.Icon" Type="Bin">%1#!#!!!!!)!"1!&amp;!!!-!%!!!@````]!!!!"!!%!!!*-!!!*Q(C=\:1R4G-R%):`%%CU/="++.K7;EL;6WW@'[TG#GEJNMA"E.!57V#]*F?)O-&amp;=)6@)&amp;&lt;,@MY=%GK1"C:7Q-X\0P]=TX\-&gt;3[X=3&amp;@;HSP8*QPD?02G?N`X8JP7B&gt;@R^Y`?^0HF.`8K&gt;QDT@PZR`.C]\83@Q_MR\CF_H3T@Y^`D``@YG9,0QVGH4S\3230&amp;%AP--7N@NU`U2%`U2%`U2!`U1!`U1!`U1(&gt;U2X&gt;U2X&gt;U2T&gt;U1T&gt;U1T&gt;U1W]68?B#&amp;TKLEC20%C6"EQ#*-SB+GI1HY5FY%B[[3HA3HI1HY5FY=&amp;(#E`!E0!F0QM-U*4Q*4]+4]#1]B'IEW3I[0!E0Y28Q"$Q"4]!4]*"3!5]!%#1,!A&gt;"Q&amp;!Q',Q%0!&amp;0Q-/L!J[!*_!*?!)?BB8Q"$Q"4]!4]$#FL5IUGKGCQU-9/4Q/D]0D]$A]B*&lt;$Y`!Y0![0QU-[/4Q/DQ0B*(3#AS"HEO0A&gt;"Q?BY?(("[(R_&amp;R?"Q?BNI/?6O:C7;K[0!90!;0Q70Q'$S%E-&amp;D]"A]"I`"1VA:0!;0Q70Q'$SEEM&amp;D]"A]"IC2F01SABE4$3&gt;$-(DYN&gt;.C&lt;:?CE6CL^&gt;@M"V6V!&amp;5(3X6A6!&gt;"N='KD6.NC'KB61OI7BD6"[M_2!7I3KQ+K(,5DH;,&lt;&lt;!VNM+7W!)&lt;M$EWG[:_M/.ON^.WO^6GM^&amp;[P&gt;:KN&gt;*SO&gt;2CM&gt;!Q$*L0ZZL.:I@&lt;[J&lt;;S]8LP@4!_XD`^'0]^@D]]O@J&lt;BQ?R`(H\\_4`JH7\[7P=$@K5PMXVTRL^!_;65)L!!!!!!</Property>
	<Property Name="NI.Lib.Version" Type="Str">2.0.0.0</Property>
	<Property Name="NI.SortType" Type="Int">3</Property>
	<Item Name="Public" Type="Folder">
		<Property Name="NI.LibItem.Scope" Type="Int">1</Property>
		<Item Name="Configure" Type="Folder">
			<Item Name="Configure.mnu" Type="Document" URL="/&lt;instrlib&gt;/Hokuyo URG Series/Public/Configure/Configure.mnu"/>
			<Item Name="Configure Motor Speed.vi" Type="VI" URL="/&lt;instrlib&gt;/Hokuyo URG Series/Public/Configure/Configure Motor Speed.vi"/>
			<Item Name="Configure Serial Baud Rate.vi" Type="VI" URL="/&lt;instrlib&gt;/Hokuyo URG Series/Public/Configure/Configure Serial Baud Rate.vi"/>
			<Item Name="Configure Laser Sensitivity.vi" Type="VI" URL="/&lt;instrlib&gt;/Hokuyo URG Series/Public/Configure/Configure Laser Sensitivity.vi"/>
		</Item>
		<Item Name="Data" Type="Folder">
			<Item Name="Data.mnu" Type="Document" URL="/&lt;instrlib&gt;/Hokuyo URG Series/Public/Data/Data.mnu"/>
			<Item Name="Acquire Data.vi" Type="VI" URL="../Public/Data/Acquire Data.vi"/>
		</Item>
		<Item Name="Utility" Type="Folder">
			<Item Name="Utility.mnu" Type="Document" URL="/&lt;instrlib&gt;/Hokuyo URG Series/Public/Utility/Utility.mnu"/>
			<Item Name="Configure Laser Power.vi" Type="VI" URL="../Public/Utility/Configure Laser Power.vi"/>
			<Item Name="Sensor Specification.vi" Type="VI" URL="../Public/Utility/Sensor Specification.vi"/>
			<Item Name="Revision Query.vi" Type="VI" URL="/&lt;instrlib&gt;/Hokuyo URG Series/Public/Utility/Revision Query.vi"/>
			<Item Name="Match Time.vi" Type="VI" URL="/&lt;instrlib&gt;/Hokuyo URG Series/Public/Utility/Match Time.vi"/>
			<Item Name="Sensor State.vi" Type="VI" URL="/&lt;instrlib&gt;/Hokuyo URG Series/Public/Utility/Sensor State.vi"/>
		</Item>
		<Item Name="dir.mnu" Type="Document" URL="../Public/dir.mnu"/>
		<Item Name="Close.vi" Type="VI" URL="../Public/Close.vi"/>
		<Item Name="Initialize.vi" Type="VI" URL="../Public/Initialize.vi"/>
		<Item Name="Initialize-Standard.vi" Type="VI" URL="../Public/Initialize-Standard.vi"/>
		<Item Name="Initialize-cRIO-USB.vi" Type="VI" URL="../Public/Initialize-cRIO-USB.vi"/>
		<Item Name="VI Tree.vi" Type="VI" URL="../Public/VI Tree.vi"/>
	</Item>
	<Item Name="Private" Type="Folder">
		<Property Name="NI.LibItem.Scope" Type="Int">2</Property>
		<Item Name="Checksum.vi" Type="VI" URL="../Private/Checksum.vi"/>
		<Item Name="Reset.vi" Type="VI" URL="../Private/Reset.vi"/>
		<Item Name="Decode Data.vi" Type="VI" URL="../Private/Decode Data.vi"/>
		<Item Name="Set SCIP Mode.vi" Type="VI" URL="../Private/Set SCIP Mode.vi"/>
		<Item Name="Error Query.vi" Type="VI" URL="../Private/Error Query.vi"/>
		<Item Name="Query Instrument.vi" Type="VI" URL="../Private/Query Instrument.vi"/>
		<Item Name="Flush.vi" Type="VI" URL="../Private/Flush.vi"/>
	</Item>
	<Item Name="Hokuyo URG Series Readme.html" Type="Document" URL="/&lt;instrlib&gt;/Hokuyo URG Series/Hokuyo URG Series Readme.html"/>
</Library>
