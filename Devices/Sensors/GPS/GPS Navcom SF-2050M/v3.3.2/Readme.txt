Instructions to Install v3.3.2 Software Ensemble for NCT-2000 GPS Products:
 
1) If received v3.3.2.zip.rename_me file, rename to v3.3.2.zip. 
2) Copy the v3.3.2.zip file to a new folder on the hard drive
	(do not delete previous version)
3) Unzip all files into the same folder
4) Install Software Ensemble thru COM2 (Port B) of GPS Receiver
5) Execute the program StarUtil_v100_5_7.exe to install all three new versions of software into the GPS engine, IOP module, and LBM module (if applicable).
6) Be sure to use the new version of StarUtil that was included with the update as previous versions of the StarUtil program will not provide access to the new features.
7) The following files are included in the v3.3.2.zip file:

	SLv3,3,2.Bin -- GPS engine navigation software for NCT-2000 GPS Products
	IOPv3,0.hex -- Input/Output Processor (IOP) software 
	LBMv3,10.hex -- StarFire (LBM) software 
	StarUtil_v100_5_7.exe -- Control and display utility for NCT-2100 GPS products
	RinexUtilV2.0.9.exe  --  Raw data conversion tool to the RINEX format for PPP
	Readme.txt -- This file 
     Release Notice 3_3_2.pdf -- Description of software changes in the versions above

If loading software in this manner fails, an alternate method is available using StarUtil:

Load the software in the following order:

IOP - from Com1 at 19200
LBM - from Com1 at 19200
GPS - from Com2 at 19200

Turn the receiver off. 
Set the StarUtil PC Com port baud rate to 19200 and uncheck the Autobaud feature.
Load the software in the following order:

IOP - from the receiver Com1 at 19200
LBM - from the receiver Com1 at 19200
GPS - from the receiver Com2 at 19200

- Turn the receiver off. 
- Set the StarUtil PC Com port baud rate to 19200 and uncheck the Autobaud feature.
- Select the software to load (see above), then press Load. Regardless of what the receiver's port baud rate was before, the receiver will allow StarUtil to take control at 19200 during the first 3-seconds after startup.
- Turn the receiver on.

The GUI should show load progress in about 10 to 15 seconds. 

Once each load is complete, turn the receiver off, then start the same process describe above again.