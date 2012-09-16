<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="11008008">
	<Property Name="varPersistentID:{342C7378-E8DB-41E4-B165-E00F7E0F5804}" Type="Ref">/My Computer/Sensor SubVIs/LIDAR Acquisition Loop/LIDAR Data Variables.lvlib/LIDAR Data</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="IOScan.Faults" Type="Str"></Property>
		<Property Name="IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="IOScan.Period" Type="UInt">10000</Property>
		<Property Name="IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="IOScan.Priority" Type="UInt">9</Property>
		<Property Name="IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="IOScan.StartEngineOnDeploy" Type="Bool">false</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="AI SubVIs" Type="Folder"/>
		<Item Name="Drive SubVIs" Type="Folder">
			<Item Name="Motor Controller Command.vi" Type="VI" URL="../Motor Controller Command.vi"/>
		</Item>
		<Item Name="Sensor SubVIs" Type="Folder">
			<Item Name="LIDAR Acquisition Loop" Type="Folder">
				<Item Name="LIDAR Data Transforms" Type="Folder">
					<Item Name="Check LIDAR Ranges.vi" Type="VI" URL="../../../../../../../../Program Files/National Instruments/LabVIEW 2011/examples/robotics/Simulated Mecanum Robot/LIDAR Acquisition Loop/LIDAR Data Transforms/Check LIDAR Ranges.vi"/>
					<Item Name="Compress LIDAR Data.vi" Type="VI" URL="../../../../../../../../Program Files/National Instruments/LabVIEW 2011/examples/robotics/Simulated Mecanum Robot/LIDAR Acquisition Loop/LIDAR Data Transforms/Compress LIDAR Data.vi"/>
					<Item Name="Median Filter.vi" Type="VI" URL="../../../../../../../../Program Files/National Instruments/LabVIEW 2011/examples/robotics/Simulated Mecanum Robot/LIDAR Acquisition Loop/LIDAR Data Transforms/Median Filter.vi"/>
					<Item Name="Transform LIDAR Data.vi" Type="VI" URL="../../../../../../../../Program Files/National Instruments/LabVIEW 2011/examples/robotics/Simulated Mecanum Robot/LIDAR Acquisition Loop/LIDAR Data Transforms/Transform LIDAR Data.vi"/>
					<Item Name="Unflatten LIDAR Data.vi" Type="VI" URL="../../../../../../../../Program Files/National Instruments/LabVIEW 2011/examples/robotics/Simulated Mecanum Robot/LIDAR Acquisition Loop/LIDAR Data Transforms/Unflatten LIDAR Data.vi"/>
					<Item Name="Write LIDAR Range Data.vi" Type="VI" URL="../../../../../../../../Program Files/National Instruments/LabVIEW 2011/examples/robotics/Simulated Mecanum Robot/LIDAR Acquisition Loop/LIDAR Data Transforms/Write LIDAR Range Data.vi"/>
				</Item>
				<Item Name="Simulation" Type="Folder">
					<Item Name="2D Point.ctl" Type="VI" URL="../../../../../../../../Program Files/National Instruments/LabVIEW 2011/examples/robotics/Simulated Mecanum Robot/LIDAR Acquisition Loop/Simulation/2D Point.ctl"/>
					<Item Name="Global - Obstacles.vi" Type="VI" URL="../../../../../../../../Program Files/National Instruments/LabVIEW 2011/examples/robotics/Simulated Mecanum Robot/LIDAR Acquisition Loop/Simulation/Global - Obstacles.vi"/>
					<Item Name="Read Obstacle File.vi" Type="VI" URL="../../../../../../../../Program Files/National Instruments/LabVIEW 2011/examples/robotics/Simulated Mecanum Robot/LIDAR Acquisition Loop/Simulation/Read Obstacle File.vi"/>
					<Item Name="Simulated LIDAR (Faster).vi" Type="VI" URL="../../../../../../../../Program Files/National Instruments/LabVIEW 2011/examples/robotics/Simulated Mecanum Robot/LIDAR Acquisition Loop/Simulation/Simulated LIDAR (Faster).vi"/>
					<Item Name="Simulated LIDAR - compute r0 and phi.vi" Type="VI" URL="../../../../../../../../Program Files/National Instruments/LabVIEW 2011/examples/robotics/Simulated Mecanum Robot/LIDAR Acquisition Loop/Simulation/Simulated LIDAR - compute r0 and phi.vi"/>
				</Item>
				<Item Name="LIDAR Data Loop.vi" Type="VI" URL="../../../../../../../../Program Files/National Instruments/LabVIEW 2011/examples/robotics/Simulated Mecanum Robot/LIDAR Acquisition Loop/LIDAR Data Loop.vi"/>
				<Item Name="LIDAR Data Variables.lvlib" Type="Library" URL="../../../../../../../../Program Files/National Instruments/LabVIEW 2011/examples/robotics/Simulated Mecanum Robot/LIDAR Acquisition Loop/LIDAR Data Variables.lvlib"/>
			</Item>
		</Item>
		<Item Name="Find Direction From Lidar.vi" Type="VI" URL="../Find Direction From Lidar.vi"/>
		<Item Name="Moxom Run.vi" Type="VI" URL="../Moxom Run.vi"/>
		<Item Name="trentDemo.vi" Type="VI" URL="../../../../vision stuff/trentDemo.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="instr.lib" Type="Folder">
				<Item Name="Hokuyo URG Series.lvlib" Type="Library" URL="/&lt;instrlib&gt;/Hokuyo URG Series/Hokuyo URG Series.lvlib"/>
			</Item>
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Acquire Input Data.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/inputDevices.llb/Acquire Input Data.vi"/>
				<Item Name="Close Input Device.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/inputDevices.llb/Close Input Device.vi"/>
				<Item Name="closeJoystick.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/inputDevices.llb/closeJoystick.vi"/>
				<Item Name="closeKeyboard.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/inputDevices.llb/closeKeyboard.vi"/>
				<Item Name="closeMouse.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/inputDevices.llb/closeMouse.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="errorList.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/inputDevices.llb/errorList.vi"/>
				<Item Name="Image Type" Type="VI" URL="/&lt;vilib&gt;/vision/Image Controls.llb/Image Type"/>
				<Item Name="Image Unit" Type="VI" URL="/&lt;vilib&gt;/vision/Image Controls.llb/Image Unit"/>
				<Item Name="IMAQ Convert To Curve Parameters Internal" Type="VI" URL="/&lt;vilib&gt;/vision/Pattern Matching.llb/IMAQ Convert To Curve Parameters Internal"/>
				<Item Name="IMAQ Convert To Shape Detection Match Options Internal" Type="VI" URL="/&lt;vilib&gt;/vision/Shape Detection.llb/IMAQ Convert To Shape Detection Match Options Internal"/>
				<Item Name="IMAQ Copy" Type="VI" URL="/&lt;vilib&gt;/vision/Management.llb/IMAQ Copy"/>
				<Item Name="IMAQ Create" Type="VI" URL="/&lt;vilib&gt;/vision/Basics.llb/IMAQ Create"/>
				<Item Name="IMAQ Curve Parameters Internal.ctl" Type="VI" URL="/&lt;vilib&gt;/vision/Pattern Matching.llb/IMAQ Curve Parameters Internal.ctl"/>
				<Item Name="IMAQ Curve Parameters.ctl" Type="VI" URL="/&lt;vilib&gt;/vision/Pattern Matching.llb/IMAQ Curve Parameters.ctl"/>
				<Item Name="Imaq Dispose" Type="VI" URL="/&lt;vilib&gt;/vision/Basics.llb/Imaq Dispose"/>
				<Item Name="Imaq GetImageInfo" Type="VI" URL="/&lt;vilib&gt;/vision/Basics.llb/Imaq GetImageInfo"/>
				<Item Name="IMAQ Image.ctl" Type="VI" URL="/&lt;vilib&gt;/vision/Image Controls.llb/IMAQ Image.ctl"/>
				<Item Name="IMAQ Match Range Setting.ctl" Type="VI" URL="/&lt;vilib&gt;/vision/Pattern Matching.llb/IMAQ Match Range Setting.ctl"/>
				<Item Name="IMAQdx.ctl" Type="VI" URL="/&lt;vilib&gt;/userDefined/High Color/IMAQdx.ctl"/>
				<Item Name="Initialize Joystick.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/inputDevices.llb/Initialize Joystick.vi"/>
				<Item Name="IVA Append VI Name to GUID.vi" Type="VI" URL="/&lt;vilib&gt;/vision/Vision Assistant Utils.llb/IVA Append VI Name to GUID.vi"/>
				<Item Name="IVA Result Manager Function.ctl" Type="VI" URL="/&lt;vilib&gt;/vision/Vision Assistant Utils.llb/IVA Result Manager Function.ctl"/>
				<Item Name="IVA Result Manager.vi" Type="VI" URL="/&lt;vilib&gt;/vision/Vision Assistant Utils.llb/IVA Result Manager.vi"/>
				<Item Name="IVA Store Shape Lines Results.vi" Type="VI" URL="/&lt;vilib&gt;/vision/Vision Assistant Utils.llb/IVA Store Shape Lines Results.vi"/>
				<Item Name="joystickAcquire.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/inputDevices.llb/joystickAcquire.vi"/>
				<Item Name="keyboardAcquire.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/inputDevices.llb/keyboardAcquire.vi"/>
				<Item Name="mouseAcquire.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/inputDevices.llb/mouseAcquire.vi"/>
				<Item Name="NI_AAL_Angle.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AAL_Angle.lvlib"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="NI_AngleManipulation.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/AngleManip/NI_AngleManipulation.lvlib"/>
				<Item Name="NI_Gmath.lvlib" Type="Library" URL="/&lt;vilib&gt;/gmath/NI_Gmath.lvlib"/>
				<Item Name="NI_Robotics_Simple Vector Field Histogram.lvlib" Type="Library" URL="/&lt;vilib&gt;/robotics/Obstacle Avoidance/Simple Vector Field Histogram/NI_Robotics_Simple Vector Field Histogram.lvlib"/>
				<Item Name="NI_Vision_Acquisition_Software.lvlib" Type="Library" URL="/&lt;vilib&gt;/vision/driver/NI_Vision_Acquisition_Software.lvlib"/>
				<Item Name="NI_Vision_Development_Module.lvlib" Type="Library" URL="/&lt;vilib&gt;/vision/NI_Vision_Development_Module.lvlib"/>
				<Item Name="Query Input Devices.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/inputDevices.llb/Query Input Devices.vi"/>
				<Item Name="ShapeDetectionMatchOptions.ctl" Type="VI" URL="/&lt;vilib&gt;/vision/Shape Detection.llb/ShapeDetectionMatchOptions.ctl"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="VISA Configure Serial Port" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port"/>
				<Item Name="VISA Configure Serial Port (Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Instr).vi"/>
				<Item Name="VISA Configure Serial Port (Serial Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Serial Instr).vi"/>
				<Item Name="Vision Info Type" Type="VI" URL="/&lt;vilib&gt;/vision/Image Controls.llb/Vision Info Type"/>
				<Item Name="Vision Info Type2.ctl" Type="VI" URL="/&lt;vilib&gt;/vision/Image Controls.llb/Vision Info Type2.ctl"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
			</Item>
			<Item Name="Fix Lidar Values.vi" Type="VI" URL="../Fix Lidar Values.vi"/>
			<Item Name="Global - Real Position.vi" Type="VI" URL="../../../../../../../../Program Files/National Instruments/LabVIEW 2011/examples/robotics/Simulated Mecanum Robot/Motor Control Loop/Simulation/Global - Real Position.vi"/>
			<Item Name="LIDAR Position from Inertial Position.vi" Type="VI" URL="../../../../../../../../Program Files/National Instruments/LabVIEW 2011/examples/robotics/Simulated Mecanum Robot/Robot Parameters/LIDAR Position from Inertial Position.vi"/>
			<Item Name="lvanlys.dll" Type="Document" URL="../../../../../../../../Program Files/National Instruments/LabVIEW 2011/resource/lvanlys.dll"/>
			<Item Name="lvinput.dll" Type="Document" URL="../../../../../../../../Program Files/National Instruments/LabVIEW 2011/resource/lvinput.dll"/>
			<Item Name="niimaqdx.dll" Type="Document" URL="niimaqdx.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="nivision.dll" Type="Document" URL="nivision.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="nivissvc.dll" Type="Document" URL="nivissvc.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="Read Joystic.vi" Type="VI" URL="../../../../Motor Controller/Read Joystic.vi"/>
			<Item Name="Robot Parameters.vi" Type="VI" URL="../../../../../../../../Program Files/National Instruments/LabVIEW 2011/examples/robotics/Simulated Mecanum Robot/Robot Parameters/Robot Parameters.vi"/>
			<Item Name="Scale Motor Speeds.vi" Type="VI" URL="../../../../Motor Controller/Scale Motor Speeds.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
