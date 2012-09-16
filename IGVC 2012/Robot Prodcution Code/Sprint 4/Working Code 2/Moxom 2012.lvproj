<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="11008008">
	<Property Name="CCSymbols" Type="Str">SIM_MODE,Sim;</Property>
	<Property Name="NI.Project.Description" Type="Str">This example demonstrates the control of an autonomous robot through multiple asynchronous processes, modeled by VIs, that communicate with each other using shared variables. This example also shows an obstacle avoidance algorithm that the simulated robot uses as it navigates. The application includes the following processes:

1. LIDAR Loop ("Sense")--Uses LabVIEW dataflow programming to generate simulated sensor data based on the position of the robot and any obstacles in the environment.

2. Operator Loop ("Think")--Uses a state machine to control the movement of the robot according to commands from the user. When the robot follows a path without joystick or keyboard control, this process controls the attitude of the autonomous robot using a Vector Field Histogram (VFH) algorithm to avoid obstacles.

3. Motor Loop ("Act")--Uses a Control and Simulation Loop, from the Control Design and Simulation Module, to create a model of the robot, simulate its dynamic behavior, and show the control loops and attitude observers.
</Property>
	<Property Name="varPersistentID:{0144AC60-35F2-4FE3-9FB3-74028F5569C3}" Type="Ref">/My Computer/Support VIs/Operator Loop/Operator Variables.lvlib/Analog Stick</Property>
	<Property Name="varPersistentID:{086F1A2C-B99B-4A8D-9266-18066C9AF323}" Type="Ref">/My Computer/Support VIs/Operator Loop/Operator Variables.lvlib/Curent Index</Property>
	<Property Name="varPersistentID:{1003402A-F002-4C44-BBC0-AB58FB8DE801}" Type="Ref">/My Computer/Support VIs/IMU/IMU Data Variables.lvlib/IMU VISA</Property>
	<Property Name="varPersistentID:{12FF0ADF-4B7B-41E3-8868-3F8F90956747}" Type="Ref">/My Computer/Support VIs/GPS/GPS Data Variables.lvlib/GPS Data</Property>
	<Property Name="varPersistentID:{15A27D56-26AC-41BE-AEFB-21E1BC6E935E}" Type="Ref">/My Computer/Support VIs/Operator Loop/Operator Variables.lvlib/Joystick_Y</Property>
	<Property Name="varPersistentID:{2B4B9208-1FF0-4632-97CA-EBFE246E03AB}" Type="Ref">/My Computer/Support VIs/Motor Control Loop/Motor Control Variables.lvlib/Max RPM-Effort</Property>
	<Property Name="varPersistentID:{2C439972-089F-4DEB-9F2C-75DAF1BCBCE5}" Type="Ref">/My Computer/Support VIs/GPS/Google Earth/Google Earth.lvlib/Camera Position</Property>
	<Property Name="varPersistentID:{2D1A6FD2-785B-40E5-8275-966DA8C61D46}" Type="Ref">/My Computer/Support VIs/LIDAR/LIDAR Data Variables.lvlib/LIDAR Data</Property>
	<Property Name="varPersistentID:{2D94451C-FD8C-4C66-B609-5034263003BA}" Type="Ref">/My Computer/Support VIs/Operator Loop/Operator Variables.lvlib/Joystick_C</Property>
	<Property Name="varPersistentID:{348A2670-5FFB-4F78-9785-625D951ED1AE}" Type="Ref">/My Computer/Support VIs/Motor Control Loop/Motor Control Variables.lvlib/VTan_Cmd</Property>
	<Property Name="varPersistentID:{3B6AFB66-0075-44E7-899B-48F2F3AFC948}" Type="Ref">/My Computer/Support VIs/Cammera/Image Variables.lvlib/Line Data</Property>
	<Property Name="varPersistentID:{3FEB65B6-8EFE-4FD4-A724-68E87A57F909}" Type="Ref">/My Computer/Support VIs/Operator Loop/Operator Variables.lvlib/Outer Threshold</Property>
	<Property Name="varPersistentID:{413E0476-413A-4944-9954-1A60A4E6E491}" Type="Ref">/My Computer/Support VIs/Motor Control Loop/Motor Control Variables.lvlib/Odometry Data</Property>
	<Property Name="varPersistentID:{43561F3C-88DB-4167-A558-27EA2463D524}" Type="Ref">/My Computer/Support VIs/Operator Loop/Operator Variables.lvlib/Mask</Property>
	<Property Name="varPersistentID:{4A3E983C-CCF4-47C4-AE8A-648481ECB17B}" Type="Ref">/My Computer/Support VIs/Operator Loop/Operator Variables.lvlib/Sub Goal Name</Property>
	<Property Name="varPersistentID:{4E408FC3-FBB8-4AD0-BAFB-784171B72C9D}" Type="Ref">/My Computer/Support VIs/Cammera/Image Variables.lvlib/Preview</Property>
	<Property Name="varPersistentID:{510B7CEF-E58D-4BF2-8AFA-F54B0B4FCDEF}" Type="Ref">/My Computer/Support VIs/IMU/IMU Data Variables.lvlib/IMU Data</Property>
	<Property Name="varPersistentID:{518A1C71-60E6-497C-9848-F7C4F778F668}" Type="Ref">/My Computer/Support VIs/Motor Control Loop/Motor Control Variables.lvlib/Body Velocities</Property>
	<Property Name="varPersistentID:{65647E42-1EB0-4DF5-A37C-DE2A249ED1A4}" Type="Ref">/My Computer/Support VIs/Operator Loop/Operator Variables.lvlib/Joystick_T</Property>
	<Property Name="varPersistentID:{680227D1-0543-44E1-8C7D-94EFC4C03BCC}" Type="Ref">/My Computer/Support VIs/Operator Loop/Operator Variables.lvlib/Target Distance</Property>
	<Property Name="varPersistentID:{7803AD47-A182-4153-85A9-4A3C82966761}" Type="Ref">/My Computer/Support VIs/LIDAR/LIDAR Data Variables.lvlib/LIDAR Error</Property>
	<Property Name="varPersistentID:{7916A346-B155-4344-A98E-2953BB902A55}" Type="Ref">/My Computer/Support VIs/Motor Control Loop/Motor Control Variables.lvlib/Telemetry</Property>
	<Property Name="varPersistentID:{7F0D82A3-E285-4DF1-B92E-1A7A302B96E5}" Type="Ref">/My Computer/Support VIs/Operator Loop/Operator Variables.lvlib/SubGoalOrt</Property>
	<Property Name="varPersistentID:{899E244D-2867-4DBD-8BB1-C42D80FFA6DE}" Type="Ref">/My Computer/Support VIs/GPS/GPS Data Variables.lvlib/GPS VISA</Property>
	<Property Name="varPersistentID:{8B14876E-BA40-4461-8F2A-E6FBFC10253F}" Type="Ref">/My Computer/Support VIs/Operator Loop/Operator Variables.lvlib/Joystick_X</Property>
	<Property Name="varPersistentID:{9775BB07-073B-47FB-BE8A-548CE8381E9F}" Type="Ref">/My Computer/Support VIs/Motor Control Loop/Motor Control Variables.lvlib/Motor Velocities</Property>
	<Property Name="varPersistentID:{9C31AD0F-0652-4036-8AE6-008BF860A42B}" Type="Ref">/My Computer/Support VIs/IMU/IMU Data Variables.lvlib/IMU Error</Property>
	<Property Name="varPersistentID:{A82BDA9F-CC52-442D-94E4-0F6FCB56571D}" Type="Ref">/My Computer/Support VIs/Operator Loop/Operator Variables.lvlib/Waypoint Table</Property>
	<Property Name="varPersistentID:{AC76709E-811C-4252-8CEF-7BFB4509AB3A}" Type="Ref">/My Computer/Support VIs/Motor Control Loop/Motor Control Variables.lvlib/Odometry Update Data</Property>
	<Property Name="varPersistentID:{ADCADE64-B106-4279-B3DE-FC58B2727AB7}" Type="Ref">/My Computer/Support VIs/Motor Control Loop/Motor Control Variables.lvlib/Motor VISA</Property>
	<Property Name="varPersistentID:{AEB8776B-778B-446B-BD9F-BEBF4365330E}" Type="Ref">/My Computer/Support VIs/Operator Loop/Operator Variables.lvlib/Histogram</Property>
	<Property Name="varPersistentID:{BFED7440-95DF-42AA-A270-C0430AD16D63}" Type="Ref">/My Computer/Support VIs/Operator Loop/Operator Variables.lvlib/Inner Threshold</Property>
	<Property Name="varPersistentID:{C13AB67E-BB54-4F9D-8DF2-68EE9B933F74}" Type="Ref">/My Computer/Support VIs/Motor Control Loop/Motor Control Variables.lvlib/Motor Error</Property>
	<Property Name="varPersistentID:{C4E123DF-01BD-4833-8644-973F21D4D621}" Type="Ref">/My Computer/Support VIs/GPS/GPS Data Variables.lvlib/GPS Error</Property>
	<Property Name="varPersistentID:{D11C5BBF-2773-47FA-8F52-2AE60F77C92D}" Type="Ref">/My Computer/Support VIs/Utility/Utility.lvlib/Error Indiicator</Property>
	<Property Name="varPersistentID:{D5483623-1956-45E0-A8FE-2B81B8E758EC}" Type="Ref">/My Computer/Support VIs/Motor Control Loop/Motor Control Variables.lvlib/VAng_Cmd</Property>
	<Property Name="varPersistentID:{D86FCA1D-F62B-4654-953A-99E09FC5542F}" Type="Ref">/My Computer/Support VIs/Operator Loop/Operator Variables.lvlib/SubGoal</Property>
	<Property Name="varPersistentID:{DA3FAEE8-07DD-42FE-B21B-F4888899B1C7}" Type="Ref">/My Computer/Support VIs/Motor Control Loop/Motor Control Variables.lvlib/Wheel Angles</Property>
	<Property Name="varPersistentID:{E0E5EAD0-D95F-4911-A82D-B31D3BBA32CB}" Type="Ref">/My Computer/Support VIs/Operator Loop/Operator Variables.lvlib/SubPath</Property>
	<Property Name="varPersistentID:{E172DBF5-F1F8-464E-8A50-E95A08E1113B}" Type="Ref">/My Computer/Support VIs/Operator Loop/Operator Variables.lvlib/Robot Mode</Property>
	<Property Name="varPersistentID:{EA76E07E-F4D0-4516-B603-7DD03A3CA747}" Type="Ref">/My Computer/Support VIs/Motor Control Loop/Motor Control Variables.lvlib/Odometry Update Signal</Property>
	<Property Name="varPersistentID:{F091B615-5483-46AC-B68C-8D630C0F2156}" Type="Ref">/My Computer/Support VIs/Cammera/Image Variables.lvlib/Camera Error</Property>
	<Property Name="varPersistentID:{F25F5A5D-6A66-4F04-A37F-47DA13F23CCE}" Type="Ref">/My Computer/Support VIs/LIDAR/LIDAR Data Variables.lvlib/LIDAR VISA</Property>
	<Property Name="varPersistentID:{F79DF2D6-3465-442F-A743-62668762D9ED}" Type="Ref">/My Computer/Support VIs/Motor Control Loop/Motor Control Variables.lvlib/Heading_Cmd</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="DisableAutoDeployVariables" Type="Bool">false</Property>
		<Property Name="IOScan.Faults" Type="Str"></Property>
		<Property Name="IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="IOScan.Period" Type="UInt">10000</Property>
		<Property Name="IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="IOScan.Priority" Type="UInt">9</Property>
		<Property Name="IOScan.ReportModeConflict" Type="Bool">false</Property>
		<Property Name="IOScan.StartEngineOnDeploy" Type="Bool">false</Property>
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Support VIs" Type="Folder">
			<Property Name="NI.SortType" Type="Int">0</Property>
			<Item Name="Cammera" Type="Folder">
				<Item Name="Image Loop 1.vi" Type="VI" URL="../Image Acquisition Loop/Image Loop 1.vi"/>
				<Item Name="Image Variables.lvlib" Type="Library" URL="../Image Acquisition Loop/Image Variables.lvlib"/>
			</Item>
			<Item Name="GPS" Type="Folder">
				<Item Name="Google Earth" Type="Folder">
					<Item Name="SubVIs" Type="Folder">
						<Item Name="Google Earth VIs" Type="Folder">
							<Item Name="Google Earth - Camera Position - Read.vi" Type="VI" URL="../GPS/Google/SubVIs/Google Earth VIs/Google Earth - Camera Position - Read.vi"/>
							<Item Name="Google Earth - Camera Position - Write.vi" Type="VI" URL="../GPS/Google/SubVIs/Google Earth VIs/Google Earth - Camera Position - Write.vi"/>
							<Item Name="Google Earth - Get Co-ords from screen position.vi" Type="VI" URL="../GPS/Google/SubVIs/Google Earth VIs/Google Earth - Get Co-ords from screen position.vi"/>
							<Item Name="Google Earth - initialise.vi" Type="VI" URL="../GPS/Google/SubVIs/Google Earth VIs/Google Earth - initialise.vi"/>
							<Item Name="Google Earth - Streaming info.vi" Type="VI" URL="../GPS/Google/SubVIs/Google Earth VIs/Google Earth - Streaming info.vi"/>
							<Item Name="Google Earth - Test.vi" Type="VI" URL="../GPS/Google/SubVIs/Google Earth VIs/Google Earth - Test.vi"/>
							<Item Name="Google Earth - Version info.vi" Type="VI" URL="../GPS/Google/SubVIs/Google Earth VIs/Google Earth - Version info.vi"/>
							<Item Name="Google Earth - View Extents.vi" Type="VI" URL="../GPS/Google/SubVIs/Google Earth VIs/Google Earth - View Extents.vi"/>
						</Item>
						<Item Name="User32 DLL calls" Type="Folder">
							<Item Name="FindWindowA.vi" Type="VI" URL="../GPS/Google/SubVIs/User32 DLL calls/FindWindowA.vi"/>
							<Item Name="SetParent.vi" Type="VI" URL="../GPS/Google/SubVIs/User32 DLL calls/SetParent.vi"/>
						</Item>
						<Item Name="Camera Position.ctl" Type="VI" URL="../GPS/Google/SubVIs/Camera Position.ctl"/>
						<Item Name="EventHandlerEnum.ctl" Type="VI" URL="../GPS/Google/SubVIs/EventHandlerEnum.ctl"/>
						<Item Name="GE hWnd Handler.vi" Type="VI" URL="../GPS/Google/SubVIs/GE hWnd Handler.vi"/>
					</Item>
					<Item Name="Google Earth.lvlib" Type="Library" URL="../GPS/Google/Google Earth.lvlib"/>
					<Item Name="Google Earth.vi" Type="VI" URL="../GPS/Google/Google Earth.vi"/>
				</Item>
				<Item Name="GPS Data Loop With Directional Info.vi" Type="VI" URL="../GPS/GPS Data Loop With Directional Info.vi"/>
				<Item Name="GPS Data Loop.vi" Type="VI" URL="../GPS/GPS Data Loop.vi"/>
				<Item Name="GPS Data Variables.lvlib" Type="Library" URL="../GPS/GPS Data Variables.lvlib"/>
				<Item Name="New GPS Data Loop.vi" Type="VI" URL="../GPS/New GPS Data Loop.vi"/>
				<Item Name="Parse NMEA String.vi" Type="VI" URL="../GPS/Parse NMEA String.vi"/>
			</Item>
			<Item Name="IMU" Type="Folder">
				<Item Name="IMU Data Loop.vi" Type="VI" URL="../IMU/IMU Data Loop.vi"/>
				<Item Name="IMU Data Variables.lvlib" Type="Library" URL="../IMU/IMU Data Variables.lvlib"/>
			</Item>
			<Item Name="LIDAR" Type="Folder">
				<Item Name="LIDAR Data Transforms" Type="Folder">
					<Item Name="Check LIDAR Ranges.vi" Type="VI" URL="../LIDAR Acquisition Loop/LIDAR Data Transforms/Check LIDAR Ranges.vi"/>
					<Item Name="Compress LIDAR Data.vi" Type="VI" URL="../LIDAR Acquisition Loop/LIDAR Data Transforms/Compress LIDAR Data.vi"/>
					<Item Name="Median Filter.vi" Type="VI" URL="../LIDAR Acquisition Loop/LIDAR Data Transforms/Median Filter.vi"/>
					<Item Name="Transform LIDAR Data.vi" Type="VI" URL="../LIDAR Acquisition Loop/LIDAR Data Transforms/Transform LIDAR Data.vi"/>
					<Item Name="Unflatten LIDAR Data.vi" Type="VI" URL="../LIDAR Acquisition Loop/LIDAR Data Transforms/Unflatten LIDAR Data.vi"/>
					<Item Name="Write LIDAR Range Data.vi" Type="VI" URL="../LIDAR Acquisition Loop/LIDAR Data Transforms/Write LIDAR Range Data.vi"/>
				</Item>
				<Item Name="LIDAR Data Loop.vi" Type="VI" URL="../LIDAR Acquisition Loop/LIDAR Data Loop.vi"/>
				<Item Name="LIDAR Data Variables.lvlib" Type="Library" URL="../LIDAR Acquisition Loop/LIDAR Data Variables.lvlib"/>
				<Item Name="Polarplot.vi" Type="VI" URL="../LIDAR Acquisition Loop/Polarplot.vi"/>
			</Item>
			<Item Name="Motor Control Loop" Type="Folder">
				<Property Name="NI.SortType" Type="Int">3</Property>
				<Item Name="Roboteq" Type="Folder">
					<Item Name="Roboteq.lvlib" Type="Library" URL="../Motor Control Loop/Roboteq/Roboteq.lvlib"/>
				</Item>
				<Item Name="Simulation" Type="Folder">
					<Item Name="DFIR End Run.vi" Type="VI" URL="../Motor Control Loop/Simulation/DFIR End Run.vi"/>
					<Item Name="Global - Real Position.vi" Type="VI" URL="../Motor Control Loop/Simulation/Global - Real Position.vi"/>
					<Item Name="Mecanum Robot Body Model.vi" Type="VI" URL="../../../../../../../../Program Files/National Instruments/LabVIEW 2011/examples/robotics/Simulated Mecanum Robot/Motor Control Loop/Simulation/Mecanum Robot Body Model.vi"/>
					<Item Name="Motor Model.vi" Type="VI" URL="../../../../../../../../Program Files/National Instruments/LabVIEW 2011/examples/robotics/Simulated Mecanum Robot/Motor Control Loop/Simulation/Motor Model.vi"/>
					<Item Name="PID_vector (derivative acts only on process variable).vi" Type="VI" URL="../../../../../../../../Program Files/National Instruments/LabVIEW 2011/examples/robotics/Simulated Mecanum Robot/Motor Control Loop/Simulation/PID_vector (derivative acts only on process variable).vi"/>
				</Item>
				<Item Name="Initialize Moxom Differential Steering.vi" Type="VI" URL="../Motor Control Loop/Initialize Moxom Differential Steering.vi"/>
				<Item Name="Motor Control Variables.lvlib" Type="Library" URL="../Motor Control Loop/Motor Control Variables.lvlib"/>
				<Item Name="PID_scalar (derivative acts only on process variable).vi" Type="VI" URL="../../../../../../../../Program Files/National Instruments/LabVIEW 2011/examples/robotics/Simulated Mecanum Robot/Motor Control Loop/PID_scalar (derivative acts only on process variable).vi"/>
				<Item Name="Telemetry.ctl" Type="VI" URL="../Motor Control Loop/Telemetry.ctl"/>
				<Item Name="Unflatten Odometry Data.vi" Type="VI" URL="../Motor Control Loop/Unflatten Odometry Data.vi"/>
				<Item Name="Unsaturate Commanded Motor Velocities.vi" Type="VI" URL="../Motor Control Loop/Unsaturate Commanded Motor Velocities.vi"/>
				<Item Name="Wheel States Segmentation.vi" Type="VI" URL="../Motor Control Loop/Wheel States Segmentation.vi"/>
				<Item Name="Write Odometry Position Variable.vi" Type="VI" URL="../Motor Control Loop/Write Odometry Position Variable.vi"/>
				<Item Name="Motor Control Loop.vi" Type="VI" URL="../Motor Control Loop/Motor Control Loop.vi"/>
			</Item>
			<Item Name="Operator Loop" Type="Folder">
				<Property Name="NI.SortType" Type="Int">3</Property>
				<Item Name="Obstacle Avoidance" Type="Folder">
					<Item Name="Vector Field Histogram" Type="Folder">
						<Item Name="Call Vector Field Histogram.vi" Type="VI" URL="../Operator Loop/Obstacle Avoidance/Vector Field Histogram/Call Vector Field Histogram.vi"/>
						<Item Name="Polar to Cartesian.vi" Type="VI" URL="../Operator Loop/Obstacle Avoidance/Polar to Cartesian.vi"/>
						<Item Name="VFH Speed Selection.vi" Type="VI" URL="../Operator Loop/Obstacle Avoidance/Vector Field Histogram/VFH Speed Selection.vi"/>
					</Item>
					<Item Name="Find Relative Goal Location.vi" Type="VI" URL="../Operator Loop/Obstacle Avoidance/Find Relative Goal Location.vi"/>
					<Item Name="Measure.vi" Type="VI" URL="../Operator Loop/Obstacle Avoidance/Measure.vi"/>
					<Item Name="Motion.vi" Type="VI" URL="../Operator Loop/Obstacle Avoidance/Motion.vi"/>
					<Item Name="Occupancy Grid.vi" Type="VI" URL="../Operator Loop/Obstacle Avoidance/Occupancy Grid.vi"/>
					<Item Name="Plan Path.vi" Type="VI" URL="../Operator Loop/Obstacle Avoidance/Plan Path.vi"/>
					<Item Name="Initialize Occupancy Grid.vi" Type="VI" URL="../Operator Loop/Obstacle Avoidance/Initialize Occupancy Grid.vi"/>
					<Item Name="Backing up cost.vi" Type="VI" URL="../Operator Loop/Obstacle Avoidance/Backing up cost.vi"/>
					<Item Name="Histogram Avoidance.vi" Type="VI" URL="../Operator Loop/Obstacle Avoidance/Histogram Avoidance.vi"/>
				</Item>
				<Item Name="Remote" Type="Folder">
					<Item Name="Joypad" Type="Folder">
						<Item Name="Joypad Loop.vi" Type="VI" URL="../Remote/Joypad/Joypad Loop.vi"/>
					</Item>
					<Item Name="Wiimote" Type="Folder">
						<Item Name="Normalize.vi" Type="VI" URL="../Remote/Wiimote/Normalize.vi"/>
						<Item Name="subBluetoothConnect.vi" Type="VI" URL="../Remote/Wiimote/Wiimote/subBluetoothConnect.vi"/>
						<Item Name="Wii Out.vi" Type="VI" URL="../Remote/Wiimote/Wii Out.vi"/>
						<Item Name="Wiimote Loop.vi" Type="VI" URL="../Remote/Wiimote/Wiimote Loop.vi"/>
						<Item Name="Wiimote.lvlib" Type="Library" URL="../Remote/Wiimote/Wiimote.lvlib"/>
					</Item>
					<Item Name="XY to Velocity.vi" Type="VI" URL="../Remote/Wiimote/XY to Velocity.vi"/>
				</Item>
				<Item Name="Analog Stick.ctl" Type="VI" URL="../Remote/Analog Stick.ctl"/>
				<Item Name="AngleWrapper.vi" Type="VI" URL="../Operator Loop/AngleWrapper.vi"/>
				<Item Name="Joystick Control Time Decay.vi" Type="VI" URL="../Operator Loop/Joystick Control Time Decay.vi"/>
				<Item Name="Operator Loop Mode.ctl" Type="VI" URL="../Operator Loop/Operator Loop Mode.ctl"/>
				<Item Name="Operator Variables.lvlib" Type="Library" URL="../Operator Loop/Operator Variables.lvlib"/>
				<Item Name="Robot Mode.ctl" Type="VI" URL="../Operator Loop/Robot Mode.ctl"/>
				<Item Name="X Y to Angle.vi" Type="VI" URL="../Operator Loop/X Y to Angle.vi"/>
				<Item Name="Operator Loop OLD.vi" Type="VI" URL="../Operator Loop/Operator Loop OLD.vi"/>
				<Item Name="SubGoal Loop.vi" Type="VI" URL="../Operator Loop/SubGoal Loop.vi"/>
				<Item Name="Operator Loop.vi" Type="VI" URL="../Operator Loop/Operator Loop.vi"/>
			</Item>
			<Item Name="Robot Parameters" Type="Folder">
				<Item Name="Compute Obstacle Clearance.vi" Type="VI" URL="../Robot Parameters/Compute Obstacle Clearance.vi"/>
				<Item Name="LIDAR Position from Inertial Position.vi" Type="VI" URL="../Robot Parameters/LIDAR Position from Inertial Position.vi"/>
				<Item Name="Robot Parameters.vi" Type="VI" URL="../Robot Parameters/Robot Parameters.vi"/>
			</Item>
			<Item Name="Simulated VFH TEST support" Type="Folder">
				<Item Name="2D Normal Vector.vi" Type="VI" URL="../Simulated VFH TEST support/2D Normal Vector.vi"/>
				<Item Name="3D Cross Product.vi" Type="VI" URL="../Simulated VFH TEST support/3D Cross Product.vi"/>
				<Item Name="3D Obstacles.vi" Type="VI" URL="../Simulated VFH TEST support/3D Obstacles.vi"/>
				<Item Name="3D Offset Object Z.vi" Type="VI" URL="../Simulated VFH TEST support/3D Offset Object Z.vi"/>
				<Item Name="3D Point.ctl" Type="VI" URL="../Simulated VFH TEST support/3D Point.ctl"/>
				<Item Name="3D Robot Frame.vi" Type="VI" URL="../Simulated VFH TEST support/3D Robot Frame.vi"/>
				<Item Name="3D Robot Model.vi" Type="VI" URL="../Simulated VFH TEST support/3D Robot Model.vi"/>
				<Item Name="3D Robot Scene.vi" Type="VI" URL="../Simulated VFH TEST support/3D Robot Scene.vi"/>
				<Item Name="Draw 2D map.vi" Type="VI" URL="../Simulated VFH TEST support/Draw 2D map.vi"/>
				<Item Name="Draw Body Reference Frame.vi" Type="VI" URL="../Simulated VFH TEST support/Draw Body Reference Frame.vi"/>
				<Item Name="Draw Floor.vi" Type="VI" URL="../Simulated VFH TEST support/Draw Floor.vi"/>
				<Item Name="Draw Robot Trail.vi" Type="VI" URL="../Simulated VFH TEST support/Draw Robot Trail.vi"/>
				<Item Name="Draw XY Heading.vi" Type="VI" URL="../Simulated VFH TEST support/Draw XY Heading.vi"/>
				<Item Name="Embed 2D to 3D.vi" Type="VI" URL="../Simulated VFH TEST support/Embed 2D to 3D.vi"/>
				<Item Name="Get Goal Coords From Map.vi" Type="VI" URL="../Simulated VFH TEST support/Get Goal Coords From Map.vi"/>
				<Item Name="Global - Keyboard Commands.vi" Type="VI" URL="../Simulated VFH TEST support/Global - Keyboard Commands.vi"/>
				<Item Name="Interpret Key Down.vi" Type="VI" URL="../Simulated VFH TEST support/Interpret Key Down.vi"/>
				<Item Name="Set Robot Position.vi" Type="VI" URL="../Simulated VFH TEST support/Set Robot Position.vi"/>
			</Item>
			<Item Name="Utility" Type="Folder">
				<Item Name="Close VI Server Application Control.vi" Type="VI" URL="../Utility/Close VI Server Application Control.vi"/>
				<Item Name="Color Table.vi" Type="VI" URL="../Utility/Color Table.vi"/>
				<Item Name="Convert Number to Module.vi" Type="VI" URL="../Utility/Convert Number to Module.vi"/>
				<Item Name="Data Logging.vi" Type="VI" URL="../Utility/Data Logging.vi"/>
				<Item Name="Error Refresh.vi" Type="VI" URL="../Utility/Error Refresh.vi"/>
				<Item Name="Get Camera Position.vi" Type="VI" URL="../Utility/Get Camera Position.vi"/>
				<Item Name="Get Robot Position.vi" Type="VI" URL="../Utility/Get Robot Position.vi"/>
				<Item Name="Open VI Server Application Control.vi" Type="VI" URL="../Utility/Open VI Server Application Control.vi"/>
				<Item Name="Plot Position and Target in 2D.vi" Type="VI" URL="../Utility/Plot Position and Target in 2D.vi"/>
				<Item Name="Start VI.vi" Type="VI" URL="../Utility/Start VI.vi"/>
				<Item Name="Stopt VI.vi" Type="VI" URL="../Utility/Stopt VI.vi"/>
				<Item Name="Utility.lvlib" Type="Library" URL="../Utility/Utility.lvlib"/>
				<Item Name="XY- Graph As Chart.vi" Type="VI" URL="../Utility/XY- Graph As Chart.vi"/>
			</Item>
			<Item Name="About Robot.vi" Type="VI" URL="../About Robot.vi"/>
			<Item Name="Table to Coordinates.vi" Type="VI" URL="../Operator Loop/Table to Coordinates.vi"/>
			<Item Name="VFH Visualization.vi" Type="VI" URL="../VFH Visualization.vi"/>
		</Item>
		<Item Name="Moxom.vi" Type="VI" URL="../Moxom.vi"/>
		<Item Name="PID.vi" Type="VI" URL="../Operator Loop/PID.vi"/>
		<Item Name="Search for VISA.vi" Type="VI" URL="../Utility/Search for VISA.vi"/>
		<Item Name="Moxom Run.vi" Type="VI" URL="../../../Sprint 3/Working Code/Moxom Run.vi"/>
		<Item Name="Image Paths.vi" Type="VI" URL="../Image Acquisition Loop/Image Paths.vi"/>
		<Item Name="Get next waypoint.vi" Type="VI" URL="../GPS/Get next waypoint.vi"/>
		<Item Name="Initialize Waypoint List.vi" Type="VI" URL="../GPS/Initialize Waypoint List.vi"/>
		<Item Name="Log data types.ctl" Type="VI" URL="../../../../../../Desktop/Log data types.ctl"/>
		<Item Name="Convert GPS To Table Array.vi" Type="VI" URL="../Operator Loop/Convert GPS To Table Array.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="NI_Matrix.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/Matrix/NI_Matrix.lvlib"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="NI_Robotics Utilities.lvlib" Type="Library" URL="/&lt;vilib&gt;/robotics/Utilities/NI_Robotics Utilities.lvlib"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="General Error Handler CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler CORE.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="Color to RGB.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/colorconv.llb/Color to RGB.vi"/>
				<Item Name="NI_Robotics_Mecanum Wheel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/robotics/Steering/Mecanum Wheel/NI_Robotics_Mecanum Wheel.lvclass"/>
				<Item Name="NI_Robotics_Wheel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/robotics/Steering/Wheel/NI_Robotics_Wheel.lvclass"/>
				<Item Name="NI_Robotics_Motor Communication.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/robotics/Actuation/Motor Communication/NI_Robotics_Motor Communication.lvclass"/>
				<Item Name="NI_Robotics_Fixed Wheel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/robotics/Steering/Fixed Wheel/NI_Robotics_Fixed Wheel.lvclass"/>
				<Item Name="NI_Robotics_Steering Wheel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/robotics/Steering/Steering Wheel/NI_Robotics_Steering Wheel.lvclass"/>
				<Item Name="NI_Robotics_Caster Wheel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/robotics/Steering/Caster Wheel/NI_Robotics_Caster Wheel.lvclass"/>
				<Item Name="NI_Robotics_Omnidirectional Wheel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/robotics/Steering/Omnidirectional Wheel/NI_Robotics_Omnidirectional Wheel.lvclass"/>
				<Item Name="Get LV Class Default Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Default Value.vi"/>
				<Item Name="Draw Line.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw Line.vi"/>
				<Item Name="Set Pen State.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Set Pen State.vi"/>
				<Item Name="Move Pen.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Move Pen.vi"/>
				<Item Name="Draw Multiple Lines.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw Multiple Lines.vi"/>
				<Item Name="Draw Circle by Radius.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pictutil.llb/Draw Circle by Radius.vi"/>
				<Item Name="Draw Arc.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw Arc.vi"/>
				<Item Name="NI_Robotics_Steering Frame.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/robotics/Steering/Steering Frame/NI_Robotics_Steering Frame.lvclass"/>
				<Item Name="NI_Robotics_Differential Steering Frame.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/robotics/Steering/Differential Steering Frame/NI_Robotics_Differential Steering Frame.lvclass"/>
				<Item Name="NI_Robotics_Special Steering Frame.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/robotics/Steering/Special Steering Frame/NI_Robotics_Special Steering Frame.lvclass"/>
				<Item Name="NI_Robotics_Ackermann Steering Frame.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/robotics/Steering/Ackermann Steering Frame/NI_Robotics_Ackermann Steering Frame.lvclass"/>
				<Item Name="NI_Robotics_Mecanum Steering Frame.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/robotics/Steering/Mecanum Steering Frame/NI_Robotics_Mecanum Steering Frame.lvclass"/>
				<Item Name="NI_AngleManipulation.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/AngleManip/NI_AngleManipulation.lvlib"/>
				<Item Name="NI_AAL_Angle.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AAL_Angle.lvlib"/>
				<Item Name="NI_Robotics_Motor Communication Ref.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/robotics/Actuation/Motor Communication Ref/NI_Robotics_Motor Communication Ref.lvclass"/>
				<Item Name="NI_Robotics_Motor Communication Val.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/robotics/Actuation/Motor Communication Val/NI_Robotics_Motor Communication Val.lvclass"/>
				<Item Name="Query Input Devices.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/inputDevices.llb/Query Input Devices.vi"/>
				<Item Name="errorList.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/inputDevices.llb/errorList.vi"/>
				<Item Name="joystickAcquire.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/inputDevices.llb/joystickAcquire.vi"/>
				<Item Name="mouseAcquire.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/inputDevices.llb/mouseAcquire.vi"/>
				<Item Name="keyboardAcquire.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/inputDevices.llb/keyboardAcquire.vi"/>
				<Item Name="Acquire Input Data.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/inputDevices.llb/Acquire Input Data.vi"/>
				<Item Name="Initialize Joystick.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/inputDevices.llb/Initialize Joystick.vi"/>
				<Item Name="closeMouse.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/inputDevices.llb/closeMouse.vi"/>
				<Item Name="closeKeyboard.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/inputDevices.llb/closeKeyboard.vi"/>
				<Item Name="closeJoystick.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/inputDevices.llb/closeJoystick.vi"/>
				<Item Name="Close Input Device.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/inputDevices.llb/Close Input Device.vi"/>
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="subDisplayMessage.vi" Type="VI" URL="/&lt;vilib&gt;/express/express output/DisplayMessageBlock.llb/subDisplayMessage.vi"/>
				<Item Name="VISA Configure Serial Port" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port"/>
				<Item Name="VISA Configure Serial Port (Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Instr).vi"/>
				<Item Name="VISA Configure Serial Port (Serial Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Serial Instr).vi"/>
				<Item Name="Compass Indicator.xctl" Type="XControl" URL="/&lt;vilib&gt;/robotics/Controls/Compass Indicator/Compass Indicator.xctl"/>
				<Item Name="Draw Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw Rect.vi"/>
				<Item Name="PCT Pad String.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/PCT Pad String.vi"/>
				<Item Name="Draw Text in Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw Text in Rect.vi"/>
				<Item Name="Draw Text at Point.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw Text at Point.vi"/>
				<Item Name="Hilite Color.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pictutil.llb/Hilite Color.vi"/>
				<Item Name="RGB to Color.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/colorconv.llb/RGB to Color.vi"/>
				<Item Name="LVPositionTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVPositionTypeDef.ctl"/>
				<Item Name="XControlSupport.lvlib" Type="Library" URL="/&lt;vilib&gt;/_xctls/XControlSupport.lvlib"/>
				<Item Name="Version To Dotted String.vi" Type="VI" URL="/&lt;vilib&gt;/_xctls/Version To Dotted String.vi"/>
				<Item Name="Draw Point.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw Point.vi"/>
				<Item Name="Map Value to Pixel.vi" Type="VI" URL="/&lt;vilib&gt;/picture/scale.llb/Map Value to Pixel.vi"/>
				<Item Name="Plot Polar Data.vi" Type="VI" URL="/&lt;vilib&gt;/picture/polarplt.llb/Plot Polar Data.vi"/>
				<Item Name="PG angle lines.vi" Type="VI" URL="/&lt;vilib&gt;/picture/polarplt.llb/PG angle lines.vi"/>
				<Item Name="PG angle labels.vi" Type="VI" URL="/&lt;vilib&gt;/picture/polarplt.llb/PG angle labels.vi"/>
				<Item Name="PG circles.vi" Type="VI" URL="/&lt;vilib&gt;/picture/polarplt.llb/PG circles.vi"/>
				<Item Name="Draw Scale.vi" Type="VI" URL="/&lt;vilib&gt;/picture/scale.llb/Draw Scale.vi"/>
				<Item Name="PG scale.vi" Type="VI" URL="/&lt;vilib&gt;/picture/polarplt.llb/PG scale.vi"/>
				<Item Name="Num To Text.vi" Type="VI" URL="/&lt;vilib&gt;/picture/scale.llb/Num To Text.vi"/>
				<Item Name="Map Setup.vi" Type="VI" URL="/&lt;vilib&gt;/picture/scale.llb/Map Setup.vi"/>
				<Item Name="Increment Filter.vi" Type="VI" URL="/&lt;vilib&gt;/picture/scale.llb/Increment Filter.vi"/>
				<Item Name="Calc Increment.vi" Type="VI" URL="/&lt;vilib&gt;/picture/scale.llb/Calc Increment.vi"/>
				<Item Name="Calc Scale Specs.vi" Type="VI" URL="/&lt;vilib&gt;/picture/scale.llb/Calc Scale Specs.vi"/>
				<Item Name="Get Ready.vi" Type="VI" URL="/&lt;vilib&gt;/picture/polarplt.llb/Get Ready.vi"/>
				<Item Name="Draw Polar Grids.vi" Type="VI" URL="/&lt;vilib&gt;/picture/polarplt.llb/Draw Polar Grids.vi"/>
				<Item Name="Validate Rectangle.vi" Type="VI" URL="/&lt;vilib&gt;/picture/scale.llb/Validate Rectangle.vi"/>
				<Item Name="Autoscale Polar as Needed.vi" Type="VI" URL="/&lt;vilib&gt;/picture/polarplt.llb/Autoscale Polar as Needed.vi"/>
				<Item Name="Polar Plot with Point Options.vi" Type="VI" URL="/&lt;vilib&gt;/picture/polarplt.llb/Polar Plot with Point Options.vi"/>
				<Item Name="Polar Plot.vi" Type="VI" URL="/&lt;vilib&gt;/picture/polarplt.llb/Polar Plot.vi"/>
				<Item Name="NI_PID__prctrl compat.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/control/pid/NI_PID__prctrl compat.lvlib"/>
				<Item Name="NI_PID_pid.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/control/pid/NI_PID_pid.lvlib"/>
				<Item Name="lvpidtkt.dll" Type="Document" URL="/&lt;vilib&gt;/addons/control/pid/lvpidtkt.dll"/>
				<Item Name="SIM limit type.ctl" Type="VI" URL="/&lt;vilib&gt;/Simulation/Implementation/Shared/SIM limit type.ctl"/>
				<Item Name="NILVSim.dll" Type="Document" URL="/&lt;vilib&gt;/Simulation/Implementation/Shared/NILVSim.dll"/>
				<Item Name="NI_Robotics_Vector Field Histogram.lvlib" Type="Library" URL="/&lt;vilib&gt;/robotics/Obstacle Avoidance/Advanced Vector Field Histogram/NI_Robotics_Vector Field Histogram.lvlib"/>
				<Item Name="LVRGBAColorTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRGBAColorTypeDef.ctl"/>
				<Item Name="NI_3D Picture Control.lvlib" Type="Library" URL="/&lt;vilib&gt;/picture/3D Picture Control/NI_3D Picture Control.lvlib"/>
				<Item Name="NI_Robotics 3D Picture Steering Utilities.lvlib" Type="Library" URL="/&lt;vilib&gt;/robotics/Steering/Utilities/3D Picture/NI_Robotics 3D Picture Steering Utilities.lvlib"/>
				<Item Name="LV3DPointTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LV3DPointTypeDef.ctl"/>
				<Item Name="LVTextureCoordinateArrayTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVTextureCoordinateArrayTypeDef.ctl"/>
				<Item Name="Read JPEG File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Read JPEG File.vi"/>
				<Item Name="imagedata.ctl" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/imagedata.ctl"/>
				<Item Name="Check Path.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check Path.vi"/>
				<Item Name="Directory of Top Level VI.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Directory of Top Level VI.vi"/>
				<Item Name="Empty Picture" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Empty Picture"/>
				<Item Name="LVPoint32TypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVPoint32TypeDef.ctl"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="System Directory Type.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/sysdir.llb/System Directory Type.ctl"/>
				<Item Name="Get System Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/sysdir.llb/Get System Directory.vi"/>
				<Item Name="Image Type" Type="VI" URL="/&lt;vilib&gt;/vision/Image Controls.llb/Image Type"/>
				<Item Name="IMAQ Image.ctl" Type="VI" URL="/&lt;vilib&gt;/vision/Image Controls.llb/IMAQ Image.ctl"/>
				<Item Name="IMAQ Create" Type="VI" URL="/&lt;vilib&gt;/vision/Basics.llb/IMAQ Create"/>
				<Item Name="Vision Acquisition CalculateFPS.vi" Type="VI" URL="/&lt;vilib&gt;/vision/driver/Vision Acquisition Express Utility VIs.llb/Vision Acquisition CalculateFPS.vi"/>
				<Item Name="NI_Gmath.lvlib" Type="Library" URL="/&lt;vilib&gt;/gmath/NI_Gmath.lvlib"/>
				<Item Name="NI_Robotics_Simple Vector Field Histogram.lvlib" Type="Library" URL="/&lt;vilib&gt;/robotics/Obstacle Avoidance/Simple Vector Field Histogram/NI_Robotics_Simple Vector Field Histogram.lvlib"/>
				<Item Name="IMAQ Copy" Type="VI" URL="/&lt;vilib&gt;/vision/Management.llb/IMAQ Copy"/>
				<Item Name="Image Unit" Type="VI" URL="/&lt;vilib&gt;/vision/Image Controls.llb/Image Unit"/>
				<Item Name="Imaq GetImageInfo" Type="VI" URL="/&lt;vilib&gt;/vision/Basics.llb/Imaq GetImageInfo"/>
				<Item Name="Imaq Dispose" Type="VI" URL="/&lt;vilib&gt;/vision/Basics.llb/Imaq Dispose"/>
				<Item Name="IVA Mask from ROI.vi" Type="VI" URL="/&lt;vilib&gt;/vision/Vision Assistant Utils.llb/IVA Mask from ROI.vi"/>
				<Item Name="IVA Straight Edge2 - Overlay.vi" Type="VI" URL="/&lt;vilib&gt;/vision/Vision Assistant Utils.llb/IVA Straight Edge2 - Overlay.vi"/>
				<Item Name="IVA Store Straight Edges Results.vi" Type="VI" URL="/&lt;vilib&gt;/vision/Vision Assistant Utils.llb/IVA Store Straight Edges Results.vi"/>
				<Item Name="IVA Image Buffer.vi" Type="VI" URL="/&lt;vilib&gt;/vision/Vision Assistant Utils.llb/IVA Image Buffer.vi"/>
				<Item Name="NI_Robotics_OccupancyGridMapNode.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/robotics/Navigation/shared/MapNode/OccupancyGridNode/NI_Robotics_OccupancyGridMapNode.lvclass"/>
				<Item Name="NI_Robotics_AbstractMapNode.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/robotics/Navigation/shared/MapNode/AbstractMapNode/NI_Robotics_AbstractMapNode.lvclass"/>
				<Item Name="NI_Robotics_AbstractDstarNode.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/robotics/Navigation/shared/MapNode/AbstractDstarNode/NI_Robotics_AbstractDstarNode.lvclass"/>
				<Item Name="NI_Robotics_AbstractAstarNode.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/robotics/Navigation/shared/MapNode/AbstractAstarNode/NI_Robotics_AbstractAstarNode.lvclass"/>
				<Item Name="NI_Robotics_OccupancyGridWorldMap.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/robotics/Navigation/shared/WorldMap/OccupancyGridWorldMap/NI_Robotics_OccupancyGridWorldMap.lvclass"/>
				<Item Name="NI_Robotics_AbstractDstarWorldMap.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/robotics/Navigation/shared/WorldMap/AbstractDstarWorldMap/NI_Robotics_AbstractDstarWorldMap.lvclass"/>
				<Item Name="NI_Robotics_AbstractWorldMap.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/robotics/Navigation/shared/WorldMap/AbstractWorldMap/NI_Robotics_AbstractWorldMap.lvclass"/>
				<Item Name="IVA Store Shape Lines Results.vi" Type="VI" URL="/&lt;vilib&gt;/vision/Vision Assistant Utils.llb/IVA Store Shape Lines Results.vi"/>
				<Item Name="Find First Error.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find First Error.vi"/>
				<Item Name="Close File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Close File+.vi"/>
				<Item Name="compatReadText.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatReadText.vi"/>
				<Item Name="Read File+ (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read File+ (string).vi"/>
				<Item Name="Open File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Open File+.vi"/>
				<Item Name="Read Lines From File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Lines From File.vi"/>
				<Item Name="Read From Spreadsheet File (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File (string).vi"/>
				<Item Name="Read From Spreadsheet File (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File (I64).vi"/>
				<Item Name="Read From Spreadsheet File (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File (DBL).vi"/>
				<Item Name="Read From Spreadsheet File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File.vi"/>
				<Item Name="NI_Vision_Development_Module.lvlib" Type="Library" URL="/&lt;vilib&gt;/vision/NI_Vision_Development_Module.lvlib"/>
				<Item Name="ROI Descriptor" Type="VI" URL="/&lt;vilib&gt;/vision/Image Controls.llb/ROI Descriptor"/>
				<Item Name="Edge Options.ctl" Type="VI" URL="/&lt;vilib&gt;/vision/Measure.llb/Edge Options.ctl"/>
				<Item Name="Edge Polarity.ctl" Type="VI" URL="/&lt;vilib&gt;/vision/Measure.llb/Edge Polarity.ctl"/>
				<Item Name="Search Line.ctl" Type="VI" URL="/&lt;vilib&gt;/vision/Measure.llb/Search Line.ctl"/>
				<Item Name="Edge New.ctl" Type="VI" URL="/&lt;vilib&gt;/vision/Measure.llb/Edge New.ctl"/>
				<Item Name="Straight Edge Options.ctl" Type="VI" URL="/&lt;vilib&gt;/vision/Measure.llb/Straight Edge Options.ctl"/>
				<Item Name="Straight Edge Process.ctl" Type="VI" URL="/&lt;vilib&gt;/vision/Measure.llb/Straight Edge Process.ctl"/>
				<Item Name="Vision Info Type" Type="VI" URL="/&lt;vilib&gt;/vision/Image Controls.llb/Vision Info Type"/>
				<Item Name="IVA Result Manager Function.ctl" Type="VI" URL="/&lt;vilib&gt;/vision/Vision Assistant Utils.llb/IVA Result Manager Function.ctl"/>
				<Item Name="Vision Info Type2.ctl" Type="VI" URL="/&lt;vilib&gt;/vision/Image Controls.llb/Vision Info Type2.ctl"/>
				<Item Name="IVA Append VI Name to GUID.vi" Type="VI" URL="/&lt;vilib&gt;/vision/Vision Assistant Utils.llb/IVA Append VI Name to GUID.vi"/>
				<Item Name="IVA Result Manager.vi" Type="VI" URL="/&lt;vilib&gt;/vision/Vision Assistant Utils.llb/IVA Result Manager.vi"/>
				<Item Name="IMAQ Overlay Line" Type="VI" URL="/&lt;vilib&gt;/vision/Overlay.llb/IMAQ Overlay Line"/>
				<Item Name="Overlay Line with Arrows.vi" Type="VI" URL="/&lt;vilib&gt;/vision/Clamp.llb/Overlay Line with Arrows.vi"/>
				<Item Name="IMAQ Overlay Multiple Lines" Type="VI" URL="/&lt;vilib&gt;/vision/Overlay.llb/IMAQ Overlay Multiple Lines"/>
				<Item Name="IMAQ Convert ROI to Rectangle" Type="VI" URL="/&lt;vilib&gt;/vision/ROI Conversion.llb/IMAQ Convert ROI to Rectangle"/>
				<Item Name="IMAQ Rectangle" Type="VI" URL="/&lt;vilib&gt;/vision/Image Controls.llb/IMAQ Rectangle"/>
				<Item Name="IMAQ Convert Rectangle to ROI (Polygon)" Type="VI" URL="/&lt;vilib&gt;/vision/ROI Conversion.llb/IMAQ Convert Rectangle to ROI (Polygon)"/>
				<Item Name="IMAQ Point" Type="VI" URL="/&lt;vilib&gt;/vision/Image Controls.llb/IMAQ Point"/>
				<Item Name="IMAQ Overlay ROI" Type="VI" URL="/&lt;vilib&gt;/vision/Overlay.llb/IMAQ Overlay ROI"/>
				<Item Name="IMAQ Overlay Rectangle" Type="VI" URL="/&lt;vilib&gt;/vision/Overlay.llb/IMAQ Overlay Rectangle"/>
				<Item Name="IMAQ Overlay Text" Type="VI" URL="/&lt;vilib&gt;/vision/Overlay.llb/IMAQ Overlay Text"/>
				<Item Name="IMAQ Overlay Oval" Type="VI" URL="/&lt;vilib&gt;/vision/Overlay.llb/IMAQ Overlay Oval"/>
				<Item Name="IMAQ Curve Parameters.ctl" Type="VI" URL="/&lt;vilib&gt;/vision/Pattern Matching.llb/IMAQ Curve Parameters.ctl"/>
				<Item Name="ShapeDetectionMatchOptions.ctl" Type="VI" URL="/&lt;vilib&gt;/vision/Shape Detection.llb/ShapeDetectionMatchOptions.ctl"/>
				<Item Name="IMAQ Match Range Setting.ctl" Type="VI" URL="/&lt;vilib&gt;/vision/Pattern Matching.llb/IMAQ Match Range Setting.ctl"/>
				<Item Name="IMAQ Convert To Curve Parameters Internal" Type="VI" URL="/&lt;vilib&gt;/vision/Pattern Matching.llb/IMAQ Convert To Curve Parameters Internal"/>
				<Item Name="IMAQ Curve Parameters Internal.ctl" Type="VI" URL="/&lt;vilib&gt;/vision/Pattern Matching.llb/IMAQ Curve Parameters Internal.ctl"/>
				<Item Name="IMAQ Convert To Shape Detection Match Options Internal" Type="VI" URL="/&lt;vilib&gt;/vision/Shape Detection.llb/IMAQ Convert To Shape Detection Match Options Internal"/>
				<Item Name="NI_Robotics_Priority Queue.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/robotics/Navigation/shared/Priority Queue/NI_Robotics_Priority Queue.lvclass"/>
				<Item Name="NI_Robotics_Navigation .lvlib" Type="Library" URL="/&lt;vilib&gt;/robotics/Navigation/NI_Robotics_Navigation .lvlib"/>
				<Item Name="SIM MIMO State Space.ctl" Type="VI" URL="/&lt;vilib&gt;/Simulation/Shared/_Datatypes/SIM MIMO State Space.ctl"/>
				<Item Name="SIM PID Integral Gain.vi" Type="VI" URL="/&lt;vilib&gt;/Simulation/Model Libraries/PID/subVIs/SIM PID Integral Gain.vi"/>
				<Item Name="SIM PID Derivative Gain.vi" Type="VI" URL="/&lt;vilib&gt;/Simulation/Model Libraries/PID/subVIs/SIM PID Derivative Gain.vi"/>
				<Item Name="SIM PID (Academic).vi" Type="VI" URL="/&lt;vilib&gt;/Simulation/Model Libraries/PID/SIM PID (Academic).vi"/>
				<Item Name="SIM PID (Series).vi" Type="VI" URL="/&lt;vilib&gt;/Simulation/Model Libraries/PID/SIM PID (Series).vi"/>
				<Item Name="SIM PID (Parallel).vi" Type="VI" URL="/&lt;vilib&gt;/Simulation/Model Libraries/PID/SIM PID (Parallel).vi"/>
				<Item Name="SIM PID.vi" Type="VI" URL="/&lt;vilib&gt;/Simulation/Model Libraries/PID/SIM PID.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="IMAQ Read Image And Vision Info" Type="VI" URL="/&lt;vilib&gt;/vision/Files1.llb/IMAQ Read Image And Vision Info"/>
				<Item Name="IVA Get Alternate Path.vi" Type="VI" URL="/&lt;vilib&gt;/vision/Vision Assistant Utils.llb/IVA Get Alternate Path.vi"/>
				<Item Name="IVA GrayFilters - LowPass.vi" Type="VI" URL="/&lt;vilib&gt;/vision/Vision Assistant Utils.llb/IVA GrayFilters - LowPass.vi"/>
				<Item Name="IMAQdx Grab.vi" Type="VI" URL="/&lt;vilib&gt;/vision/driver/IMAQdx.llb/IMAQdx Grab.vi"/>
				<Item Name="IMAQdx Open Camera.vi" Type="VI" URL="/&lt;vilib&gt;/vision/driver/IMAQdx.llb/IMAQdx Open Camera.vi"/>
				<Item Name="IMAQdx Configure Grab.vi" Type="VI" URL="/&lt;vilib&gt;/vision/driver/IMAQdx.llb/IMAQdx Configure Grab.vi"/>
				<Item Name="IMAQdx Read Attributes From String.vi" Type="VI" URL="/&lt;vilib&gt;/vision/driver/IMAQdx.llb/IMAQdx Read Attributes From String.vi"/>
				<Item Name="IMAQdx Close Camera.vi" Type="VI" URL="/&lt;vilib&gt;/vision/driver/IMAQdx.llb/IMAQdx Close Camera.vi"/>
			</Item>
			<Item Name="instr.lib" Type="Folder">
				<Item Name="Dynamixel Motor.lvlib" Type="Library" URL="/&lt;instrlib&gt;/Dynamixel Motor/Dynamixel Motor.lvlib"/>
				<Item Name="MicroStrain 3DM-GX1.lvlib" Type="Library" URL="/&lt;instrlib&gt;/MicroStrain 3DM-GX1/MicroStrain 3DM-GX1.lvlib"/>
				<Item Name="Hokuyo URG Series.lvlib" Type="Library" URL="/&lt;instrlib&gt;/Hokuyo URG Series/Hokuyo URG Series.lvlib"/>
				<Item Name="NavCom SF-2050.lvlib" Type="Library" URL="/&lt;instrlib&gt;/NavCom SF-2050/NavCom SF-2050.lvlib"/>
			</Item>
			<Item Name="kernel32.dll" Type="Document" URL="kernel32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="hid.dll" Type="Document" URL="hid.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="2D Point.ctl" Type="VI" URL="../LIDAR Acquisition Loop/Simulation/2D Point.ctl"/>
			<Item Name="Global - Obstacles.vi" Type="VI" URL="../LIDAR Acquisition Loop/Simulation/Global - Obstacles.vi"/>
			<Item Name="user32.dll" Type="Document" URL="user32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="lvanlys.dll" Type="Document" URL="../../../../../../../../Program Files/National Instruments/LabVIEW 2011/resource/lvanlys.dll"/>
			<Item Name="lvinput.dll" Type="Document" URL="../../../../../../../../Program Files/National Instruments/LabVIEW 2011/resource/lvinput.dll"/>
			<Item Name="nivissvc.dll" Type="Document" URL="nivissvc.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="nivision.dll" Type="Document" URL="nivision.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="Motor Controller Command.vi" Type="VI" URL="../../../Sprint 3/Working Code/Motor Controller Command.vi"/>
			<Item Name="Scale Motor Speeds.vi" Type="VI" URL="../../../../Motor Controller/Scale Motor Speeds.vi"/>
			<Item Name="Read Joystic.vi" Type="VI" URL="../../../../Motor Controller/Read Joystic.vi"/>
			<Item Name="Find Direction From Lidar.vi" Type="VI" URL="../../../Sprint 3/Working Code/Find Direction From Lidar.vi"/>
			<Item Name="mscorlib" Type="VI" URL="mscorlib">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="InTheHand.Net.Personal.dll" Type="Document" URL="../Remote/Wiimote/Wiimote/InTheHand.Net.Personal.dll"/>
			<Item Name="Fix Lidar Values.vi" Type="VI" URL="../../../Sprint 3/Working Code/Fix Lidar Values.vi"/>
			<Item Name="Expand Obsticle Size.vi" Type="VI" URL="../Operator Loop/Expand Obsticle Size.vi"/>
			<Item Name="Insert Lines Into Occupancy Grid.vi" Type="VI" URL="../Operator Loop/Obstacle Avoidance/Insert Lines Into Occupancy Grid.vi"/>
			<Item Name="Error UI.vi" Type="VI" URL="../Utility/Error UI.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
