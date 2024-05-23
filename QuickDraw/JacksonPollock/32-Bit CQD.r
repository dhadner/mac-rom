/*
	File:		32-Bit CQD.r

	Contains:	This is THE resource description file for the 32-bit QD release.
				This file includes the necessary CODE resources (really ptch's) and
 				some other Misc. resource below!
 
	Written by:	Pete (Pee Tee) Trump and Ed (Eee Dee) Heyl

	Copyright:	� 1989-1990 by Apple Computer, Inc., all rights reserved.

    This file is used in these builds: BigBang

	Change History (most recent first):

		 <7>	12/18/90	stb		& JDR; change SystemSevenOrBetter to SystemSevenOrLater
		 <6>	  6/7/90	DC		fix up ALRT's and DLOG's for auto-positioning
		 <5>	 2/14/90	BAL		Changed alert string to say that Sys 604 or later is required
									(not sys 605).
		 <4>	 1/31/90	csd		with bal. Added ALRT and DITL resources for mismatched 32-Bit
									QuickDraw and System files.
		 <3>	 1/18/90	HJR		Remove hard coded dependencies.
		 <2>	 1/16/90	djw		Re-added slotmgr patch to the JP build.

	To Do:
*/



#include "SysTypes.r";						/* Includes the MPW rez descriptions */
#include "Types.r";

Include "JPPatch";							/* Includes the CODE stuff here */
Include "CQDPatch";				
Include "JPInit";			
Include "ATPatch";
Include "SlotMgrPatch";
Include "VMPatch";
Include "JPAlert";


resource 'vers' (1,purgeable) {
	LIntVers,								/* Contians all four bytes of information */
	0,
	theVersion,
	theVersion  ", Copyright Apple Computer, Inc. 1983-90"
};



resource 'ALRT' (WrongQD32Alert, sysHeap) {
	{82, 140, 195, 500},
	WrongQD32Alert,
	silentStages,
#if SystemSevenOrLater
		noAutoCenter
#endif
};
resource 'DITL' (WrongQD32Alert, purgeable) {
	{
		{80, 274, 100, 344},
		Button {
			enabled,
			"Okay"
		},
		{9, 78, 43, 348},
		StaticText {
			disabled,
			"This 32-Bit QuickDraw requires System "
			"Software version 6.0.4 or later."
		},
		{52, 78, 71, 349},
		StaticText {
			disabled,
			"32-Bit QuickDraw will not be installed."
		}
	}
};



type 'LEAK' {
	pstring;
};

resource 'LEAK' (0) {
	"32-Bit QuickDraw version 1.2"
};

resource 'FREF' (-4064, purgeable) {
	'INIT',
	0,
	""
};

resource 'BNDL' (-4064, purgeable) {
	'LEAK',
	0,
	{	/* array TypeArray: 2 elements */
		/* [1] */
		'ICN#',
		{	/* array IDArray: 1 elements */
			/* [1] */
			0, -4064
		},
		/* [2] */
		'FREF',
		{	/* array IDArray: 1 elements */
			/* [1] */
			0, -4064
		}
	}
};

data 'ICN#' (-4064) {
	$"FF FF FF FF C0 00 00 01 80 00 00 03 A4 00 00 07"    /* ....�...�...�... */
	$"80 00 00 0F D0 00 00 1D A0 00 00 2B 90 00 00 55"    /* �...�...�..+�..U */
	$"94 00 00 A9 C8 10 01 55 A4 28 02 A1 92 54 05 55"    /* �..��..U�(.��T.U */
	$"CA 9A 0A 81 A5 15 15 51 D5 1A A8 01 8A 95 D5 45"    /* ʚ.��..Q'.�.��'E */
	$"A5 9B A0 01 82 95 55 05 83 9B A0 01 84 15 D4 15"    /* ���.��U.���.�.�. */
	$"84 2B A0 03 84 45 D4 55 88 82 E8 03 89 01 78 55"    /* �+�.�E�U��..�.xU */
	$"8A 00 A6 0B 94 00 51 D5 98 00 30 7B 90 00 10 1F"    /* �.�.�.Q'�.0{�... */
	$"9F FF F0 07 80 00 00 01 80 00 00 01 FF FF FF FF"    /* �...�...�....... */
	$"FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF"    /* ................ */
	$"FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF"    /* ................ */
	$"FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF"    /* ................ */
	$"FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF"    /* ................ */
	$"FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF"    /* ................ */
	$"FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF"    /* ................ */
	$"FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF"    /* ................ */
	$"FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF"    /* ................ */
};

data 'cicn' (32, purgeable, locked) {
	$"00 47 02 80 80 80 00 00 00 00 00 20 00 20 00 00"    /* .G.���..... . .. */
	$"00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 10"    /* .......H...H.... */
	$"00 20 00 03 00 08 00 00 00 00 00 46 6F 04 00 00"    /* . .........Fo... */
	$"00 00 80 47 13 16 00 04 00 00 00 00 00 20 00 20"    /* ..�G......... .  */
	$"80 47 13 96 00 04 00 00 00 00 00 20 00 20 00 00"    /* �G.�....... . .. */
	$"00 00"
	
	/* Mask Bits */
	
	$"FF FF FF FF FF FF FF FF FF FF FF FF FF FF"    	  /* ................ */
	$"FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF"    /* ................ */
	$"FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF"    /* ................ */
	$"FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF"    /* ................ */
	$"FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF"    /* ................ */
	$"FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF"    /* ................ */
	$"FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF"    /* ................ */
	$"FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF"    /* ................ */
	$"FF FF"
	
	/* 1 bit installed icon */
	
	$"FF FF FF FF" 
	$"C0 00 00 01"
	$"80 01 C0 03"
	$"A4 02 20 07"
	$"80 00 20 0F"
	$"D0 00 40 1D"
	$"A0 00 80 3F"
	$"90 01 00 7F"
	$"94 03 E0 FF"
	$"C8 10 01 DF" 
	$"A4 28 03 FB" 
	$"92 54 07 FF"
	$"CA 9A 0F EF" 
	$"A5 15 1D FD" 
	$"D5 1A BF BF" 
	$"8A 94 77 57"
	$"A5 9A FE AF" 
	$"82 94 DD 5F" 
	$"83 9A FB AF" 
	$"84 14 FE DD"
	$"84 3A DF AF" 
	$"84 56 7F FF" 
	$"88 EB 3D FF" 
	$"89 D5 9F BD"
	$"8A AA CF FF" 
	$"97 55 71 F7" 
	$"9E AA B0 7F" 
	$"95 55 50 1F"
	$"9F FF F0 07" 
	$"80 00 00 01" 
	$"80 00 00 01" 
	$"FF FF FF FF"

	/* CLUT HDR with one entry */

	$"00 00 04 99 80 00 00 00 08 00 FF FF FF FF"   		  /* .....��......... */
	$"FF FF"
	
	/* 32 bit/pixel image data */

	$"00 21 D2 FF 00 1F D6 FE 00 1E"    				  /* KE`....!'...�... */
	$"D7 FF 00 1E DA 00 00 1B DD 00 00 1A DF 01 00 18"    /* �............... */
	$"E0 01 00 18 E5 03 00 16 E6 03 00 15 E7 02 00 13"    /* ................ */
	$"EB 03 00 11 ED 05 00 0F EF 06 00 0E EF 06 00 0C"    /* ................ */
	$"F3 07 00 0B F5 07 00 09 F6 08 00 08 FA 07 00 06"    /* .......�........ */
	$"FB 09 00 06 FE 0A 00 04 00 09 00 04 03 0B 00 00"    /* .�.......�...... */
	$"04 0C 00 00 07 0C 00 FD 09 0C 00 FC 0B 0D 00 FC"    /* ........�....�.. */
	$"0E 0E 00 FB 11 10 00 F9 12 0E 00 F7 15 10 00 F6"    /* ................ */
	$"17 13 00 F5 18 12 00 21 D4 FD 00 1E D5 FD 00 1E"    /* .......!�...'... */
	$"D9 00 00 1D DB FF 00 1B DC 00 00 19 E0 00 00 18"    /* ................ */
	$"E2 00 00 16 E3 00 00 14 E5 02 00 12 E8 03 00 12"    /* ................ */
	$"EB 03 00 0F EC 03 00 0F F0 04 00 0C F1 06 00 0D"    /* ...............� */
	$"F4 05 00 0A F6 06 00 0A F8 07 00 08 F9 07 00 07"    /* ................ */
	$"FD 07 00 04 FE 09 00 02 FF 0A 00 02 03 0C 00 01"    /* .....�.......... */
	$"05 0C 00 FF 07 0C 00 FE 0A 0D 00 FD 0C 0D 00 FC"    /* .........�...�.. */
	$"0F 0D 00 F8 10 0E 00 F8 14 0F 00 F6 14 10 00 F5"    /* .�.............. */
	$"17 10 00 F3 19 11 00 20 D6 FE 00 1D D6 FE 00 1D"    /* ....... �...�... */
	$"DA FE 00 1A DC 00 00 1A DE FF 00 19 E0 00 00 18"    /* ................ */
	$"E1 02 00 16 E5 01 00 14 E7 03 00 11 EA 02 00 11"    /* ................ */
	$"EC 04 00 0F EF 05 00 0F F1 05 00 0C F1 04 00 0B"    /* ................ */
	$"F5 06 00 08 F6 05 00 07 FA 07 00 07 FC 09 00 06"    /* .............�.. */
	$"FD 09 00 03 FF 09 00 01 03 09 00 01 04 0A 00 00"    /* .�...�...�...... */
	$"06 0B 00 FF 0A 0B 00 FE 0B 0C 00 FB 0D 0D 00 FB"    /* ............��.. */
	$"0E 0D 00 F8 11 0E 00 F7 14 0E 00 F6 15 0F 00 F5"    /* .�.............. */
	$"19 11 00 F3 1A 10 00 1F D5 FD 00 1D D7 FD 00 1D"    /* ........'...�... */
	$"DA FD 00 1B DB FF 00 19 DD FE 00 18 E1 00 00 16"    /* ................ */
	$"E3 01 00 15 E4 01 00 12 E8 01 00 11 E9 02 00 10"    /* ................ */
	$"EB 02 00 0E EF 04 00 0D F0 04 00 0D F2 03 00 0C"    /* .......�...�.... */
	$"F5 06 00 09 F8 06 00 07 F8 07 00 06 FC 07 00 05"    /* ...�............ */
	$"FE 08 00 02 FF 07 00 03 02 08 00 00 05 08 00 00"    /* ................ */
	$"05 0A 00 FD 09 0A 00 FD 0B 0C 00 FA 0D 0C 00 F9"    /* ....�.......�... */
	$"0F 0C 00 F8 12 0D 00 F8 13 0C 00 F5 14 0E 00 F3"    /* .....�.......... */
	$"18 0F 00 F2 1B 0F 00 1D D5 FC 00 1C D9 FC 00 1C"    /* ........'....... */
	$"DA FD 00 1B DD FD 00 18 DF FF 00 16 E0 FE 00 15"    /* ................ */
	$"E5 01 00 13 E6 01 00 12 E8 02 00 11 EC 02 00 0F"    /* ................ */
	$"EC 02 00 0E EE 03 00 0C F1 04 00 0C F4 04 00 0A"    /* ................ */
	$"F5 06 00 07 F7 05 00 05 FA 06 00 06 FD 07 00 05"    /* ................ */
	$"FE 07 00 02 02 08 00 01 03 09 00 01 05 08 00 00"    /* .........�...... */
	$"09 0A 00 FE 09 0A 00 FD 0B 0C 00 F9 10 0C 00 F8"    /* �...�........... */
	$"10 0D 00 F7 11 0C 00 F7 15 0E 00 F4 17 0D 00 F3"    /* .�...........�.. */
	$"19 0F 00 F0 1A 0E 00 1D D6 FA 00 1C D9 FD 00 1A"    /* ........�....... */
	$"DC FC 00 19 DD FD 00 17 DE FF 00 15 E1 FE 00 14"    /* ................ */
	$"E3 FE 00 12 E6 FF 00 11 E9 00 00 10 EC 01 00 0F"    /* ................ */
	$"EE 00 00 0E EF 01 00 0B F3 03 00 0C F4 03 00 08"    /* ................ */
	$"F6 03 00 07 F8 04 00 05 FB 05 00 04 FC 06 00 03"    /* ................ */
	$"FF 04 00 02 00 06 00 FF 03 09 00 FE 06 0A 00 FE"    /* .........�...... */
	$"07 09 00 FE 0B 09 00 FC 0D 0A 00 F9 0F 0C 00 F6"    /* .�...�..�....... */
	$"11 0A 00 F6 13 0C 00 F6 17 0D 00 F4 17 0D 00 F2"    /* .........�...�.. */
	$"1C 0D 00 F0 1B 0E 00 1C D6 FB 00 1B D9 FB 00 19"    /* .�......�....... */
	$"DB FC 00 17 DE FD 00 17 DF FD 00 15 E2 FD 00 14"    /* ................ */
	$"E5 FE 00 11 E7 00 00 0F EB FF 00 0E ED 00 00 0E"    /* ................ */
	$"EE 01 00 0C F1 02 00 0B F2 02 00 08 F5 01 00 07"    /* ................ */
	$"F7 03 00 05 FA 04 00 06 FC 03 00 03 FD 06 00 04"    /* ................ */
	$"01 07 00 00 02 07 00 00 03 08 00 FE 07 08 00 FC"    /* ................ */
	$"0A 0A 00 FD 0B 0B 00 FA 0D 0A 00 F7 0F 0A 00 F6"    /* ........�....... */
	$"11 0C 00 F4 14 0D 00 F5 16 0D 00 F2 18 0E 00 F2"    /* .....�...�...... */
	$"1B 0F 00 EF 1E 10 00 1C D6 FC 00 1A D9 FB 00 19"    /* ........�....... */
	$"DB FD 00 16 DD FB 00 15 E0 FD 00 13 E2 FD 00 13"    /* ................ */
	$"E5 FE 00 11 E8 00 00 10 EA 00 00 0E EC 00 00 0D"    /* ...............� */
	$"F0 01 00 0C F1 01 00 0A F2 02 00 0A F7 02 00 07"    /* ................ */
	$"F7 03 00 04 FA 03 00 04 FA 04 00 02 FD 05 00 03"    /* ................ */
	$"00 06 00 FF 00 06 00 00 04 07 00 FE 07 07 00 FD"    /* ................ */
	$"08 08 00 FC 0C 09 00 FB 0E 09 00 F7 0F 0B 00 F6"    /* .....�...�...... */
	$"13 0C 00 F5 14 0B 00 F4 15 0D 00 F1 19 0D 00 F1"    /* .........�...�.. */
	$"1A 0E 00 F0 1D 0D 00 1A DA FA 00 1A DA FA 00 17"    /* .....�.......... */
	$"DC FB 00 15 DF FD 00 13 E1 FE 00 13 E4 FE 00 11"    /* ................ */
	$"E5 FE 00 0F E8 FE 00 0F EB 00 00 0D EC 00 00 0B"    /* ...........�.... */
	$"EF 01 00 0A F0 FF 00 08 F4 01 00 07 F6 03 00 05"    /* ................ */
	$"F8 04 00 05 FC 03 00 03 FD 04 00 01 FE 04 00 01"    /* ................ */
	$"02 06 00 00 05 04 00 FE 05 06 00 FD 08 08 00 FA"    /* ................ */
	$"09 09 00 FA 0B 09 00 F9 0E 09 00 F7 0F 0B 00 F5"    /* ��...�...�...... */
	$"12 0B 00 F4 14 0B 00 F4 18 0C 00 F3 19 0C 00 F1"    /* ................ */
	$"1B 0D 00 EE 1F 0C 00 19 D9 FB 00 17 DA FB 00 15"    /* .�.............. */
	$"DE FB 00 14 E0 FC 00 12 E3 FC 00 12 E4 FE 00 11"    /* ................ */
	$"E6 FD 00 0E E9 FE 00 0D E9 FE 00 0D ED FF 00 0B"    /* .......�...�.... */
	$"F0 01 00 09 F2 02 00 07 F6 02 00 05 F7 02 00 04"    /* ...�............ */
	$"F8 03 00 03 FB 04 00 02 FD 05 00 02 FE 04 00 00"    /* ................ */
	$"03 06 00 00 04 06 00 FD 07 07 00 FD 08 07 00 FB"    /* ................ */
	$"0B 08 00 FA 0E 09 00 F7 0E 0A 00 F5 11 08 00 F4"    /* .....�.......... */
	$"14 0A 00 F3 15 0B 00 F2 18 0D 00 F2 1A 0C 00 EF"    /* .........�...... */
	$"1C 0E 00 ED 1E 0F 00 19 DA F9 00 17 DD F9 00 16"    /* ................ */
	$"DF FB 00 13 E0 FB 00 13 E3 FA 00 10 E5 FC 00 10"    /* ................ */
	$"E8 FD 00 0E EA FF 00 0B EB FE 00 0B EC FE 00 0B"    /* ................ */
	$"EF FF 00 09 F3 00 00 08 F4 00 00 06 F8 01 00 04"    /* ...�............ */
	$"FA 02 00 02 FB 03 00 02 FD 02 00 01 01 04 00 00"    /* ................ */
	$"03 04 00 FE 03 06 00 FD 08 06 00 FB 09 05 00 FB"    /* ............�... */
	$"0A 06 00 FA 0D 07 00 F7 10 07 00 F6 12 08 00 F4"    /* ....�........... */
	$"13 09 00 F3 16 0B 00 F1 19 0A 00 F2 1A 0B 00 EF"    /* .�.............. */
	$"1D 0C 00 EC 20 0D 00 16 D9 F9 00 15 DD F9 00 13"    /* .... �.......... */
	$"DE FA 00 11 E1 FA 00 12 E3 FB 00 11 E6 FB 00 0F"    /* ................ */
	$"E8 FC 00 0D E9 FC 00 0B EC FE 00 0A F0 FD 00 08"    /* ...�............ */
	$"F2 00 00 08 F2 FE 00 06 F7 00 00 03 F8 02 00 03"    /* ................ */
	$"F8 02 00 03 FB 02 00 01 FE 04 00 01 00 04 00 FE"    /* ................ */
	$"01 05 00 FD 04 04 00 FC 08 06 00 FA 08 06 00 F9"    /* ................ */
	$"0B 06 00 F6 0F 05 00 F7 10 07 00 F5 12 08 00 F4"    /* ................ */
	$"15 09 00 F2 17 0A 00 F0 18 0B 00 EE 1A 0B 00 EE"    /* .�.............. */
	$"1C 0C 00 EC 1F 0C 00 16 DC F8 00 14 DD F8 00 14"    /* ................ */
	$"DF F9 00 11 E1 FB 00 10 E4 FB 00 10 E5 FC 00 0E"    /* ................ */
	$"E7 FC 00 0D EA FC 00 0B EC FD 00 0A EF FD 00 08"    /* ...�............ */
	$"F1 FE 00 07 F4 FF 00 06 F7 00 00 04 F8 00 00 02"    /* ................ */
	$"FA 01 00 02 FD 02 00 00 00 02 00 FF 00 03 00 FD"    /* ................ */
	$"04 04 00 FD 07 04 00 FB 08 05 00 FA 09 04 00 F8"    /* ............�... */
	$"0B 07 00 F7 0E 08 00 F6 0F 08 00 F5 11 07 00 F2"    /* ................ */
	$"15 09 00 F1 16 0A 00 F0 17 0A 00 EE 1B 0A 00 EC"    /* .�.............. */
	$"1E 0C 00 ED 1E 0B 00 14 DB F7 00 13 DE F9 00 12"    /* ................ */
	$"E0 F9 00 10 E2 F9 00 10 E5 F9 00 0E E6 FA 00 0D"    /* ...............� */
	$"E9 FB 00 0A EB FD 00 0A ED FD 00 09 F0 FD 00 07"    /* ...........�.... */
	$"F1 FE 00 06 F5 00 00 03 F7 FE 00 02 F8 00 00 03"    /* ................ */
	$"FB 00 00 02 FE 01 00 FF FF 01 00 FF 02 01 00 FC"    /* ................ */
	$"05 02 00 FB 06 05 00 FA 08 05 00 F9 0C 04 00 F6"    /* ................ */
	$"0C 05 00 F7 10 07 00 F5 12 06 00 F4 14 08 00 F2"    /* ................ */
	$"17 07 00 F0 18 08 00 EE 1B 08 00 ED 1C 0A 00 EC"    /* ................ */
	$"1E 0B 00 EB 20 0B 00 13 DB F7 00 12 DD F8 00 12"    /* .... ........... */
	$"E1 FA 00 10 E3 FA 00 0F E4 FB 00 0D E6 F9 00 0B"    /* ...........�.... */
	$"E9 FB 00 09 EB FB 00 09 ED FE 00 08 F0 FE 00 07"    /* ...�...�........ */
	$"F3 FF 00 05 F4 FF 00 03 F5 FF 00 01 FB 00 00 01"    /* ................ */
	$"FC 00 00 FF FE 01 00 FE 01 02 00 FD 03 01 00 FD"    /* ................ */
	$"04 03 00 FA 05 04 00 FA 09 05 00 F7 0B 06 00 F7"    /* ........�....... */
	$"0C 07 00 F6 0F 06 00 F3 12 06 00 F1 13 07 00 F1"    /* ................ */
	$"15 08 00 EF 18 08 00 EE 19 09 00 EE 1D 09 00 EC"    /* .........�...�.. */
	$"1E 0C 00 EB 1F 0C 00 12 DE F8 00 10 DE F7 00 10"    /* ................ */
	$"E1 F7 00 0F E4 F8 00 0E E5 FA 00 0D E8 FB 00 0A"    /* ...........�.... */
	$"EA FA 00 08 ED FB 00 07 EE FB 00 06 F0 FD 00 06"    /* ................ */
	$"F1 FD 00 04 F5 FE 00 03 F7 FE 00 00 F8 FF 00 01"    /* ................ */
	$"FC FF 00 FE FF 00 00 FD 00 01 00 FC 03 02 00 FB"    /* ................ */
	$"05 02 00 F9 08 03 00 F9 0A 03 00 F7 0B 05 00 F5"    /* ................ */
	$"0E 04 00 F4 11 06 00 F3 12 06 00 F1 14 07 00 EF"    /* ................ */
	$"19 06 00 ED 19 08 00 EC 1B 09 00 EC 1E 0A 00 EC"    /* .........�...... */
	$"1F 0A 00 EA 21 0A 00 13 DD F8 00 11 DF F7 00 0F"    /* ....!........... */
	$"E3 F9 00 0D E4 F7 00 0D E6 FA 00 0D EA FA 00 0A"    /* ...�...�...�.... */
	$"EA FB 00 08 EC FC 00 07 F0 FC 00 06 F1 FB 00 04"    /* ................ */
	$"F3 FC 00 05 F4 FE 00 01 F8 FF 00 00 F9 FF 00 FE"    /* ................ */
	$"FD 01 00 FE FF 00 00 FD 02 02 00 FC 04 00 00 FA"    /* ................ */
	$"06 02 00 F9 08 03 00 F8 09 04 00 F7 0C 03 00 F5"    /* ........�....... */
	$"0E 04 00 F3 0F 06 00 F3 12 07 00 F2 15 07 00 F1"    /* ................ */
	$"17 09 00 EE 18 07 00 EC 1D 09 00 EB 1D 08 00 EB"    /* .�.......�...... */
	$"1F 0A 00 EA 22 09 00 13 DE F6 00 0F E2 F6 00 0F"    /* ...."�.......... */
	$"E4 F8 00 0D E5 F7 00 0C E8 F8 00 0C EA F9 00 08"    /* ...�............ */
	$"EC FA 00 06 EF FA 00 07 F2 FA 00 05 F1 FB 00 04"    /* ................ */
	$"F4 FC 00 02 F7 FC 00 01 F8 FC 00 FF FA FD 00 00"    /* ................ */
	$"FE FF 00 FC FF FF 00 FC 02 00 00 FB 03 FF 00 FA"    /* ................ */
	$"06 00 00 FA 08 01 00 F8 0C 01 00 F6 0C 03 00 F4"    /* ................ */
	$"0E 03 00 F3 12 04 00 F2 13 04 00 F2 15 06 00 EF"    /* ................ */
	$"18 07 00 EE 1B 06 00 EC 1C 07 00 EC 1C 07 00 E9"    /* ................ */
	$"22 08 00 E8 23 07 00 12 E0 F6 00 0E E2 F7 00 0E"    /* "...#........... */
	$"E2 F6 00 0B E6 F8 00 0C E9 F7 00 0A EA F9 00 08"    /* ................ */
	$"EC FA 00 07 F0 FB 00 06 F1 FB 00 04 F3 FC 00 04"    /* ................ */
	$"F6 FC 00 02 F8 FD 00 FF FB FE 00 FF FC FE 00 FE"    /* ................ */
	$"FC FD 00 FD 00 FF 00 FC 03 00 00 FA 05 02 00 F8"    /* ................ */
	$"07 02 00 FA 0B 01 00 F8 0C 02 00 F5 0D 03 00 F4"    /* ............�... */
	$"11 03 00 F2 13 05 00 F0 15 05 00 F1 15 05 00 EE"    /* ................ */
	$"18 06 00 EF 1C 06 00 ED 1C 08 00 EB 20 08 00 E9"    /* ............ ... */
	$"22 09 00 E8 24 09 00 10 E1 F6 00 0D E1 F6 00 0C"    /* "�..$�.....�.... */
	$"E4 F6 00 0B E7 F7 00 09 E7 F8 00 08 EA F8 00 05"    /* .......�........ */
	$"ED F8 00 05 EF FA 00 05 F0 FC 00 04 F3 FB 00 02"    /* ................ */
	$"F6 FC 00 01 F7 FB 00 FD FA FD 00 FD FD FD 00 FE"    /* ................ */
	$"FF FF 00 FB 00 00 00 FC 02 00 00 FA 07 01 00 F8"    /* ................ */
	$"07 01 00 F8 0A 02 00 F6 0D 03 00 F2 0E 02 00 F3"    /* ........�....... */
	$"11 02 00 F2 13 04 00 F1 15 05 00 EF 18 07 00 ED"    /* ................ */
	$"1A 06 00 EC 1C 06 00 EB 1D 07 00 E9 21 08 00 E9"    /* ............!... */
	$"21 08 00 E7 24 09 00 0E E0 F4 00 0B E3 F5 00 0C"    /* !...$�.......... */
	$"E5 F6 00 08 E7 F7 00 09 E9 F7 00 08 EB F7 00 05"    /* .......�........ */
	$"EF F8 00 03 EF F9 00 03 F1 F8 00 02 F4 F9 00 02"    /* ................ */
	$"F5 FB 00 01 F9 FC 00 FD FB FC 00 FD FD FC 00 FC"    /* ................ */
	$"FF FD 00 FB 01 FE 00 F9 03 FE 00 FA 04 FE 00 F7"    /* ................ */
	$"07 FF 00 F7 0A 00 00 F5 0C 00 00 F2 0F 03 00 F1"    /* ................ */
	$"0F 03 00 F0 13 03 00 EE 16 02 00 EF 16 04 00 ED"    /* ................ */
	$"19 05 00 EC 1C 07 00 EB 1E 05 00 E9 1F 05 00 E6"    /* ................ */
	$"23 07 00 E6 25 07 00 0E E2 F4 00 0B E3 F5 00 0A"    /* #...%........... */
	$"E5 F5 00 07 E7 F6 00 08 EA F6 00 07 EC F8 00 05"    /* ................ */
	$"EE F8 00 04 F0 F8 00 03 F3 F9 00 FF F4 FA 00 00"    /* ................ */
	$"F7 FB 00 FF F9 FC 00 FC FA FD 00 FD FE FD 00 FC"    /* ................ */
	$"00 FD 00 FC 01 FC 00 F9 05 FE 00 F8 07 FE 00 F6"    /* ................ */
	$"09 01 00 F5 0A 00 00 F4 0E 00 00 F3 10 02 00 F1"    /* �............... */
	$"12 03 00 F0 14 02 00 EE 14 03 00 EE 18 02 00 ED"    /* ................ */
	$"1A 04 00 EA 1C 04 00 EA 1E 05 00 E9 21 06 00 E7"    /* ............!... */
	$"22 07 00 E4 25 05 00 0D E2 F4 00 09 E3 F3 00 09"    /* "...%..�...�...� */
	$"E5 F3 00 09 E9 F5 00 06 E9 F6 00 05 ED F7 00 04"    /* ...�............ */
	$"EF F8 00 03 F0 F7 00 02 F2 F9 00 01 F4 F8 00 FF"    /* ................ */
	$"F7 FA 00 FD F8 F9 00 FD FA FC 00 FB FC FA 00 FB"    /* ................ */
	$"FF FC 00 F9 01 FC 00 F9 03 FD 00 F7 06 FE 00 F6"    /* ................ */
	$"08 FF 00 F4 0A 00 00 F3 0E 00 00 F2 0F 00 00 F0"    /* ................ */
	$"11 00 00 F0 13 02 00 EE 16 02 00 ED 17 03 00 ED"    /* ................ */
	$"19 03 00 EB 1E 04 00 E8 1E 06 00 E7 20 07 00 E6"    /* ............ ... */
	$"22 07 00 E5 25 07 00 0D E2 F3 00 08 E4 F5 00 08"    /* "...%..�........ */
	$"E7 F6 00 07 E8 F5 00 06 EB F6 00 06 ED F6 00 03"    /* ................ */
	$"EF F9 00 03 F1 F8 00 01 F4 F9 00 FF F6 F8 00 FE"    /* ................ */
	$"F8 F9 00 FC FA FA 00 FC FC FA 00 FB FE FC 00 FA"    /* ................ */
	$"01 FD 00 FA 03 FE 00 F7 05 FD 00 F6 08 FF 00 F4"    /* ................ */
	$"09 FE 00 F3 0D 01 00 F3 0E 00 00 F2 11 01 00 F1"    /* �...�........... */
	$"14 01 00 EF 15 01 00 EE 16 02 00 EB 1A 04 00 EA"    /* ................ */
	$"1D 06 00 EA 1D 05 00 EA 1F 06 00 E7 23 04 00 E5"    /* ............#... */
	$"24 06 00 E4 25 06 00 09 E2 F3 00 07 E6 F3 00 07"    /* $...%..�........ */
	$"E7 F3 00 06 EA F4 00 06 EB F5 00 03 EE F5 00 02"    /* ................ */
	$"F0 F6 00 00 F1 F6 00 FF F4 F6 00 FE F6 F8 00 FD"    /* ................ */
	$"F8 F9 00 FC FA FA 00 FB FB FA 00 FA FD FB 00 F7"    /* ................ */
	$"00 FB 00 F7 03 FD 00 F6 03 FD 00 F5 06 FD 00 F4"    /* ................ */
	$"09 FD 00 F2 0A FE 00 F1 0D FE 00 F0 11 00 00 F0"    /* �.......�....... */
	$"11 01 00 ED 14 01 00 EC 16 01 00 EA 19 02 00 E9"    /* ................ */
	$"1A 03 00 E7 1C 05 00 E8 1F 05 00 E5 21 04 00 E5"    /* ............!... */
	$"24 05 00 E4 24 06 00 09 E4 F3 00 07 E6 F3 00 06"    /* $...$..�........ */
	$"E6 F3 00 05 EB F5 00 06 EC F5 00 04 EE F6 00 02"    /* ................ */
	$"F1 F6 00 FF F3 F6 00 FE F4 F8 00 FE F6 F9 00 FC"    /* ................ */
	$"FA F8 00 FB FA F9 00 FB FC FA 00 FA 01 FA 00 F9"    /* ................ */
	$"01 FA 00 F6 03 FB 00 F5 06 FC 00 F5 08 FD 00 F4"    /* ................ */
	$"0A FC 00 F4 0B FD 00 F0 0E FD 00 F0 12 00 00 EF"    /* ................ */
	$"13 00 00 EC 14 01 00 EA 16 02 00 EB 1A 02 00 E8"    /* ................ */
	$"1B 02 00 E9 1D 03 00 E7 1F 04 00 E4 20 04 00 E4"    /* ............ ... */
	$"25 06 00 E4 26 03 00 07 E4 F1 00 06 E5 F1 00 05"    /* %...&........... */
	$"E9 F3 00 04 E9 F3 00 03 ED F6 00 02 EF F6 00 01"    /* ................ */
	$"F1 F6 00 FF F2 F7 00 FE F4 F8 00 FC F9 F7 00 FC"    /* ................ */
	$"F9 F8 00 F9 FA F9 00 FA FE F9 00 FA 00 FA 00 F8"    /* ................ */
	$"02 FA 00 F5 04 FB 00 F5 05 FD 00 F3 08 FD 00 F1"    /* ................ */
	$"0A FD 00 F1 0D FF 00 F0 0E FF 00 EF 10 FF 00 EF"    /* ....�........... */
	$"13 FF 00 EB 15 FF 00 E9 18 01 00 E9 19 00 00 E8"    /* ................ */
	$"1C 02 00 E8 1F 02 00 E6 1F 04 00 E5 24 03 00 E3"    /* ............$... */
	$"25 04 00 E2 25 05 00 08 E5 F1 00 04 E9 F2 00 04"    /* %...%........... */
	$"E9 F2 00 05 EA F3 00 03 EF F3 00 01 EF F5 00 00"    /* ................ */
	$"F2 F5 00 FF F5 F6 00 FC F7 F5 00 FC F8 F7 00 FB"    /* ................ */
	$"F9 F7 00 F9 FD F8 00 F8 FF F8 00 F9 01 F8 00 F6"    /* ................ */
	$"03 F9 00 F5 05 FA 00 F5 07 FC 00 F3 0B FC 00 F2"    /* ................ */
	$"0C FE 00 EF 0D FD 00 EF 0F FE 00 EE 13 FE 00 EF"    /* ....�........... */
	$"15 00 00 EB 17 00 00 E9 19 00 00 E8 1C 00 00 E7"    /* ................ */
	$"1E 01 00 E8 1F 03 00 E6 22 04 00 E5 23 04 00 E3"    /* ........"...#... */
	$"25 04 00 E2 29 05 00 07 E6 F1 00 05 E7 F2 00 04"    /* %...)........... */
	$"E8 F2 00 02 ED F4 00 02 EE F3 00 FE F0 F5 00 FF"    /* ................ */
	$"F0 F4 00 FE F4 F5 00 FD F7 F6 00 FA F7 F6 00 FA"    /* ................ */
	$"FB F5 00 FA FC F7 00 F8 FF F8 00 F6 01 F9 00 F6"    /* ................ */
	$"03 FA 00 F4 04 F9 00 F4 05 FA 00 F3 0B FB 00 F0"    /* ................ */
	$"0B FC 00 F0 0C FC 00 EE 0F FD 00 EE 11 FD 00 EB"    /* ................ */
	$"14 FD 00 EA 16 FF 00 EB 19 01 00 E8 1A 00 00 E8"    /* ................ */
	$"1C 01 00 E5 20 00 00 E5 21 02 00 E3 22 03 00 E2"    /* .... ...!..."... */
	$"26 04 00 E1 27 03 00 04 E7 F0 00 03 E7 F1 00 02"    /* &...'........... */
	$"EC F1 00 02 ED F2 00 02 ED F3 00 FE F1 F2 00 FD"    /* ................ */
	$"F3 F4 00 FC F6 F5 00 FB F7 F8 00 F9 F9 F7 00 F9"    /* ................ */
	$"FC F7 00 F8 FC F7 00 F7 00 F8 00 F6 02 FA 00 F4"    /* ................ */
	$"03 FA 00 F3 06 FA 00 F1 09 FB 00 F3 09 FB 00 F0"    /* ........�...�... */
	$"0B FC 00 EF 0E FD 00 EC 0F FF 00 ED 11 FE 00 EA"    /* ................ */
	$"14 FF 00 E9 15 FF 00 EA 18 01 00 E7 1B 01 00 E7"    /* ................ */
	$"1E 01 00 E5 20 01 00 E3 22 02 00 E2 24 03 00 E1"    /* .... ..."...$... */
	$"27 04 00 E1 29 04 00 04 E5 F0 00 04 EA F0 00 01"    /* '...)........... */
	$"EC F2 00 01 EC F3 00 FF F0 F4 00 FE F1 F4 00 FD"    /* ................ */
	$"F4 F4 00 FC F5 F5 00 F9 F8 F4 00 F8 F9 F7 00 F8"    /* ................ */
	$"FA F7 00 FA 00 F8 00 F7 01 F7 00 F5 02 F6 00 F4"    /* ................ */
	$"05 F8 00 F1 07 FA 00 F2 0A FA 00 F0 0B FA 00 F1"    /* ................ */
	$"0E FB 00 EE 0F FD 00 EC 10 FC 00 EC 15 FD 00 E9"    /* ................ */
	$"16 FD 00 EA 17 FF 00 E8 1A FF 00 E8 1C 00 00 E5"    /* ................ */
	$"1F FF 00 E4 22 02 00 E3 24 04 00 E2 25 02 00 E0"    /* ...."...$...%... */
	$"26 04 00 DF 2A 04 00 03 E8 F0 00 01 EA F0 00 00"    /* &...*........... */
	$"EB EF 00 FE EF F1 00 FE F1 F2 00 FC F3 F4 00 FC"    /* ................ */
	$"F5 F4 00 FB F7 F4 00 FA FA F3 00 F8 FB F5 00 F6"    /* ................ */
	$"FD F6 00 F7 00 F6 00 F5 01 F7 00 F3 03 F7 00 F3"    /* ................ */
	$"06 F9 00 F2 08 F9 00 F0 0A FA 00 F0 0B FB 00 EE"    /* ................ */
	$"0E FC 00 ED 10 FC 00 EC 12 FC 00 EB 15 FC 00 E8"    /* ................ */
	$"16 FD 00 E8 17 FD 00 E7 1A FF 00 E6 1D FE 00 E4"    /* ................ */
	$"1E FF 00 E2 20 FF 00 E2 24 02 00 DF 25 02 00 E0"    /* .... ...$...%... */
	$"28 03 00 DF 2A 03"                                  /* (...*. */
};

