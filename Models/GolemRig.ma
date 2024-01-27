//Maya ASCII 2024 scene
//Name: GolemRig.ma
//Last modified: Fri, Jan 26, 2024 08:26:44 PM
//Codeset: 1252
requires maya "2024";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.1.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202304191415-7fa20164c6";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22621)";
fileInfo "UUID" "23FB94D7-4567-2420-A127-DBB15EDE6A17";
createNode transform -s -n "persp";
	rename -uid "3A3D311A-4193-25F8-DC07-848B8C2832E4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.9394450115718262 7.1804765001638664 11.497546026892552 ;
	setAttr ".r" -type "double3" -9.5999999999999268 345.99999999979764 6.1461056317721484e-16 ;
	setAttr ".rpt" -type "double3" 2.8246651324456732e-16 1.7824344474058081e-16 2.3993582110859656e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "19C20C70-4231-7C60-8390-22AA372E7243";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 11.813630605730568;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.001342764381940198 7.3693366326646377 1.065653465085215 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "CE85FBBC-45BA-B29A-1A30-58AA04C5E529";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "6796F6FA-4552-C635-F05E-95ABFBFEB7B2";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "9A2FD082-4642-A9E5-497C-F498EDC3CA4A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "FE32A1A9-4850-B629-0725-1195B1F7AC8E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "09AC6824-4BEB-F240-B0FE-A99403717CEA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "3498EBF0-4757-FD89-D2DE-24A89FA63ECF";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "GolemRig";
	rename -uid "F6361094-43C0-2A0B-AE8F-1CB85D022ABE";
createNode transform -n "Transform_Ctrl_Grp" -p "GolemRig";
	rename -uid "BCF80498-419B-DCE4-3221-6AACBDA72973";
createNode transform -n "Transform_Ctrl" -p "Transform_Ctrl_Grp";
	rename -uid "8D66F813-42E9-194F-C1C0-DB845D7D7853";
	addAttr -ci true -sn "MasterScale" -ln "MasterScale" -dv 1 -min 1 -at "double";
	setAttr -k on ".MasterScale";
createNode nurbsCurve -n "Transform_CtrlShape" -p "Transform_Ctrl";
	rename -uid "CA5846C6-4F83-6564-4D1B-6DB9CE552FF0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.8629732104102343 3.2056454716058342e-16 -3.8629732104102348
		3.3451650466302076e-16 4.5334673021048649e-16 -5.4630691052460874
		-3.8629732104102343 3.2056454716058332e-16 -3.8629732104102334
		-5.4630691052460891 2.3501574549145062e-32 -2.8320646712166864e-16
		-3.8629732104102343 -3.2056454716058337e-16 3.8629732104102343
		-5.4723936863654386e-16 -4.5334673021048678e-16 5.46306910524609
		3.8629732104102343 -3.2056454716058332e-16 3.8629732104102334
		5.4630691052460891 -6.1822733532125535e-32 7.4499680499383896e-16
		3.8629732104102343 3.2056454716058342e-16 -3.8629732104102348
		3.3451650466302076e-16 4.5334673021048649e-16 -5.4630691052460874
		-3.8629732104102343 3.2056454716058332e-16 -3.8629732104102334
		;
createNode transform -n "ROOT_ctrl_offset" -p "Transform_Ctrl";
	rename -uid "F0131B7D-4672-6398-8F6C-73B9B83F404D";
	setAttr ".t" -type "double3" 1.2298974638724758e-07 3.3799967765808105 0.044305413961409412 ;
	setAttr ".r" -type "double3" -0.47292720096970103 180 -2.8668252765727044e-06 ;
	setAttr ".rp" -type "double3" 0 -6.1629758220391547e-32 1.1102230246251565e-15 ;
	setAttr ".sp" -type "double3" 0 -6.1629758220391547e-32 1.1102230246251565e-15 ;
createNode transform -n "ROOT_ctrl_auto" -p "ROOT_ctrl_offset";
	rename -uid "626276FA-4477-1481-B422-D4A293DCF27F";
	setAttr ".rp" -type "double3" 0 -6.1629758220391547e-32 1.1102230246251565e-15 ;
	setAttr ".sp" -type "double3" 0 -6.1629758220391547e-32 1.1102230246251565e-15 ;
createNode transform -n "ROOT_ctrl" -p "ROOT_ctrl_auto";
	rename -uid "7CA12EC4-466B-EE03-267D-A08E67717AEC";
createNode nurbsCurve -n "ROOT_ctrlShape" -p "ROOT_ctrl";
	rename -uid "F959C311-448E-75E2-9F94-C4A53BDB19EE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.55042109866104272 -9.6711073508443865e-17 
		0.55042109866102207 1.2370761550987815e-13 -1.3677011178730296e-16 0.7784129827428572 
		0.55042109866119149 -9.6711073508444851e-17 0.55042109866120148 0.77841298274285053 
		-9.2759796242492824e-31 1.2759684995441743e-13 0.55042109866101341 9.6711073508443693e-17 
		-0.55042109866102162 -1.197044806880353e-13 1.3677011178730291e-16 -0.77841298274285542 
		-0.55042109866121236 9.6711073508444802e-17 -0.55042109866119859 -0.77841298274285453 
		8.6365470317239103e-31 -1.2345848881063928e-13 0 0 0 0 0 0 0 0 0;
createNode transform -n "Spine_ctrl_01_offset" -p "ROOT_ctrl";
	rename -uid "CA215B2B-41CD-2213-D179-4C9430BF9804";
	setAttr ".t" -type "double3" -4.3582453099194627e-12 1.3360549071315559 -0.18468281596023794 ;
	setAttr ".rp" -type "double3" 0 -6.1629758220391547e-32 1.1102230246251565e-15 ;
	setAttr ".sp" -type "double3" 0 -6.1629758220391547e-32 1.1102230246251565e-15 ;
createNode transform -n "Spine_ctrl_01_auto" -p "Spine_ctrl_01_offset";
	rename -uid "9F937350-41D1-5981-33FF-00B06D069FAB";
	setAttr ".rp" -type "double3" 0 -6.1629758220391547e-32 1.1102230246251565e-15 ;
	setAttr ".sp" -type "double3" 0 -6.1629758220391547e-32 1.1102230246251565e-15 ;
createNode transform -n "Spine_ctrl_01" -p "Spine_ctrl_01_auto";
	rename -uid "64B247F8-4727-E3E3-0D06-388FC265522E";
createNode nurbsCurve -n "Spine_ctrl_01Shape" -p "Spine_ctrl_01";
	rename -uid "8211B0EE-40D8-3086-C0C6-01A0765108E4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -1.4717072218685658 -1.0712057524176147e-16 
		1.7494117539251559 5.9828924786741836e-14 -1.5149137031610689e-16 2.4740418285759036 
		1.4717072218686407 -1.0712057524176224e-16 1.7494117539252132 2.0813083130090084 
		-7.2550698243765643e-31 4.2888322865522143e-14 1.4717072218685552 1.0712057524176126e-16 
		-1.7494117539251559 -5.8752674423448682e-14 1.5149137031610684e-16 -2.4740418285759054 
		-1.4717072218686504 1.0712057524176221e-16 -1.7494117539252128 -2.0813083130090124 
		6.7944715058687458e-31 -4.1392701137343139e-14 0 0 0 0 0 0 0 0 0;
createNode transform -n "Spine_ctrl_02_offset" -p "Spine_ctrl_01";
	rename -uid "0F014316-4D4A-BBAD-A258-559CC5C64D2E";
	setAttr ".t" -type "double3" 2.4919000579872681e-16 1.2196957406718418 0.18468281596024938 ;
	setAttr ".rp" -type "double3" 0 -6.1629758220391547e-32 1.1102230246251565e-15 ;
	setAttr ".sp" -type "double3" 0 -6.1629758220391547e-32 1.1102230246251565e-15 ;
createNode transform -n "Spine_ctrl_02_auto" -p "Spine_ctrl_02_offset";
	rename -uid "7BAA9417-4CCF-3A12-EB8B-74BA06E42392";
	setAttr ".rp" -type "double3" 0 -6.1629758220391547e-32 1.1102230246251565e-15 ;
	setAttr ".sp" -type "double3" 0 -6.1629758220391547e-32 1.1102230246251565e-15 ;
createNode transform -n "Spine_ctrl_02" -p "Spine_ctrl_02_auto";
	rename -uid "7F1BBF57-4FCF-A1C6-5382-76AA2CDCB44D";
createNode nurbsCurve -n "Spine_ctrl_02Shape" -p "Spine_ctrl_02";
	rename -uid "B5F20777-4C31-AEC8-A234-4D9539E1CF8B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -1.2658528619150899 -5.5511151231257827e-17 
		1.276484761701296 7.4155654186131563e-14 -1.1102230246251565e-16 1.8052220621606407 
		1.2658528619151836 -5.5511151231257827e-17 1.2764847617013972 1.7901862852891852 
		0 7.6240745841675822e-14 1.2658528619150771 1.1102230246251565e-16 -1.2764847617012964 
		-7.2318367815163496e-14 1.1102230246251565e-16 -1.8052220621606416 -1.2658528619151943 
		1.1102230246251565e-16 -1.2764847617013966 -1.790186285289187 0 -7.3822338024953327e-14 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "Head_ctrl_01_offset" -p "Spine_ctrl_02";
	rename -uid "DD712187-43EC-5188-90E8-AD9315D2989A";
	setAttr ".t" -type "double3" 0.00024457745947692927 0.4247766486334994 -0.81033310941924075 ;
	setAttr ".r" -type "double3" -90.089209618390726 -7.2154301754019183 90.010471372533644 ;
	setAttr ".rp" -type "double3" 0 -6.1629758220391547e-32 1.1102230246251565e-15 ;
	setAttr ".rpt" -type "double3" -1.1102217000327831e-15 1.4211134168666057e-20 -1.1119379538339222e-15 ;
	setAttr ".sp" -type "double3" 0 -6.1629758220391547e-32 1.1102230246251565e-15 ;
createNode transform -n "Head_ctrl_01_auto" -p "Head_ctrl_01_offset";
	rename -uid "63C11FCE-4FB1-8FEF-25A8-56B681D414FB";
	setAttr ".rp" -type "double3" 0 -6.1629758220391547e-32 1.1102230246251565e-15 ;
	setAttr ".sp" -type "double3" 0 -6.1629758220391547e-32 1.1102230246251565e-15 ;
createNode transform -n "Head_ctrl_01" -p "Head_ctrl_01_auto";
	rename -uid "3E931EE2-4D40-25E9-B964-DE840A737FDE";
	addAttr -ci true -sn "FaceNumber" -ln "FaceNumber" -min 0 -max 1 -at "double";
	setAttr -k on ".FaceNumber";
createNode nurbsCurve -n "Head_ctrl_01Shape" -p "Head_ctrl_01";
	rename -uid "947DE25D-4857-CE93-7FA9-FDB323CE16E8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 9;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -1.8539071788294381 0.30439260881170316 
		1.7275200666039046 0.32358340841429312 0.30439260881170305 2.4735081387460012 2.5584585346556454 
		0.30439260881170327 2.3500201736759538 3.5762240132684155 0.30439260881170277 -0.00081414978564689185 
		2.558458534655585 0.30439260881170349 -2.3516484732472782 0.32358340841419853 0.30439260881170349 
		-2.4751290533409573 -1.8539071788294967 0.3043926088117036 -1.7291409811989193 -1.5588287481271725 
		0.30439260881170271 -0.00081414978571504567 0 0 0 0 0 0 0 0 0;
createNode transform -n "Jaw_ctrl_01_offset" -p "Spine_ctrl_02";
	rename -uid "E30D4DA4-4406-C96C-C694-E38C5F477CDF";
	setAttr ".t" -type "double3" 0.00027543065701166747 0.25595847528904159 -0.83170599579991333 ;
	setAttr ".r" -type "double3" -90.089209618390797 -7.2154301754019148 90.010471372533672 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0 -6.1629758220391558e-32 1.1102230246251567e-15 ;
	setAttr ".rpt" -type "double3" -1.1102217000327839e-15 1.4211134168258768e-20 -1.1119379538339244e-15 ;
	setAttr ".sp" -type "double3" 0 -6.1629758220391547e-32 1.1102230246251565e-15 ;
	setAttr ".spt" -type "double3" 0 -1.0947644252537638e-47 1.9721522630525304e-31 ;
createNode transform -n "Jaw_ctrl_01_auto" -p "Jaw_ctrl_01_offset";
	rename -uid "8143F035-482E-9FD0-B1E7-90B220C65E18";
	setAttr ".rp" -type "double3" 0 -6.1629758220391547e-32 1.1102230246251565e-15 ;
	setAttr ".sp" -type "double3" 0 -6.1629758220391547e-32 1.1102230246251565e-15 ;
createNode transform -n "Jaw_ctrl_01" -p "Jaw_ctrl_01_auto";
	rename -uid "32B34592-4999-FA44-FEA8-BA992D519680";
createNode nurbsCurve -n "Jaw_ctrl_01Shape" -p "Jaw_ctrl_01";
	rename -uid "15EAD2B4-4268-880C-168D-DFB358C7B032";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 9;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -2.3575978785266223 0.2370370424929153 
		1.8101698360210383 -1.5756049579056653e-15 1.6087471836036319e-14 2.747173482125 
		2.3575978785266201 -0.23703704249289631 1.810169836021092 3.3341468944343857 -0.33522100027827295 
		3.8610066360362655e-14 2.3575978785266214 -0.23703704249291785 -1.8101698360210365 
		-1.3741726560463883e-16 -1.5616051454752313e-14 -2.7471734821250027 -2.3575978785266218 
		0.23703704249289176 -1.8101698360210912 -3.3341468944343875 0.33522100027827295 -3.720620492258455e-14 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "R_arm_IK_Control_Grp" -p "Spine_ctrl_02";
	rename -uid "7863C479-4EE2-3412-CEE9-E8AF13BDA00F";
	setAttr ".t" -type "double3" -4.6125860051583248e-08 -5.9359979829340332 0.016405265777033447 ;
	setAttr ".r" -type "double3" 179.52707279903029 1.4810611873229582e-24 179.99999713327239 ;
createNode transform -n "R_Arm_IK_Base_Ctrl_Grp" -p "R_arm_IK_Control_Grp";
	rename -uid "DBC5ED4C-4BC1-8792-E816-9EA9618CAB07";
	setAttr ".t" -type "double3" -1.0497700000000005 5.9707200000000018 0.17694100000000221 ;
	setAttr ".r" -type "double3" -1.8445347487082522e-10 -89.957872832588848 0.64651441832378465 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "R_Arm_IK_Basae_Ctrl" -p "R_Arm_IK_Base_Ctrl_Grp";
	rename -uid "821F9DCD-4227-5FCC-078C-BAADD4DD95A4";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "R_Arm_IK_Basae_CtrlShape" -p "R_Arm_IK_Basae_Ctrl";
	rename -uid "EAFF368E-4518-AC2F-55E1-33A703E74197";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode nurbsCurve -n "R_Arm_IK_Basae_CtrlShapeOrig" -p "R_Arm_IK_Basae_Ctrl";
	rename -uid "483A5FB0-4C89-510F-5DF8-D9B97D46940B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.0880378759346612 1.0772234691501879 0.15302292959044966
		6.7857323231109122e-17 1.0971794398094101 0.1558577370195012
		-1.0880378759346612 1.077223469150187 0.15302292959044955
		-1.1081941875543881 3.8663440936481938e-16 3.8798952251414852e-16
		-1.0880378759346612 -1.0772234691501883 -0.15302292959044955
		-1.1100856969603225e-16 -1.0971794398094108 -0.15585773701950106
		1.0880378759346612 -1.0772234691501867 -0.15302292959044944
		1.1081941875543881 1.8013446064065306e-16 3.5865556533720545e-16
		1.0880378759346612 1.0772234691501879 0.15302292959044966
		6.7857323231109122e-17 1.0971794398094101 0.1558577370195012
		-1.0880378759346612 1.077223469150187 0.15302292959044955
		;
createNode transform -n "R_Arm_IK_PV_Ctrl_Grp" -p "R_arm_IK_Control_Grp";
	rename -uid "80A83B53-40F4-4109-02CD-B7AC479C6460";
	setAttr ".t" -type "double3" -3.1523767780446761 5.9472390851515895 -0.050774214850663191 ;
	setAttr ".r" -type "double3" 1.5655707571559385e-12 -84.558701882628597 0.0024003979286069863 ;
createNode transform -n "R_Arm_IK_PV_Ctrl_Offest_Grp" -p "R_Arm_IK_PV_Ctrl_Grp";
	rename -uid "16A24C22-4FA9-9DF1-819F-7DBA513E1373";
	setAttr ".t" -type "double3" -3 0 0 ;
createNode transform -n "R_Arm_IK_PV_Ctrl" -p "R_Arm_IK_PV_Ctrl_Offest_Grp";
	rename -uid "CAA62B81-437C-E235-B28C-D8A06ACCFC7A";
	setAttr ".t" -type "double3" 5.5511151231257827e-17 0 4.4408920985006262e-16 ;
createNode nurbsCurve -n "R_Arm_IK_PV_CtrlShape" -p "R_Arm_IK_PV_Ctrl";
	rename -uid "9C9D5A60-4BE0-581C-DFD5-48A625566E01";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.041777728090384873 4.7982373409884731e-17 -0.041777728090384769
		4.3405267305745863e-17 6.7857323231109122e-17 -0.7088618095595608
		-0.041777728090384873 4.7982373409884719e-17 -0.041777728090384707
		-0.70886180955956135 3.5177356190060272e-33 8.3271516482348397e-17
		-0.041777728090384873 -4.7982373409884725e-17 0.041777728090385068
		-7.1007172276371601e-17 -6.7857323231109171e-17 0.70886180955956224
		0.041777728090384873 -4.7982373409884719e-17 0.041777728090385061
		0.70886180955956135 -9.2536792101100989e-33 2.1668627255178128e-16
		0.041777728090384873 4.7982373409884731e-17 -0.041777728090384769
		4.3405267305745863e-17 6.7857323231109122e-17 -0.7088618095595608
		-0.041777728090384873 4.7982373409884719e-17 -0.041777728090384707
		;
createNode transform -n "R_Arm_IK_Handle_Ctrl_Grp" -p "R_arm_IK_Control_Grp";
	rename -uid "DF71FCDE-4731-6F3C-0752-A99D876EBA45";
	setAttr ".t" -type "double3" -4.8013906478881836 5.9419798851013175 0.54374736547470093 ;
	setAttr ".r" -type "double3" -8.3573256202914107e-14 -84.18098550074582 0.4407079345619585 ;
createNode transform -n "R_Arm_IK_Handle_Ctrl" -p "R_Arm_IK_Handle_Ctrl_Grp";
	rename -uid "08D27D35-4739-E404-703D-02874DD79553";
createNode nurbsCurve -n "R_Arm_IK_Handle_CtrlShape" -p "R_Arm_IK_Handle_Ctrl";
	rename -uid "610F091A-49D4-7B99-A4B2-56AFFA7B62CB";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.69596872666013077 0.69404428782090166 -0.051720354137430716
		4.3405267305745863e-17 0.70690171976571448 -0.052678493185836124
		-0.69596872666013077 0.69404428782090077 -0.051720354137430709
		-0.70886180955956135 -8.3041260532071455e-17 6.1882555308137935e-18
		-0.69596872666013077 -0.69404428782090188 0.05172035413743066
		-7.1007172276371601e-17 -0.70690171976571603 0.052678493185836076
		0.69596872666013077 -0.69404428782090144 0.051720354137430716
		0.70886180955956135 -2.1608710844734289e-16 1.6102865436036891e-17
		0.69596872666013077 0.69404428782090166 -0.051720354137430716
		4.3405267305745863e-17 0.70690171976571448 -0.052678493185836124
		-0.69596872666013077 0.69404428782090077 -0.051720354137430709
		;
createNode ikHandle -n "R_Arm_IKHandle" -p "R_Arm_IK_Handle_Ctrl";
	rename -uid "6D823E18-49F0-3BE8-2890-E1928865940B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.1796119636642288e-16 0 8.8817841970012523e-16 ;
	setAttr ".r" -type "double3" -4.3161881727330469 84.164377926666319 -4.3385868999258683 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "R_Arm_IKHandle_poleVectorConstraint1" -p "R_Arm_IKHandle";
	rename -uid "F4866F6D-4F41-9E10-1E8B-F0A47CBE4E21";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Arm_IK_PV_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -3.4396636513980376 -0.0051313324697952467 2.04901753056336 ;
	setAttr -k on ".w0";
createNode transform -n "L_Arm_IK_Control_Grp" -p "Spine_ctrl_02";
	rename -uid "11609C5D-49BA-705F-B6BF-BEB2161EE57E";
	setAttr ".t" -type "double3" -4.6125860051583248e-08 -5.9359979829340332 0.016405265777033447 ;
	setAttr ".r" -type "double3" 179.52707279903029 1.4810611873229582e-24 179.99999713327239 ;
createNode transform -n "L_Arm_IK_Base_Ctrl_Grp" -p "L_Arm_IK_Control_Grp";
	rename -uid "768DAC6C-4378-82A1-B094-66AB4A48F70E";
	setAttr ".t" -type "double3" 1.0497688055038457 5.9707183837890669 0.17694078385830131 ;
	setAttr ".r" -type "double3" 2.0966248486164896e-09 -89.957880557125549 179.35350207272799 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "L_Arm_IK_Base_Ctrl" -p "L_Arm_IK_Base_Ctrl_Grp";
	rename -uid "53E00B69-4833-3CD2-55A6-FD9C3B1D4F27";
createNode nurbsCurve -n "L_Arm_IK_Base_CtrlShape" -p "L_Arm_IK_Base_Ctrl";
	rename -uid "C778D45F-4532-FF09-6A21-84958E05CC87";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 0.30442625104343679 -1.071841698505019 
		0.97064582714923464 0 -1.0916979698352087 1.2986932688829185 -0.30442625104343679 
		-1.0718416985050179 0.97064582714923442 0 -1.477824390089331e-15 -4.2712948922807189e-16 
		-0.30442625104343679 1.0718416985050168 -0.97064582714923509 0 1.0916979698352076 
		-1.2986932688829196 0.30442625104343679 1.0718416985050156 -0.97064582714923486 0 
		-1.2723561078615806e-15 -6.7155632015677366e-16 0 0 0 0 0 0 0 0 0;
createNode transform -n "L_Arm_IK_PV_Ctrl_Grp" -p "L_Arm_IK_Control_Grp";
	rename -uid "6935371B-4B8A-33D2-21B6-6C81A8C33255";
	setAttr ".t" -type "double3" 3.1523811220227693 5.9472380745713593 -0.050774692504068769 ;
	setAttr ".r" -type "double3" 1.2219473821446821e-10 -84.558662309112222 179.99777620103973 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "L_Arm_IK_PV_Ctrl_Offset_Grp" -p "L_Arm_IK_PV_Ctrl_Grp";
	rename -uid "8CB2DCF6-452B-67C4-F4B0-9CA0D536FE10";
	setAttr ".t" -type "double3" -3 0 3.8857805861880479e-16 ;
createNode transform -n "L_Arm_IK_PV_Ctrl" -p "L_Arm_IK_PV_Ctrl_Offset_Grp";
	rename -uid "815895C8-4568-11A6-D608-539B76540A55";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 -4.4408920985006262e-16 ;
createNode nurbsCurve -n "L_Arm_IK_PV_CtrlShape" -p "L_Arm_IK_PV_Ctrl";
	rename -uid "9FA3354E-4F02-5D60-71BE-4E884B24A2A0";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.041777728090384873 4.7982373409884731e-17 -0.041777728090384769
		4.3405267305745863e-17 6.7857323231109122e-17 -0.7088618095595608
		-0.041777728090384873 4.7982373409884719e-17 -0.041777728090384707
		-0.70886180955956135 3.5177356190060272e-33 8.3271516482348397e-17
		-0.041777728090384873 -4.7982373409884725e-17 0.041777728090385068
		-7.1007172276371601e-17 -6.7857323231109171e-17 0.70886180955956224
		0.041777728090384873 -4.7982373409884719e-17 0.041777728090385061
		0.70886180955956135 -9.2536792101100989e-33 2.1668627255178128e-16
		0.041777728090384873 4.7982373409884731e-17 -0.041777728090384769
		4.3405267305745863e-17 6.7857323231109122e-17 -0.7088618095595608
		-0.041777728090384873 4.7982373409884719e-17 -0.041777728090384707
		;
createNode transform -n "L_Arm_IK_Handle_Ctrl_Grp" -p "L_Arm_IK_Control_Grp";
	rename -uid "4325E788-417D-8A5E-489C-C28E0C6994B8";
	setAttr ".t" -type "double3" 4.778026056102016 5.9473537647804431 0.56689948106041466 ;
	setAttr ".r" -type "double3" -1.2953398124631278e-10 -84.181011685161906 179.55935803115639 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999978 ;
createNode transform -n "L_Arm_IK_Handle_Ctrl" -p "L_Arm_IK_Handle_Ctrl_Grp";
	rename -uid "0586EBE3-461B-5303-7B02-709EEE8799D6";
	setAttr ".r" -type "double3" 93.2494763633688 0 0 ;
createNode nurbsCurve -n "L_Arm_IK_Handle_CtrlShape" -p "L_Arm_IK_Handle_Ctrl";
	rename -uid "BC7F42EB-44F7-B91C-E7DC-B1B612528EFA";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.69596872666013077 4.7982373409884731e-17 -0.6959687266601311
		4.3405267305745863e-17 6.7857323231109122e-17 -0.7088618095595608
		-0.69596872666013077 4.7982373409884719e-17 -0.69596872666013032
		-0.70886180955956135 3.5177356190060272e-33 8.3271516482348397e-17
		-0.69596872666013077 -4.7982373409884725e-17 0.69596872666013143
		-7.1007172276371601e-17 -6.7857323231109171e-17 0.70886180955956224
		0.69596872666013077 -4.7982373409884719e-17 0.69596872666013088
		0.70886180955956135 -9.2536792101100989e-33 2.1668627255178128e-16
		0.69596872666013077 4.7982373409884731e-17 -0.6959687266601311
		4.3405267305745863e-17 6.7857323231109122e-17 -0.7088618095595608
		-0.69596872666013077 4.7982373409884719e-17 -0.69596872666013032
		;
createNode ikHandle -n "L_Arm_IKHandle" -p "L_Arm_IK_Handle_Ctrl";
	rename -uid "C6FAB403-4073-4FF1-2D21-67A4C08D3B66";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.0816681711721685e-16 0 0 ;
	setAttr ".r" -type "double3" 90.329668010485292 2.7920798337328563 95.825755393809203 ;
	setAttr ".s" -type "double3" 1 0.99999999999999956 1 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "L_Arm_IKHandle_poleVectorConstraint1" -p "L_Arm_IKHandle";
	rename -uid "7B8ACBC9-4A1A-CFBF-FE9E-FBA446C1016F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_IK_PV_CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -3.4396635485597975 2.0454412610559278 -0.12127062367166008 ;
	setAttr -k on ".w0";
createNode transform -n "Pelvis_ctrl_offset" -p "Transform_Ctrl";
	rename -uid "A51D7C17-4376-7EF8-9AEB-028C60F43ACC";
	setAttr ".t" -type "double3" 1.1573385736572977e-07 3.2349820746949871 0.043108415592792465 ;
	setAttr ".r" -type "double3" 179.52707279903029 1.4810611873229582e-24 179.99999713317473 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 0 -6.1629758220391547e-32 1.1102230246251563e-15 ;
	setAttr ".rpt" -type "double3" 4.5851711718542846e-25 9.1638286433478899e-18 -2.2204082292880649e-15 ;
	setAttr ".sp" -type "double3" 0 -6.1629758220391547e-32 1.1102230246251565e-15 ;
	setAttr ".spt" -type "double3" 0 0 -1.9721522630525291e-31 ;
createNode transform -n "Pelvis_ctrl_auto" -p "Pelvis_ctrl_offset";
	rename -uid "F335DD06-4B1A-C5B4-16C1-12AD46F9FE4B";
	setAttr ".rp" -type "double3" 0 -6.1629758220391547e-32 1.1102230246251565e-15 ;
	setAttr ".sp" -type "double3" 0 -6.1629758220391547e-32 1.1102230246251565e-15 ;
createNode transform -n "Pelvis_ctrl" -p "Pelvis_ctrl_auto";
	rename -uid "7C86D50D-4ADD-DB27-00F7-DBBDBF7D6A8D";
createNode nurbsCurve -n "Pelvis_ctrlShape" -p "Pelvis_ctrl";
	rename -uid "0118CB0F-4995-8185-EF3F-6B8773C42606";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.70513818640955894 4.4878395119709391e-17 
		1.4579033904391663 6.8639235762724471e-17 6.3467635035831547e-17 2.0617867473887799 
		0.70513818640955894 4.4878395119709391e-17 1.4579033904391654 1.6103896299082374 
		3.2901734078019907e-33 1.7045346474941075e-15 0.70513818640955894 -4.4878395119709391e-17 
		-1.4579033904391645 2.0576202466193772e-16 -6.3467635035831621e-17 -2.0617867473887834 
		-0.70513818640955894 -4.4878395119709391e-17 -1.4579033904391641 -1.6103896299082374 
		-8.65505898082166e-33 1.3164861276549969e-15 0 0 0 0 0 0 0 0 0;
createNode transform -n "R_Leg_FK_ctrl_01_offset" -p "Pelvis_ctrl";
	rename -uid "8B79A2EE-456F-A083-2EAF-C69BF9D131DE";
	setAttr ".t" -type "double3" 0.58341211460395026 -0.022776103754395649 0.023409618105002188 ;
	setAttr ".r" -type "double3" -143.70892192015341 -89.782912627772802 -110.52617062884617 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0 -6.1629758220391536e-32 1.1102230246251567e-15 ;
	setAttr ".rpt" -type "double3" 3.0163969635384699e-16 -1.068455503200392e-15 -1.1136135514556723e-15 ;
	setAttr ".sp" -type "double3" 0 -6.1629758220391547e-32 1.1102230246251565e-15 ;
	setAttr ".spt" -type "double3" 0 1.0947644252537631e-47 1.9721522630525304e-31 ;
createNode transform -n "R_Leg_FK_ctrl_01_auto" -p "R_Leg_FK_ctrl_01_offset";
	rename -uid "57799CEC-437C-A789-E517-7BAFFC6CB9C5";
	setAttr ".rp" -type "double3" 0 -6.1629758220391547e-32 1.1102230246251565e-15 ;
	setAttr ".sp" -type "double3" 0 -6.1629758220391547e-32 1.1102230246251565e-15 ;
createNode transform -n "R_Leg_FK_ctrl_01" -p "R_Leg_FK_ctrl_01_auto";
	rename -uid "F2445CDB-47B2-A7B1-C824-D7B26E6112C8";
createNode nurbsCurve -n "R_Leg_FK_ctrl_01Shape" -p "R_Leg_FK_ctrl_01";
	rename -uid "B2DB3859-4189-2FA9-AC51-3BB531226326";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -2.3996546958393488 0.84598001142063395 
		2.424005809339612 -0.63195240703053979 0.55880344664577752 3.433184605032586 1.505939031042427 
		-0.055712598473339529 2.4312504212279897 2.7616718088377485 -0.63759295900182067 
		0.0051227141933355425 2.3996546958393457 -0.84598001142063362 -2.424005809339608 
		0.63195240703054101 -0.55880344664577464 -3.4331846050325852 -1.5059390310424265 
		0.055712598473345754 -2.4312504212279973 -2.7616718088377423 0.63759295900182522 
		-0.0051227141933358061 0 0 0 0 0 0 0 0 0;
createNode transform -n "R_Leg_FK_ctrl_02_offset" -p "R_Leg_FK_ctrl_01";
	rename -uid "1738671A-47DB-8398-FBDA-A89E54A3F6E9";
	setAttr ".t" -type "double3" -5.6725457664441592e-16 1.4033219031261979e-13 1.8619107772344079 ;
	setAttr ".r" -type "double3" -10.066689628164546 6.5915491229785799 -1.216836815914454 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".rp" -type "double3" 0 -6.1629758220391536e-32 1.1102230246251565e-15 ;
	setAttr ".rpt" -type "double3" 1.295740257245551e-16 1.9135218109377751e-16 -2.4317835828262475e-17 ;
	setAttr ".sp" -type "double3" 0 -6.1629758220391547e-32 1.1102230246251565e-15 ;
	setAttr ".spt" -type "double3" 0 1.0947644252537631e-47 0 ;
createNode transform -n "R_Leg_FK_ctrl_02_auto" -p "R_Leg_FK_ctrl_02_offset";
	rename -uid "1035A973-4755-DC6C-56F4-37BF6E830DD7";
	setAttr ".rp" -type "double3" 0 -6.1629758220391547e-32 1.1102230246251565e-15 ;
	setAttr ".sp" -type "double3" 0 -6.1629758220391547e-32 1.1102230246251565e-15 ;
createNode transform -n "R_Leg_FK_ctrl_02" -p "R_Leg_FK_ctrl_02_auto";
	rename -uid "9A49CE02-4D40-23D4-26AE-7A9442BEF95E";
createNode nurbsCurve -n "R_Leg_FK_ctrl_02Shape" -p "R_Leg_FK_ctrl_02";
	rename -uid "3D3E8B50-4746-6E08-13AF-8DB6066E8287";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -2.3005183217193421 0.8488198212921868 
		2.3310183204304527 -0.55740419339129876 0.63314300437975235 3.2157246665946038 1.5122297517017247 
		0.046579602423314728 2.216703115925335 2.6960200176719868 -0.56726949890275657 -0.080833056298297526 
		2.3005183217193386 -0.84881982129218492 -2.3310183204304513 0.55740419339129943 -0.63314300437975035 
		-3.2157246665946029 -1.5122297517017227 -0.046579602423309233 -2.2167031159253421 
		-2.6960200176719806 0.56726949890276035 0.080833056298298386 0 0 0 0 0 0 0 0 0;
createNode transform -n "L_Leg_FK_ctrl_01_offset" -p "Pelvis_ctrl";
	rename -uid "5AB1A3D2-4E87-4B5E-EE94-C7A4CA7A7D09";
	setAttr ".t" -type "double3" -0.58341163857350964 -0.022772509904751992 0.023409678479497112 ;
	setAttr ".r" -type "double3" 143.7091995777034 -89.782912857625348 -69.473983158636074 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0 -6.1629758220391536e-32 1.1102230246251567e-15 ;
	setAttr ".rpt" -type "double3" -3.0163738638998399e-16 -1.068456155305396e-15 -1.1136135599312939e-15 ;
	setAttr ".sp" -type "double3" 0 -6.1629758220391547e-32 1.1102230246251565e-15 ;
	setAttr ".spt" -type "double3" 0 1.0947644252537631e-47 1.9721522630525304e-31 ;
createNode transform -n "L_Leg_FK_ctrl_01_auto" -p "L_Leg_FK_ctrl_01_offset";
	rename -uid "B3F09365-4B45-0402-3597-008F3FC85439";
	setAttr ".rp" -type "double3" 0 -6.1629758220391547e-32 1.1102230246251565e-15 ;
	setAttr ".sp" -type "double3" 0 -6.1629758220391547e-32 1.1102230246251565e-15 ;
createNode transform -n "L_Leg_FK_ctrl_01" -p "L_Leg_FK_ctrl_01_auto";
	rename -uid "A737DC4D-46D9-C9AE-53FB-0AA129363FF9";
createNode nurbsCurve -n "L_Leg_FK_ctrl_01Shape" -p "L_Leg_FK_ctrl_01";
	rename -uid "CD0C8CC2-4BCE-20CD-9D78-56B3BAF88D21";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -2.2679984213825763 0.84343637259581938 
		2.2789130578840098 -0.53678903167996905 0.65972728153533633 3.3306644873383204 1.5088640926476313 
		0.089558896418994768 2.4313578318242755 2.6706450952800349 -0.53307187558842739 0.10779473340960964 
		2.2679984213825732 -0.84343637259581794 -2.2789130578840071 0.53678903167997116 -0.65972728153533489 
		-3.3306644873383187 -1.5088640926476324 -0.089558896418990161 -2.4313578318242826 
		-2.6706450952800296 0.53307187558843205 -0.10779473340961014 0 0 0 0 0 0 0 0 0;
createNode transform -n "L_Leg_FK_ctrl_02_offset" -p "L_Leg_FK_ctrl_01";
	rename -uid "CB37F35F-4BD0-34CF-C860-4E8FE15C161F";
	setAttr ".t" -type "double3" -1.37997252513955e-15 -1.4876988529977098e-14 1.8619121591225614 ;
	setAttr ".r" -type "double3" 10.066600027499605 6.5915472571650877 1.2168254053299796 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0 -6.1629758220391569e-32 1.1102230246251567e-15 ;
	setAttr ".rpt" -type "double3" 1.2957395078829863e-16 -1.9135049782765022e-16 -2.4317530272147233e-17 ;
	setAttr ".sp" -type "double3" 0 -6.1629758220391547e-32 1.1102230246251565e-15 ;
	setAttr ".spt" -type "double3" 0 -2.1895288505075286e-47 1.9721522630525304e-31 ;
createNode transform -n "L_Leg_FK_ctrl_02_auto" -p "L_Leg_FK_ctrl_02_offset";
	rename -uid "425FEF87-4B0B-7384-5719-CBA487859A46";
	setAttr ".rp" -type "double3" 0 -6.1629758220391547e-32 1.1102230246251565e-15 ;
	setAttr ".sp" -type "double3" 0 -6.1629758220391547e-32 1.1102230246251565e-15 ;
createNode transform -n "L_Leg_FK_ctrl_02" -p "L_Leg_FK_ctrl_02_auto";
	rename -uid "641B766C-4132-FCA1-D2DD-3791A1B2B162";
createNode nurbsCurve -n "L_Leg_FK_ctrl_02Shape" -p "L_Leg_FK_ctrl_02";
	rename -uid "34F91FAA-40EE-D4FF-31F7-D4A188C52864";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -2.3038941438913776 0.79187107173480409 
		2.3323478463868224 -0.52000700848185044 0.59066437524555593 3.2230281259449218 1.5684931799672808 
		0.043454498548089464 2.2257022412344307 2.7381913360812868 -0.52921043405272172 -0.075409830586999141 
		2.3038941438913767 -0.79187107173480609 -2.3323478463868206 0.52000700848184978 -0.59066437524555526 
		-3.2230281259449218 -1.568493179967281 -0.043454498548088666 -2.2257022412344321 
		-2.7381913360812877 0.5292104340527215 0.075409830586999765 0 0 0 0 0 0 0 0 0;
createNode transform -n "Skeleton_Grp" -p "GolemRig";
	rename -uid "E1CC7913-4986-72B7-36D7-6D9A35589ED0";
createNode joint -n "ROOT_Jnt" -p "Skeleton_Grp";
	rename -uid "AA84706D-4E42-F62A-CCEF-B09406042A51";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yxz";
	setAttr ".jo" -type "double3" 179.52707279903029 -1.1831644301800027e-08 179.9999971331747 ;
	setAttr ".bps" -type "matrix" -0.99999999999999867 5.0035540722144614e-08 -2.5849394142282115e-26 0
		 5.0033836251764202e-08 0.99996593480642215 0.0082540430526937391 0 4.1299550728539245e-10 0.0082540430526937287 -0.99996593480642337 0
		 1.2298974638724758e-07 3.3799967765808105 0.044305413961411633 1;
	setAttr ".radi" 0.25;
	setAttr ".liw" yes;
createNode joint -n "Spine_Jnt_01" -p "ROOT_Jnt";
	rename -uid "2C213D9A-4926-D2C8-AFCB-6F917D4772F9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yxz";
	setAttr ".jo" -type "double3" -1.987846675914698e-16 -2.9621223746459156e-24 0 ;
	setAttr ".bps" -type "matrix" -0.99999999999999867 5.0035540722144614e-08 -2.5849394142282115e-26 0
		 5.0033836251764202e-08 0.99996593480642215 0.0082540430526937391 0 4.1299550728539245e-10 0.0082540430526937287 -0.99996593480642337 0
		 1.897657831260548e-07 4.7144817908292964 0.24000979339000009 1;
	setAttr ".radi" 0.25;
	setAttr ".liw" yes;
createNode joint -n "Spine_Jnt_02" -p "Spine_Jnt_01";
	rename -uid "064F8B9C-464A-0834-143E-79A15A536A4C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yxz";
	setAttr ".bps" -type "matrix" -0.99999999999999867 5.0035540722144614e-08 -2.5849394142282115e-26 0
		 5.0033836251764202e-08 0.99996593480642215 0.0082540430526937391 0 4.1299550728539245e-10 0.0082540430526937287 -0.99996593480642337 0
		 2.5086811234539839e-07 5.9356603622436559 0.065400689840319021 1;
	setAttr ".radi" 0.25;
	setAttr ".liw" yes;
createNode joint -n "L_Arm_IK_Jnt_01" -p "Spine_Jnt_02";
	rename -uid "79997959-4CD4-54E4-9DE9-FEB10B1AE977";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "zxy";
	setAttr ".jo" -type "double3" -95.730375806230711 89.524727808991841 84.915945432365334 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.00084177908934558352 -0.020540963285035622 0.9997886577848778 0
		 -0.0091328862302655373 -0.99974715718450513 -0.020547800140297202 0 0.99995794001401339 -0.0091482527743493251 0.00065396797080823727 0
		 1.0497688054511243 5.9707183837854885 0.17694078429183557 1;
	setAttr ".radi" 0.25;
	setAttr ".liw" yes;
createNode joint -n "L_Arm_IK_Jnt_02" -p "L_Arm_IK_Jnt_01";
	rename -uid "8D62936F-4F9C-DA2E-5BC5-62BDC808ADC6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -0.22926118964243891 -0.00024554472942405912 2.1025754358178199 ;
	setAttr ".r" -type "double3" 4.0286996241364092e-16 1.6975482999075714e-14 -1.0888118408431371e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "zxy";
	setAttr ".jo" -type "double3" 0.64714493016803609 5.3988732273509807 0.061365254717053119 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.094932559797356431 -0.020655085186813988 0.99526939898011868 0
		 0.0021116899964835501 -0.9997866495558676 -0.020547411885974847 0 0.99548146635468782 0.00015108202608630009 0.094955923030326475 0
		 3.1524510367830954 5.9564382205458219 -0.050891890387684019 1;
	setAttr ".radi" 0.25;
	setAttr ".liw" yes;
createNode joint -n "L_Arm_IK_Jnt_03" -p "L_Arm_IK_Jnt_02";
	rename -uid "72C8D275-46D2-B7E1-35D8-F89F8380E5A4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.46073648987394239 -0.00017878567465157147 1.6768913813078754 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "zxy";
	setAttr ".jo" -type "double3" -0.43645200987120392 0.37748132730818917 -0.044450001777681394 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.10149058430739238 -0.019880009609657027 0.99463784691457613 0
		 -0.0055401206534303506 -0.99977351858460783 -0.020547958538468927 0 0.9948210735404075 -0.0075958379967682212 0.10135746092438054 0
		 4.7780260560492938 5.9473537647768655 0.56689948149394898 1;
	setAttr ".radi" 0.25;
	setAttr ".liw" yes;
createNode joint -n "L_Arm_IK_Jnt_04" -p "L_Arm_IK_Jnt_03";
	rename -uid "9D39FF3F-48F6-C850-D799-26853DCE42E5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 1.2356601064746165e-15 2.2205245897215088e-15 0.65994801647308943 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90 0 4.337959327225283 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.10161888933896304 -0.095445287919431382 0.99023421388249977 0
		 0.9948210735404075 -0.0075958379967682212 0.10135746092438054 0 -0.0021524333732014173 0.99540569631638354 0.095722864413212316 0
		 5.4345562502779146 5.9423409065574448 0.63379013678574381 1;
	setAttr ".radi" 0.1;
	setAttr ".liw" yes;
createNode ikEffector -n "effector1" -p "L_Arm_IK_Jnt_02";
	rename -uid "C1C062CA-4D7B-8956-F00A-4882046274F6";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "L_Arm_IK_Jnt_01_parentConstraint1" -p "L_Arm_IK_Jnt_01";
	rename -uid "A1BC4663-4FA6-FB76-5AAC-B38970712E1E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_IK_Base_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -8.3266726846886741e-17 0 -1.1102230246251565e-16 ;
	setAttr ".tg[0].tor" -type "double3" 2.0969977922313619e-09 3.7272125173400587e-17 
		-3.5781240166464568e-15 ;
	setAttr ".lr" -type "double3" -2.2925083312806412e-09 2.3660578830849113e-08 2.6683770353705379e-10 ;
	setAttr ".rst" -type "double3" -1.049768552881585 0.035977536549195221 -0.11124692353036016 ;
	setAttr ".rsrr" -type "double3" -2.0969979453965011e-09 6.1841096604225507e-26 3.3793393490549868e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "L_Arm_IK_Jnt_01_scaleConstraint1" -p "L_Arm_IK_Jnt_01";
	rename -uid "0957DCCF-43D8-0709-7E7A-8E8EF5807664";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Arm_IK_Base_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr -k on ".w0";
createNode joint -n "R_Arm_IK_Jnt_01" -p "Spine_Jnt_02";
	rename -uid "2CF047EC-4B82-8B3B-0B6F-C784695F7F6C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "zxy";
	setAttr ".jo" -type "double3" 95.731324380647166 89.524727021396572 95.084980947312928 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.00084224107181536645 -0.015496642999292685 0.99987956509058074 0
		 -0.0097668850088431045 0.99983210079123619 0.015504134435919165 0 -0.99995194813910948 -0.009778766953736636 0.00069074573000859707 0
		 -1.0497700000527217 5.9707200000035803 0.1769409995664657 1;
	setAttr ".radi" 0.25;
	setAttr ".liw" yes;
createNode joint -n "R_Arm_IK_Jnt_02" -p "R_Arm_IK_Jnt_01";
	rename -uid "B26DF9E3-415B-1186-B763-02BC86428058";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -0.22926120753010279 0.00024548193196333775 2.1025698737441463 ;
	setAttr ".r" -type "double3" 3.6587726211969351e-15 -1.8454649008908107e-13 -1.3387020318866564e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "zxy";
	setAttr ".jo" -type "double3" -0.64698405829112116 5.3988261032835956 -0.061349555925703778 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.094932310598611319 -0.015573648170042514 0.99536190297151905 0
		 0.0014748695191245473 0.99987872338022665 0.015503654131510907 0 -0.99548263729926989 -3.7687782355345228e-06 0.094943766627862206 0
		 -3.1524343322007393 5.9539576790067104 -0.050836449763666608 1;
	setAttr ".radi" 0.25;
	setAttr ".liw" yes;
createNode joint -n "R_Arm_IK_Jnt_03" -p "R_Arm_IK_Jnt_02";
	rename -uid "BFCF24C9-481F-2221-D39F-C799829263D8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.43547338219889437 -0.0051901148669832864 1.6979594540794904 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "zxy";
	setAttr ".jo" -type "double3" 0.43634190278754603 0.377547169902477 0.04443898461882588 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.10149099176052905 -0.014797784922943239 0.99472639663016782 0
		 -0.0061750003127744998 0.99986073497263972 0.015504193984529478 0 -0.99481729375931172 -0.0077159718342538633 0.10138548128825707 0
		 -4.8013906479409041 5.9419798851048951 0.54374736504116328 1;
	setAttr ".radi" 0.25;
	setAttr ".liw" yes;
createNode joint -n "R_Arm_IK_Jnt_04" -p "R_Arm_IK_Jnt_03";
	rename -uid "094FD332-4510-A8A7-898D-CAB8D93F980D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 7.5493635022030858e-17 -5.0606746650246036e-16 0.65995006742934781 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -90.000062382078085 -11.671213072675441 -4.3379529071497513 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.10168154265366158 -0.090076282639861296 0.99073060273181979 0
		 0.99481583825309139 -0.010728922089495378 0.10112535879588182 0 0.0015204750474331395 0.9958770775234167 0.090700245970166821 0
		 -5.4579203880372429 5.9368877289725956 0.61065672025370543 1;
	setAttr ".radi" 0.1;
	setAttr ".liw" yes;
createNode ikEffector -n "effector2" -p "R_Arm_IK_Jnt_02";
	rename -uid "6AC761C5-42C3-CC17-BA92-90BC74D21F0D";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "R_Arm_IK_Jnt_01_parentConstraint1" -p "R_Arm_IK_Jnt_01";
	rename -uid "3D58F31B-4D13-2C4D-5045-8C99E6514FE5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Arm_IK_Basae_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 0 -1.1102230246251565e-16 ;
	setAttr ".tg[0].tor" -type "double3" -1.8382373652157755e-10 1.2672522558956201e-14 
		-4.5720473546038059e-15 ;
	setAttr ".lr" -type "double3" -1.1664311628115746e-11 -2.3660608260777903e-08 2.6685698612557015e-10 ;
	setAttr ".rst" -type "double3" 1.0497702526223398 0.035979049441134947 -0.11124712719152367 ;
	setAttr ".rsrr" -type "double3" 1.8382378563536753e-10 -8.7704998920471903e-15 4.5720473545897374e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "R_Arm_IK_Jnt_01_scaleConstraint1" -p "R_Arm_IK_Jnt_01";
	rename -uid "3B850D0B-4EB1-7936-8D42-7BAEEE999C02";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Arm_IK_Basae_CtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "Head_Jnt_01" -p "Spine_Jnt_02";
	rename -uid "FF633C66-49E1-4D02-5247-638AB00858F6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -90.089209618390711 -7.2154301754019121 90.010471372533601 ;
	setAttr ".bps" -type "matrix" 0.00018136232447026122 0.99308381138435387 -0.11740745578553405 0
		 -0.0015340403412761577 0.11740759586298005 0.99308262654922452 0 0.9999988069132576 -3.9572024043005305e-16 0.0015447239434280883 0
		 -0.00024430567282357241 6.3537340164184615 0.87921231985092596 1;
	setAttr ".radi" 0.15;
	setAttr ".liw" yes;
createNode joint -n "Head_Jnt_02" -p "Head_Jnt_01";
	rename -uid "93557F27-4376-B7B2-8E89-08BCF3F3FF6E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 1.3487369939548115 -4.163336342344337e-16 2.4633073358870661e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.00018136232447026122 0.99308381138435387 -0.11740745578553405 0
		 -0.0015340403412761577 0.11740759586298005 0.99308262654922452 0 0.9999988069132576 -3.9572024043005305e-16 0.0015447239434280883 0
		 3.0440349935183979e-07 7.693142890930182 0.72086054086686191 1;
	setAttr ".radi" 0.1;
	setAttr ".liw" yes;
createNode parentConstraint -n "Head_Jnt_01_parentConstraint1" -p "Head_Jnt_01";
	rename -uid "8D2CDCAC-4715-366B-95F6-1098299E3C54";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Head_ctrl_01W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -9.5416640443905503e-15 -1.5902773407317584e-14 -3.1805546814635152e-15 ;
	setAttr ".rst" -type "double3" 0.00024457745947726575 0.4247766486334994 -0.81033310941924075 ;
	setAttr ".rsrr" -type "double3" 0 0 -1.9083328088781097e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Head_Jnt_01_scaleConstraint1" -p "Head_Jnt_01";
	rename -uid "B24BABD6-4752-4EC4-F202-3280E7274ACF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Head_ctrl_01W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000002 ;
	setAttr -k on ".w0";
createNode joint -n "Jaw_Jnt_01" -p "Spine_Jnt_02";
	rename -uid "BD73B2F3-494F-3B77-EC2B-D8B47EEC86F6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -90.089209618390768 -7.215430175401913 90.01047137253363 ;
	setAttr ".bps" -type "matrix" 0.00018136232447070531 0.99308381138435409 -0.11740745578553397 0
		 -0.0015340403412770461 0.11740759586297994 0.99308262654922452 0 0.9999988069132576 -6.2691788338311433e-16 0.0015447239434291965 0
		 -0.00027516732580596472 6.1847451811749545 0.89919104568922437 1;
	setAttr ".radi" 0.15;
	setAttr ".liw" yes;
createNode joint -n "Jaw_Jnt_02" -p "Jaw_Jnt_01";
	rename -uid "30A66DD7-47D0-F175-AB1E-C091050297CD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.17016573355267606 -3.3306690738754696e-16 2.5359488814435949e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.00018136232447070531 0.99308381138435409 -0.11740745578553397 0
		 -0.0015340403412770461 0.11740759586297994 0.99308262654922452 0 0.9999988069132576 -6.2691788338311433e-16 0.0015447239434291965 0
		 -0.00024430567282333459 6.3537340164184606 0.87921231985092529 1;
	setAttr ".radi" 0.1;
	setAttr ".liw" yes;
createNode parentConstraint -n "Jaw_Jnt_01_parentConstraint1" -p "Jaw_Jnt_01";
	rename -uid "F06B5DBA-4EA7-B263-9A21-1CB37234522E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Jaw_ctrl_01W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -3.8166656177562189e-14 -4.1347210859025721e-14 -1.272221872585405e-14 ;
	setAttr ".rst" -type "double3" 0.00027543065701191065 0.25595847528904159 -0.83170599579991333 ;
	setAttr ".rsrr" -type "double3" -2.2263882770244611e-14 -6.3611093629270351e-15 
		-1.5902773407317578e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Jaw_Jnt_01_scaleConstraint1" -p "Jaw_Jnt_01";
	rename -uid "56593F28-410C-2B53-1992-0EA81FA5C222";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Jaw_ctrl_01W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Spine_Jnt_02_parentConstraint1" -p "Spine_Jnt_02";
	rename -uid "00A4CF8D-4647-CC39-A9AB-50B5FA7FF6AB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_ctrl_02W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 9.1967001280063155e-16 1.2196957406718418 0.18468281596024841 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Spine_Jnt_02_scaleConstraint1" -p "Spine_Jnt_02";
	rename -uid "D1E01543-4F7C-4031-7F7C-549A7D99AA5E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_ctrl_02W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Spine_Jnt_01_parentConstraint1" -p "Spine_Jnt_01";
	rename -uid "0BB67E84-47A3-E51A-BEF9-42B7D54880A7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_ctrl_01W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -4.3574652853251492e-12 1.3360549071315559 -0.18468281596023781 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Spine_Jnt_01_scaleConstraint1" -p "Spine_Jnt_01";
	rename -uid "3B7C9348-4C84-CDA5-BEA2-FB9B60C84EE2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_ctrl_01W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "ROOT_Jnt_parentConstraint1" -p "ROOT_Jnt";
	rename -uid "F79F7D9F-4E37-C965-D972-EE947C4EDC47";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ROOT_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -4.6632103757234563e-32 2.1001948234920858e-16 -2.5443570331852671e-14 ;
	setAttr ".rst" -type "double3" 1.2298974638724758e-07 3.3799967765808105 0.044305413961411633 ;
	setAttr ".rsrr" -type "double3" -4.6632103757234563e-32 2.1001948234920858e-16 -2.5443570331852671e-14 ;
	setAttr -k on ".w0";
createNode joint -n "Pelvis_Jnt" -p "ROOT_Jnt";
	rename -uid "46F39F38-4A05-47C8-3770-CCB2403EB07C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yxz";
	setAttr ".jo" -type "double3" -1.987846675914698e-16 -2.9621223746459156e-24 0 ;
	setAttr ".bps" -type "matrix" -0.99999999999999867 5.0035540722144614e-08 -2.5849394142282115e-26 0
		 5.0033836251764202e-08 0.99996593480642215 0.0082540430526937391 0 4.1299550728539245e-10 0.0082540430526937287 -0.99996593480642337 0
		 1.1573385736572972e-07 3.2349820746949867 0.043108415592792465 1;
	setAttr ".radi" 0.25;
	setAttr ".liw" yes;
createNode joint -n "R_Leg_FK_Jnt_01" -p "Pelvis_Jnt";
	rename -uid "C3A98484-4518-E75F-6658-D9B2268AE514";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "zxy";
	setAttr ".jo" -type "double3" -143.70892192016228 -89.782912627772816 -110.52617062884291 ;
	setAttr ".bps" -type "matrix" 0.0013285149865722532 0.0047057722146672046 -0.9999880453064397 0
		 0.96238307612961527 -0.27169618101714099 -1.0364972768961422e-16 0 -0.27169293297255537 -0.96237157113485261 -0.004889707987792211 0
		 -0.58341199999999971 3.2123999999999993 0.019511600000002217 1;
	setAttr ".radi" 0.25;
	setAttr ".liw" yes;
createNode joint -n "R_Leg_FK_Jnt_02" -p "R_Leg_FK_Jnt_01";
	rename -uid "69A114AD-4B34-7ED2-DEDB-129257B5FC31";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "zxy";
	setAttr ".jo" -type "double3" -10.066689628162337 6.5915491229787078 -1.2168368159139602 ;
	setAttr ".bps" -type "matrix" 0.012204964325376922 0.12087650924555128 -0.9925925187902771 0
		 0.99494112566615467 -0.10045972555290542 4.320111976485741e-15 0 -0.099715572023537702 -0.98757111797300201 -0.12149111754187432 0
		 -1.0892800000000298 1.4205500000000086 0.01040740000000282 1;
	setAttr ".radi" 0.25;
	setAttr ".liw" yes;
createNode joint -n "R_Leg_FK_Jnt_03" -p "R_Leg_FK_Jnt_02";
	rename -uid "05D9BFD6-4233-B51C-29BC-F99E92EC22E4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 1.3864454333158982e-16 3.4842713421427121e-16 1.4763992926328733 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 101.44470549857353 0.13946384627972583 178.60835405764706 ;
	setAttr ".bps" -type "matrix" 0.012204871640694786 -0.12087644938055726 0.99259252722020008 0
		 0.099714872157073739 -0.9875711971114195 -0.12149104866868268 0 0.99494119694529315 0.10045901961032361 -9.1142371427821445e-15 0
		 -1.2365000000000628 -0.037499299999987468 -0.16896199999999784 1;
	setAttr ".radi" 0.1;
	setAttr ".liw" yes;
createNode parentConstraint -n "R_Leg_FK_Jnt_02_parentConstraint1" -p "R_Leg_FK_Jnt_02";
	rename -uid "416EB5F0-44AC-3E4C-ACE5-368B3C2F21ED";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg_FK_ctrl_02W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tpm" -type "matrix" 0.012204964325372991 0.12087650924555074 -0.99259251879027732 0
		 0.99494112566615434 -0.10045972555291027 5.5511151231257839e-17 0 -0.099715572023543059 -0.98757111797300179 -0.12149111754187358 0
		 -1.0892799999999678 1.4205499999999924 0.01040740000000159 1;
	setAttr ".cpim" -type "matrix" 0.0013285149865722285 0.96238307612962481 -0.27169293297252234 0
		 0.0047057722146670797 -0.2716961810171078 -0.96237157113486183 0 -0.99998804530643981 2.454633718507182e-16 -0.004889707987792309 0
		 0.0051696156677517894 1.4342626471102937 2.9331089237286401 1;
	setAttr ".lr" -type "double3" 2.257473229419077e-12 -4.0048898498819097e-14 8.6471330402281433e-15 ;
	setAttr ".rst" -type "double3" -1.1188966420050406e-16 -3.5527136788005009e-15 1.8619107772344077 ;
	setAttr ".cjo" -type "double3" -10.066689628162333 6.5915491229787007 -1.2168368159139593 ;
	setAttr ".rsrr" -type "double3" 2.2558767400574829e-12 -4.0061322540543563e-14 8.7465253740238799e-15 ;
createNode scaleConstraint -n "R_Leg_FK_Jnt_02_scaleConstraint1" -p "R_Leg_FK_Jnt_02";
	rename -uid "2EAE0952-40D6-A6A3-ED0B-938C4394D759";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg_FK_ctrl_02W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 0.99999999999999978 1.0000000000000004 1 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Leg_FK_Jnt_02_parentConstraint2" -p "R_Leg_FK_Jnt_02";
	rename -uid "B77F05C4-46AA-0D37-5153-B98153939406";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg_FK_ctrl_02W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.4710455076283324e-15 3.5971225997855072e-14 
		7.3274719625260332e-15 ;
	setAttr ".tg[0].tor" -type "double3" -3.3475338022403522e-12 4.9298597562684508e-14 
		-1.4372131466863267e-13 ;
	setAttr ".lr" -type "double3" 3.3458565566075475e-12 -4.8199069870073368e-14 1.4332374533344829e-13 ;
	setAttr ".rst" -type "double3" -9.0205620750793969e-17 -3.7747582837255322e-15 1.8619107772344079 ;
	setAttr ".rsrr" -type "double3" 3.3458565566075475e-12 -4.8199069870073368e-14 1.4332374533344829e-13 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Leg_FK_Jnt_01_parentConstraint1" -p "R_Leg_FK_Jnt_01";
	rename -uid "80D8CEDA-41C4-17BA-AB28-8F836456FC8A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg_FK_ctrl_01W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tpm" -type "matrix" 0.0013285149865721602 0.0047057722146669487 -0.99998804530643981 0
		 0.96238307612960383 -0.27169618101718251 -5.5511151231257839e-17 0 -0.27169293297259678 -0.96237157113484106 -0.0048897079877925353 0
		 -0.58341199999999971 3.2124000000000006 0.019511600000001114 1;
	setAttr ".cpim" -type "matrix" -0.99999999999999889 5.0033836251764216e-08 4.1299550728539256e-10 0
		 5.0035540722144621e-08 0.99996593480642226 0.0082540430526937304 0 -5.1698788284564241e-26 0.0082540430526937408 -0.9999659348064236 0
		 -4.613021996807924e-08 -3.3802473351306355 0.016405265777044462 1;
	setAttr ".lr" -type "double3" 9.5162196069388387e-12 -1.27222187258538e-14 -3.1805546814645727e-15 ;
	setAttr ".rst" -type "double3" 0.58341211460395004 -0.16779574576239753 0.023409618105001143 ;
	setAttr ".cjo" -type "double3" -143.70892192015964 -89.782912627772816 -110.52617062884751 ;
	setAttr ".rsrr" -type "double3" 9.5162196069388387e-12 -1.27222187258538e-14 -3.1805546814645727e-15 ;
createNode scaleConstraint -n "R_Leg_FK_Jnt_01_scaleConstraint1" -p "R_Leg_FK_Jnt_01";
	rename -uid "09EB66A1-4FED-4E72-B091-BA8D14A92043";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg_FK_ctrl_01W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 1 1.0000000000000004 0.99999999999999978 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Leg_FK_Jnt_01_parentConstraint2" -p "R_Leg_FK_Jnt_01";
	rename -uid "EB93FF06-4F7B-E22C-8642-1FB59236517D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg_FK_ctrl_01W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.0469056177520031e-15 8.8817841970012523e-16 
		1.7763568394002505e-15 ;
	setAttr ".tg[0].tor" -type "double3" -4.9121440433976221e-12 8.8210696243714716e-15 
		-1.5703988739726114e-14 ;
	setAttr ".lr" -type "double3" 4.9107764281796699e-12 -1.2722218725854477e-14 9.5416640443900044e-15 ;
	setAttr ".rst" -type "double3" 0.58341211460394982 -0.022776103754396981 0.02340961810500114 ;
	setAttr ".rsrr" -type "double3" 4.9107764281796699e-12 -1.2722218725854477e-14 9.5416640443900044e-15 ;
	setAttr -k on ".w0";
createNode joint -n "L_Leg_FK_Jnt_01" -p "Pelvis_Jnt";
	rename -uid "CEA9824E-453F-31BB-F69C-50AFF0491517";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "zxy";
	setAttr ".jo" -type "double3" 143.70919957770786 -89.782912857625334 -69.473983158639228 ;
	setAttr ".bps" -type "matrix" -0.0013285035849667274 0.0047057725388473031 -0.99998804532006136 0
		 0.96238369071930463 0.27169400405141275 4.0722633598555547e-16 0 0.27169075603655324 -0.96237218573030447 -0.0048897052020176416 0
		 0.58341175317764249 3.2124035358428946 0.019511569291354201 1;
	setAttr ".radi" 0.25;
	setAttr ".liw" yes;
createNode joint -n "L_Leg_FK_Jnt_02" -p "L_Leg_FK_Jnt_01";
	rename -uid "D4989D2A-41FF-68B3-7BA6-0F953666B35C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "zxy";
	setAttr ".jo" -type "double3" 10.066600027505672 6.5915472571651348 1.2168254053300485 ;
	setAttr ".bps" -type "matrix" -0.012204871640705089 0.12087644938055639 -0.99259252722020019 0
		 0.99494119694528638 0.10045901961038844 -1.1407324737588986e-14 0 0.099714872157137951 -0.98757119711141339 -0.12149104866868295 0
		 1.0892760753632635 1.4205510616302763 0.010407367721193612 1;
	setAttr ".radi" 0.25;
	setAttr ".liw" yes;
createNode joint -n "L_Leg_FK_Jnt_03" -p "L_Leg_FK_Jnt_02";
	rename -uid "E74C0318-4FB8-8A2F-127B-E68D163C338A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0 -1.1102230246251565e-15 1.4764002466912762 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999986 0 -179.99999999999943 ;
	setAttr ".bps" -type "matrix" 0.012204871640695239 -0.12087644938055736 0.99259252722019997 0
		 0.09971487215713748 -0.98757119711141317 -0.12149104866868292 0 0.99494119694528682 0.10045901961038704 -1.6151517588022769e-15 0
		 1.2364951372148498 -0.037499297410213073 -0.16896204650403171 1;
	setAttr ".radi" 0.1;
	setAttr ".liw" yes;
createNode parentConstraint -n "L_Leg_FK_Jnt_02_parentConstraint1" -p "L_Leg_FK_Jnt_02";
	rename -uid "CE1E3B97-4674-1696-238A-6CB0A42CE53A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_FK_ctrl_02W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tpm" -type "matrix" -0.012204871640704829 0.12087644938055556 -0.99259252722020053 0
		 0.99494119694527783 0.10045901961047732 0 0 0.099714872157227713 -0.98757119711140429 -0.12149104866868221 0
		 1.0892760753632642 1.4205510616302779 0.010407367721192537 1;
	setAttr ".cpim" -type "matrix" -0.0013285035849668458 0.9623836907193053 0.27169075603655252 0
		 0.0047057725388467619 0.2716940040514122 -0.96237218573030459 0 -0.99998804532006147 2.8362728832220796e-16 -0.004889705202017345 0
		 0.0051695602997316745 -1.4342567355141904 2.9331156377573055 1;
	setAttr ".lr" -type "double3" -5.1916467394446917e-12 -2.1462532079015943e-14 1.2324649390672096e-14 ;
	setAttr ".rst" -type "double3" -9.0205620750793969e-17 -3.7969627442180354e-14 1.86191215912256 ;
	setAttr ".cjo" -type "double3" 10.066600027505672 6.5915472571651277 1.2168254053300485 ;
	setAttr ".rsrr" -type "double3" -5.1777131766507027e-12 -1.3759626209846157e-14 
		1.9779074425351867e-14 ;
createNode scaleConstraint -n "L_Leg_FK_Jnt_02_scaleConstraint1" -p "L_Leg_FK_Jnt_02";
	rename -uid "AA4CC17B-48A4-BF19-849A-42BD2B6B3A2A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_FK_ctrl_02W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999978 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Leg_FK_Jnt_02_parentConstraint2" -p "L_Leg_FK_Jnt_02";
	rename -uid "CB356CDC-4C24-CF59-D9D3-2FB74784D03D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_FK_ctrl_02W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.7755575615628914e-15 -6.3060667798708891e-14 
		1.0880185641326534e-14 ;
	setAttr ".tg[0].tor" -type "double3" 7.4329562905802378e-12 3.4986101496098669e-14 
		2.3854160110976369e-13 ;
	setAttr ".lr" -type "double3" -7.3773711279049742e-12 -4.4248224601702436e-14 -2.128983789904613e-13 ;
	setAttr ".rst" -type "double3" -6.6786853825107073e-17 -3.7525538232330291e-14 1.8619121591225589 ;
	setAttr ".rsrr" -type "double3" -7.4365095665134366e-12 -3.6228505668560853e-14 
		-2.3854160110976142e-13 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Leg_FK_Jnt_01_parentConstraint1" -p "L_Leg_FK_Jnt_01";
	rename -uid "94862883-4B86-7304-F369-2AA2F1F77CE7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_FK_ctrl_01W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tpm" -type "matrix" -0.0013285035849670557 0.004705772538847186 -0.99998804532006158 0
		 0.96238369071931107 0.27169400405139155 0 0 0.27169075603653203 -0.96237218573031047 -0.0048897052020175913 0
		 0.58341175317764249 3.2124035358428964 0.019511569291353108 1;
	setAttr ".cpim" -type "matrix" -0.99999999999999889 5.0033836251764216e-08 4.1299550728539256e-10 0
		 5.0035540722144621e-08 0.99996593480642226 0.0082540430526937304 0 -5.1698788284564241e-26 0.0082540430526937408 -0.9999659348064236 0
		 -4.613021996807924e-08 -3.3802473351306355 0.016405265777044462 1;
	setAttr ".lr" -type "double3" 1.3453746302590673e-12 1.2722218725854064e-14 1.4936658912601731e-28 ;
	setAttr ".rst" -type "double3" -0.58341163857351386 -0.16779215191275298 0.023409678479494402 ;
	setAttr ".cjo" -type "double3" 143.7091995777073 -89.782912857625305 -69.473983158638632 ;
	setAttr ".rsrr" -type "double3" 2.4490271047269075e-12 1.5902773407317647e-14 -3.1805546814631764e-15 ;
createNode scaleConstraint -n "L_Leg_FK_Jnt_01_scaleConstraint1" -p "L_Leg_FK_Jnt_01";
	rename -uid "E603990E-49D1-2C03-CA24-FE886D5451CD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_FK_ctrl_01W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 1 1.0000000000000002 0.99999999999999978 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Leg_FK_Jnt_01_parentConstraint2" -p "L_Leg_FK_Jnt_01";
	rename -uid "4BCBF928-456A-F769-8339-75A311495F0D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_FK_ctrl_01W0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.6167622796103842e-15 3.5527136788005009e-15 
		3.5527136788005009e-15 ;
	setAttr ".tg[0].tor" -type "double3" 1.8144983410289668e-12 -4.8453762725420748e-15 
		5.2677936911739486e-15 ;
	setAttr ".lr" -type "double3" -1.8065550590712775e-12 3.180554681463667e-15 9.5416640443904998e-15 ;
	setAttr ".rst" -type "double3" -0.58341163857351397 -0.022772509904753768 0.023409678479495502 ;
	setAttr ".rsrr" -type "double3" -1.8065550590712775e-12 3.180554681463667e-15 9.5416640443904998e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Pelvis_Jnt_parentConstraint1" -p "Pelvis_Jnt";
	rename -uid "FE715E9B-4CC1-6F75-D1DC-77AEF947BFF4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Pelvis_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 6.6174449004242214e-23 -0.14501964200800099 -1.1032841307212493e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Pelvis_Jnt_scaleConstraint1" -p "Pelvis_Jnt";
	rename -uid "745F2C6B-4851-6FDD-A79D-3790272DB6F7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Pelvis_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr -k on ".w0";
createNode transform -n "Mesh_Grp" -p "GolemRig";
	rename -uid "16C69E92-4B53-E5CA-A193-2897555CAEDC";
createNode transform -n "Golem_Mesh" -p "Mesh_Grp";
	rename -uid "DB2CA09C-413E-288E-C845-90B2322EBD26";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "Golem_MeshShape" -p "Golem_Mesh";
	rename -uid "23A8020F-43D3-EF06-E111-039439067609";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.71487604081630707 0.3757302463054657 ;
	setAttr ".uvst[0].uvsn" -type "string" "UVMap";
	setAttr ".cuvs" -type "string" "UVMap";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "Attribute";
	setAttr ".clst[0].clsn" -type "string" "Attribute";
	setAttr ".vcs" 2;
createNode mesh -n "Golem_MeshShapeOrig" -p "Golem_Mesh";
	rename -uid "C156A2B7-498E-A84B-02DC-63A2E8BA7ACA";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "UVMap";
	setAttr -s 593 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.80830735 0.00087413937 0.91990411
		 0.0022275299 0.51340979 0.0034231693 0.5312233 0.0038256198 0.41239733 0.0041959435
		 0.51312405 0.0041959435 0.47877496 0.0043246895 0.44526103 0.0046294481 0.39385498
		 0.0053236037 0.42713451 0.0056569129 0.49423069 0.0057696253 0.46015492 0.0060744435
		 0.769319 0.0075838938 0.53514808 0.0082427412 0.54648912 0.0082640201 0.55847621
		 0.0082795173 0.56935841 0.0082928687 0.58139515 0.0083159953 0.59530872 0.0083361417
		 0.60743678 0.0083484799 0.62059009 0.0083772093 0.63374352 0.0083868057 0.84714746
		 0.008395575 0.98842251 0.0085203499 0.15557234 0.011401176 0.65547872 0.014026081
		 0.72451842 0.014026081 0.24728887 0.025629789 0.53512251 0.025679722 0.54646355 0.025701001
		 0.5584507 0.025716379 0.5693329 0.02572979 0.58136964 0.025752977 0.59528327 0.025773063
		 0.60741138 0.025785401 0.6205647 0.025814131 0.63371813 0.025823787 0.28854543 0.029306054
		 0.54881603 0.029742375 0.56294292 0.030776754 0.53828436 0.03111054 0.57707405 0.031732276
		 0.59120935 0.032605961 0.6053592 0.033202901 0.61951315 0.033718243 0.63367116 0.034154728
		 0.066358805 0.035840183 0.64400399 0.036607638 0.4125582 0.03845866 0.5132851 0.03845866
		 0.47893596 0.038587525 0.51340979 0.038740292 0.44542202 0.038892165 0.0625 0.0390625
		 0.5312233 0.039142802 0.45308039 0.039328471 0.43821391 0.039495483 0.46794701 0.039495483
		 0.39401585 0.039586261 0.42299172 0.039897695 0.4831692 0.039897695 0.42729568 0.03991963
		 0.49439162 0.040032402 0.46031597 0.040337041 0.4081777 0.040494815 0.49798334 0.040494815
		 0.39445999 0.041316286 0.51170099 0.041316286 0.59046942 0.04683806 0.0234375 0.046875
		 0.53365469 0.048593715 0.5619399 0.0500644 0.61854821 0.05108805 0.90658963 0.051467054
		 0.72299683 0.052800357 1.000023841858 0.054150447 0.64679515 0.054476455 0.89251649
		 0.054568321 0.65441966 0.059879631 0.7163372 0.060943216 0.60388559 0.061541572 0.57581675
		 0.064546421 0.54694128 0.065797642 0.6318332 0.065797642 0.55221301 0.068737052 0.45308039
		 0.069054082 0.56635445 0.069112487 0.63707012 0.069188669 0.43821391 0.069221094
		 0.46794701 0.069221094 0.58049625 0.069408901 0.62292612 0.069413811 0.60878223 0.069559567
		 0.42299172 0.069623187 0.4831692 0.069623187 0.59463865 0.069623187 0.4081777 0.070220307
		 0.49798334 0.070220307 0.54177189 0.070600629 0.39445999 0.071041659 0.51170099 0.071041659
		 0.64749408 0.071163513 0.41302952 0.074735299 0.42790088 0.074831858 0.4018105 0.074852005
		 0.4427816 0.074921325 0.45767173 0.075003639 0.4725942 0.075061455 0.48752636 0.075112358
		 0.50246775 0.075156167 0.39583775 0.075376168 0.51323926 0.075376168 0.53171653 0.076457039
		 0.51417428 0.077316418 0.59456301 0.083873719 0.56632602 0.086518198 0.53797013 0.088290364
		 0.62282747 0.088742107 0.65111327 0.088892654 0.90022445 0.089732639 0.80735338 0.092330009
		 1.000023841858 0.0925989 0.71262002 0.093552679 0.6645261 0.096246928 0.75936997
		 0.096649587 0.85523677 0.097649455 0.58035719 0.097828999 0.73071504 0.099278808
		 0.55225122 0.10048757 0.88383067 0.10087565 0.60817528 0.10244983 0.41316512 0.10526456
		 0.63689661 0.10536069 0.42803654 0.105361 0.40194592 0.10538115 0.44291726 0.10545059
		 0.45780721 0.1055329 0.47272968 0.10559084 0.48766184 0.10564162 0.50260311 0.10568531
		 0.39597341 0.10590543 0.51337481 0.10590543 0.53171653 0.10619296 0.51417428 0.10705222
		 0.29926032 0.11625859 0.58666235 0.11667421 0.43864116 0.11750375 0.61496729 0.11946467
		 0.41036004 0.119857 0.38196877 0.12133645 0.55829573 0.12138489 0.64339572 0.12138489
		 0.5299291 0.12138495 0.49851656 0.12226447 0.52739573 0.12226447 0.49857515 0.12245009
		 0.5274542 0.12245009 0.46687213 0.12266818 0.49517345 0.12311187 0.77280354 0.1238941
		 0.84123802 0.12460777 0.90438294 0.12830067 0.60084563 0.1306825 0.99781716 0.13098405
		 0.4242824 0.13131998 0.80693036 0.13291138 0.62901968 0.13348606 0.39613193 0.13368885
		 0.75781226 0.13415718 0.57292825 0.1351476 0.85601211 0.13518125 0.4520694 0.13623217
		 0.54411256 0.13790086 0.48077762 0.1394425 0.80681491 0.14397731 0.25960964 0.14586097
		 0.82244676 0.14802042 0.0234375 0.1484375 0.86167586 0.14939237 0.16343543 0.14995322
		 0.78330153 0.150929 0.067261159 0.15404543 0.0703125 0.15625 0.30409294 0.15852554
		 0.023237452 0.16667305 0.98361599 0.17587315 0.91484952 0.17822312 0.91285193 0.17905062
		 0.73332739 0.18257031 0.92125666 0.18312177 0.99029648 0.18312177 0.87042975 0.2210224
		 0.77736187 0.22284716 0.89776862 0.22860578 0.99135542 0.22897545 0.92943788 0.23003867
		 0.82406229 0.23041996 0.75034148 0.23149619 0.5299291 0.23414645 0.64339584 0.23414645
		 0.38029349 0.23434231 0.49851668 0.23540971 0.52739573 0.23540977 0.49857515 0.23559533
		 0.52745432 0.23559533 0.49349809 0.23611785 0.54320538 0.24190387 0.63011962 0.24190387
		 0.39342228 0.24231797 0.4801358 0.24367796 0.55754244 0.2480844 0.61578244 0.2480844
		 0.40763244 0.24872872 0.46573821 0.2496402 0.30230534 0.25012434 0.57227451 0.2514886
		 0.6010502 0.2514886 0.58666247 0.25178161 0.85933697 0.25209081 0.42227995 0.25236988
		 0.45098931 0.2528204 0.43663171 0.25289488 0.78966421 0.25345683 0.2604056 0.25538206
		 0.030332044 0.2580142 0.82465166 0.26048264 0.16699538 0.26065344 0.93315506 0.26264837
		 0.87057227 0.26297727 0.77886415 0.26477531 0.98124897 0.26534256 0.073423922 0.2659339
		 0.3125 0.2734375 0.30357957 0.27379471 0.8249802 0.27723998 0.023499874 0.28161794
		 0.030220821 0.28161794 0.45600381 0.28297362 0.79144371 0.28297362 0.86023885 0.28297362
		 0.94659597 0.28297362 0.90341735 0.28317198 0.49777025 0.2834855 0.57914507 0.2834855
		 0.66485703 0.2834855 0.7496773 0.2834855 0.62200105 0.28350773 0.16865252 0.29161561
		 0.24071439 0.30142695 0.096789926 0.30279246;
	setAttr ".uvst[0].uvsp[250:499]" 0.16905528 0.3340793 0.25927627 0.33819661
		 0.078929022 0.33990762 0.90341735 0.37958452 0.62200105 0.38012466 0.43764976 0.39133117
		 0.80979776 0.39133117 0.83208764 0.39133117 0.97474712 0.39133117 0.52218741 0.39267328
		 0.56490892 0.39267328 0.67909318 0.39267328 0.72526008 0.39267328 0.25776678 0.4138467
		 0.081873432 0.41551557 0.16989994 0.42311257 0.304093 0.43520668 0.3125 0.4375 0.021297758
		 0.43775061 0.035961643 0.43775061 0.43668225 0.45563647 0.81076527 0.45563647 0.81376493
		 0.45563647 0.99306983 0.45563647 0.90341735 0.45664647 0.62200105 0.45743701 0.23957033
		 0.45791733 0.10090311 0.45923296 0.26529956 0.46834436 0.53297263 0.46848688 0.53358632
		 0.46848688 0.71041578 0.46848688 0.71447492 0.46848688 0.075223684 0.47014466 0.17086762
		 0.47377214 0.60062134 0.48051918 0.29685268 0.484375 0.296875 0.484375 0.421875 0.484375
		 0.421875 0.484375 0.69958764 0.4868291 0.49926481 0.50296652 0.15097818 0.50507891
		 0.18576591 0.50611722 0.74602115 0.50998485 0.45577022 0.53336668 0.18548621 0.58250308
		 0.18559818 0.58250308 0.21246292 0.58250308 0.21257488 0.58250308 0.7418831 0.5990482
		 0.21142584 0.60570502 0.21153782 0.60570502 0.18751419 0.60590744 0.18762614 0.60590744
		 0.70705515 0.60966802 0.06467554 0.61626709 0.064665198 0.61636913 0.296875 0.6171875
		 0.296875 0.6171875 0.4140625 0.6171875 0.4140625 0.6171875 0.087774739 0.62054509
		 0.47420272 0.62061173 0.087764479 0.62064707 0.11461353 0.62326932 0.11460327 0.62337142
		 0.13783592 0.62363058 0.13782561 0.62373269 0.51745176 0.62494195 0.61482167 0.62592447
		 0.40068042 0.6282419 0.400684 0.62824404 0.39523205 0.6283927 0.39523423 0.62839609
		 0.30647022 0.63214278 0.30647206 0.63215059 0.31999838 0.63217795 0.31999522 0.63218981
		 0.40041068 0.63278127 0.40041217 0.63278168 0.31075937 0.63287222 0.31075197 0.63287258
		 0.39539111 0.63287514 0.39539742 0.63287884 0.31575537 0.63288391 0.31574854 0.63289207
		 0.0050504208 0.71776444 0.0050401241 0.71786642 0.22537182 0.72220653 0.2252598 0.72220659
		 0.1778938 0.72322881 0.17800583 0.72322881 0.37248841 0.72924411 0.37249491 0.72928637
		 0.2541233 0.72948253 0.25412363 0.72948867 0.17674536 0.73431051 0.1767351 0.73441249
		 0.063206032 0.73788738 0.06319575 0.73798937 0.3321372 0.74224138 0.33214509 0.74225545
		 0.41688952 0.74226373 0.41688833 0.74226606 0.11647716 0.74227965 0.1164669 0.74238175
		 0.37964061 0.74282253 0.37964118 0.74282396 0.2948674 0.74287117 0.29488525 0.74287283
		 0.37247688 0.75128949 0.37243098 0.7513361 0.25415248 0.7514661 0.25415319 0.75147003
		 0.82033789 0.75896817 0.82028532 0.75900304 0.86106759 0.7591908 0.86101502 0.75921512
		 0.34712279 0.75947046 0.34711498 0.75947231 0.27971971 0.75986481 0.27972484 0.75988615
		 0.32549062 0.7640779 0.32548901 0.76408166 0.41022834 0.76408595 0.41022629 0.7640869
		 0.0038526729 0.76436764 0.38689643 0.76445663 0.38689494 0.76446354 0.30212066 0.76446825
		 0.30211908 0.76446903 0.0038424209 0.7644695 0.21122196 0.7668547 0.21133405 0.7668547
		 0.19325899 0.76724243 0.19337104 0.76724243 0.01993861 0.77085632 0.019928306 0.77095848
		 0.16875637 0.78042668 0.16874605 0.78052866 0.15200162 0.78354061 0.15199134 0.78364271
		 0.21266665 0.78384417 0.21255456 0.78384423 0.19229625 0.78456104 0.19240832 0.78456104
		 0.41239446 0.79038686 0.41241065 0.79044008 0.38526148 0.79074425 0.38530004 0.79077297
		 0.075399771 0.79089993 0.075389519 0.79100209 0.80855691 0.79225934 0.8085131 0.79229724
		 0.095602177 0.7925657 0.87429255 0.79262418 0.87424856 0.7926451 0.095591918 0.79266781
		 0.16006351 0.79329586 0.27998382 0.79332471 0.280857 0.79339063 0.20023827 0.79346359
		 0.20197123 0.79380322 0.15833072 0.793971 0.31532615 0.79846072 0.41678405 0.79846442
		 0.31618816 0.79860365 0.38040158 0.79894769 0.41755024 0.79900467 0.37964293 0.79921842
		 0.081317194 0.79929316 0.080876008 0.79994643 0.78598666 0.79998732 0.80296558 0.79998958
		 0.78600001 0.80000001 0.80299997 0.80000001 0.74400002 0.801 0.74400002 0.801 0.759
		 0.801 0.759 0.801 0.045580201 0.80397832 0.8088603 0.80444229 0.80881917 0.80447996
		 0.87501246 0.80480945 0.87497139 0.80483019 0.04520838 0.80513352 0.80500001 0.815
		 0.80524117 0.81505167 0.78600001 0.81800002 0.78604394 0.81805712 0.74400002 0.82099998
		 0.74400002 0.82099998 0.75999999 0.82099998 0.75999999 0.82099998 0.89177996 0.82344729
		 0.89174384 0.82346368 0.90390313 0.82487148 0.90386736 0.82488489 0.79347336 0.82566249
		 0.79343778 0.82570422 0.81875283 0.82780415 0.81871796 0.82783937 0.86789632 0.82807291
		 0.86786145 0.82809544 0.66021794 0.82825428 0.66019398 0.82835287 0.63329166 0.82868087
		 0.6333465 0.82875216 0.78168839 0.82876647 0.78165376 0.82881141 0.59024364 0.83006656
		 0.59013343 0.8300792 0.70013881 0.83043635 0.73855275 0.83043635 0.55161214 0.83113438
		 0.55173463 0.83115321 0.73034048 0.83191121 0.69605088 0.83213472 0.46713251 0.83388799
		 0.46752125 0.83412951 0.49998528 0.8373853 0.49999997 0.83741724 0.93721348 0.83840334
		 0.93718117 0.83840823 0.7519632 0.8478322 0.75193346 0.84788465 0.86721593 0.8660993
		 0.86719078 0.86612225 0.82363558 0.86968505 0.8236112 0.86971903 0.93664938 0.86991918
		 0.93662518 0.86992443 0.89087075 0.8746354 0.89084762 0.87465215 0.90300196 0.87573659
		 0.90297925 0.8757503 0.80003977 0.88204318 0.80001855 0.88208318 0.75510657 0.88277346
		 0.75508589 0.88282514 0.78819752 0.88483447 0.78817713 0.88487744 0.87425196 0.89024282
		 0.87423301 0.89026392 0.81558436 0.8950752 0.81556672 0.89511144 0.76605248 0.89627218
		 0.76622528 0.89628613 0.76621294 0.89630437;
	setAttr ".uvst[0].uvsp[500:592]" 0.80363232 0.89918059 0.80365855 0.89919853
		 0.80365533 0.89920032 0.8738364 0.90241671 0.87382072 0.90243793 0.81549525 0.90724146
		 0.81548047 0.90727758 0.24452101 0.92723322 0.24393909 0.92724591 0.81222522 0.92733192
		 0.22705179 0.92746782 0.13235617 0.92763233 0.13325004 0.92763549 0.22794573 0.92780006
		 0.81511235 0.92877841 0.35144949 0.93059713 0.3520239 0.9308182 0.44152611 0.93119955
		 0.44208446 0.93141931 0.35759756 0.93207002 0.35815439 0.93212366 0.86253375 0.93463838
		 0.11617002 0.9346621 0.86252612 0.93466246 0.11762826 0.93481213 0.0074345097 0.93617636
		 0.0089247823 0.93785483 0.82639152 0.93855494 0.82638496 0.93858814 0.80373842 0.93937218
		 0.80377585 0.93939161 0.80378026 0.93939525 0.81504333 0.9403255 0.81222522 0.94036615
		 0.76678711 0.9416241 0.76676911 0.94162679 0.76663309 0.94171721 0.83385825 0.94411337
		 0.8338868 0.94412398 0.76780701 0.94448644 0.76779544 0.94452649 0.76205993 0.94592392
		 0.53538811 0.94892973 0.53562468 0.94893754 0.76317847 0.94999558 0.52787876 0.95091224
		 0.52786821 0.95097417 0.60864657 0.95141369 0.6086064 0.95152611 0.67756402 0.95156306
		 0.67758071 0.95161194 0.60588872 0.95184708 0.60592216 0.95191991 0.68779403 0.95259696
		 0.45205253 0.95295334 0.4521347 0.95302022 0.69605088 0.95622659 0.6543799 0.9901464
		 0.6543833 0.99017465 0.74269378 0.99238485 0.62820393 0.9924379 0.62818182 0.99248642
		 0.74302423 0.99250108 0.26403767 0.99293315 0.26447663 0.99296397 0.55392301 0.99302995
		 0.55397558 0.99309975 0.14987212 0.99326694 0.20926619 0.99326694 0.15103571 0.99343467
		 0.21042971 0.99343467 0.58150411 0.99344611 0.58150125 0.99350679 0.71166641 0.99375331
		 0.71167767 0.99376297 0.33146328 0.99442941 0.33189893 0.99460667 0.42703146 0.9948678
		 0.47923258 0.99489707 0.47917444 0.99495131 0.42648384 0.99510121 0.37439033 0.99544811
		 0.37384114 0.99550873 0.76183569 0.99772984 0.76171851 0.99775863 0.50576812 0.99778217
		 0.83632398 0.99780476 0.83633488 0.99781209 0.50572735 0.9978416 0.095126383 0.99970543
		 0.026938193 1.00011873245 0.097501054 1.0001449585 0.029325351 1.0015165806;
	setAttr ".cuvs" -type "string" "UVMap";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "Attribute";
	setAttr -s 984 ".clst[0].clsp";
	setAttr ".clst[0].clsp[0:124]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[125:249]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[250:374]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[375:499]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[500:624]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[625:749]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[750:874]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr ".clst[0].clsp[875:983]" 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 282 ".vt";
	setAttr ".vt[0:165]"  -0.92915154 6.60661745 0.72790623 -1.33998823 6.35047674 0.61128378
		 -0.88502461 5.44736528 0.81271362 -1.28232598 5.49371958 0.57622433 -0.63478696 6.64651823 -0.57400894
		 -0.79543167 6.32025385 -0.67755365 -1.29761088 6.46430063 -0.26153994 -0.85889244 6.7802062 -0.25433111
		 -0.83766639 5.17338228 -0.25539398 -1.18260992 5.46264076 -0.19742012 -0.77578783 5.65334129 -0.61799526
		 -0.61160022 5.26658678 -0.49987984 2.3841858e-07 6.60661745 0.72790623 1.7881393e-07 5.26470375 0.94389725
		 2.9802322e-07 6.73876429 -0.66047049 2.9802322e-07 6.36361074 -0.81309605 3.2782555e-07 6.84962416 -0.32708263
		 2.3841858e-07 5.021697044 -0.32708263 2.9802322e-07 5.57831526 -0.79068041 2.3841858e-07 5.13255692 -0.66047049
		 -0.56112444 6.3870554 0.73045015 -0.56112432 7.50183964 0.59761763 2.3841858e-07 6.34048462 0.73590708
		 2.9802322e-07 7.67619085 0.57859182 -0.56112444 6.42095947 1.014987469 -0.56112438 7.53574371 0.88215494
		 2.3841858e-07 6.37438869 1.020444393 2.9802322e-07 7.71009493 0.86312914 -0.27995241 6.36807156 0.73267031
		 -0.28801417 7.63964462 0.58404016 -0.27995241 6.40197563 1.017207146 -0.28801417 7.6735487 0.86857748
		 -0.41893673 6.50668812 0.71611834 -0.42981499 7.61243916 0.87429285 -0.42981493 7.57853508 0.58975601
		 -0.41893673 6.54059219 1.00065517426 -0.14230418 7.67329979 0.5801897 -0.14028096 6.51287842 1.004034996
		 -0.14028096 6.47897434 0.71949768 -0.14230412 7.70720387 0.86472702 -0.56158608 6.38986921 0.72886562
		 -0.00046139956 6.34329844 0.73432255 -0.56158614 6.42377377 1.013402939 -0.00046133995 6.37720299 1.018859386
		 -0.28041393 6.37088537 0.7310853 -0.28041399 6.40478992 1.015622616 -0.41939837 6.50950241 0.71453333
		 -0.41939843 6.54340649 0.99907017 -0.14074254 6.51569271 1.0024499893 -0.1407426 6.48178864 0.71791315
		 -0.42130488 6.1956377 0.74250746 -0.52478188 6.21458006 0.74025011 -0.00046133995 6.23605871 1.026268005
		 -0.00046139956 6.20215464 0.74173069 -0.14074254 6.23468781 1.026431561 -0.52478194 6.24848413 1.024787426
		 -0.1407426 6.20078373 0.74189425 -0.28102368 6.19860172 0.74215412 -0.42130494 6.22954178 1.027044773
		 -0.28102374 6.2325058 1.026691437 -1.034762383 5.57538509 -0.023049355 -1.048833013 6.29182529 -0.071553707
		 -1.11866081 5.58032036 0.52390766 -1.14600682 6.28881645 0.54514122 -1.85830557 6.49212837 0.62215757
		 -1.80466938 5.36254311 0.589818 -1.70166564 6.49692726 -0.3608079 -1.67033911 5.35467339 -0.28213358
		 -3.089262486 5.72293472 -0.25224638 -3.14182663 6.097315788 -0.29290676 -3.20512271 6.097101212 0.14305592
		 -3.14488244 5.72625494 0.13425016 -0.3545922 2.80526495 0.37867808 -0.81223083 3.082605362 0.26892781
		 -0.35459217 2.79284573 -0.48373055 -0.77234471 3.20922136 -0.36465025 -0.31522268 3.73378038 0.50891423
		 -0.41491872 3.83424187 0.30558348 -0.66701174 3.52816772 0.27989197 -0.42107081 3.45472646 0.52832317
		 -0.43677565 3.6052835 -0.48930001 -0.6976071 3.63196158 -0.29027534 -0.44740629 3.94716954 -0.13083291
		 -0.31179264 3.85223436 -0.35936165 8.9406967e-08 2.78589845 0.42724586 1.4901161e-07 2.72800732 -0.49391413
		 1.1920929e-07 3.80353475 0.61027002 1.4901161e-07 3.95516586 0.38223433 1.1920929e-07 3.53150558 0.63150668
		 1.7881393e-07 3.56136703 -0.54289579 1.7881393e-07 4.031986237 -0.16830778 1.7881393e-07 3.93115163 -0.42904115
		 -0.48498827 3.35672283 -0.10644197 -0.70050389 3.40885329 -0.12554741 -0.48720419 3.35625768 0.12407708
		 -0.69991994 3.40578699 0.13452339 -1.1622057 2.92567539 0.34383106 -0.39369929 2.79507303 0.31628513
		 -1.16374564 2.9337616 -0.3419416 -0.38785577 2.79629946 -0.29156327 -0.94701111 1.40104985 -0.14386106
		 -1.24728465 1.40754151 -0.1692878 -1.24654627 1.41001177 0.17683136 -0.9489308 1.4043529 0.16292846
		 -0.93494147 1.42102242 -0.10681903 -1.24361038 1.44997334 -0.1232115 -0.93718708 1.3911289 0.13030601
		 -1.2427249 1.41392446 0.14402604 -1.36165857 1.18469894 0.19518608 -0.87452644 1.14835501 0.17331147
		 -1.36307049 1.24217355 -0.23088253 -0.87094611 1.19601512 -0.2047472 -1.2115438 -0.032773614 -0.19297725
		 -1.26144648 -0.035596848 -0.19759122 -1.26136041 -0.042224646 -0.14033309 -1.21191108 -0.038502932 -0.14220747
		 -0.40174609 3.70251513 0.3480947 -0.40477014 3.69771624 -0.15117455 1.4901161e-07 3.7027235 0.48159337
		 1.7881393e-07 3.69957566 -0.37298608 -0.66866863 4.71349669 -0.21549511 -0.53520072 4.72607803 0.57698917
		 1.7881393e-07 4.60844326 0.84149051 2.0861626e-07 4.60337973 -0.39690685 -0.84043217 5.31631565 -0.22456503
		 -0.82882917 5.43678045 0.67809343 1.7881393e-07 5.33319521 0.80376625 2.3841858e-07 5.32578421 -0.55370808
		 0.92915207 6.60661745 0.72790623 1.33998883 6.35047674 0.61128378 0.88502502 5.44736528 0.81271362
		 1.28232646 5.49371958 0.57622433 0.63478756 6.64651823 -0.57400846 0.79543233 6.32025385 -0.67755318
		 1.29761136 6.46430063 -0.26153946 0.8588931 6.7802062 -0.25433111 0.83766687 5.17338228 -0.25539398
		 1.18261051 5.46264076 -0.19742012 0.77578831 5.65334034 -0.61799526 0.61160076 5.26658678 -0.49987984
		 0.56112492 6.3870554 0.73045063 0.56112498 7.50184011 0.59761763 0.56112492 6.42095947 1.014987469
		 0.56112498 7.53574419 0.88215494 0.28056258 6.3870554 0.73045063 0.28801477 7.63964462 0.58404016
		 0.28056258 6.42095947 1.014987469 0.28801477 7.6735487 0.86857748 0.42084303 6.55033398 0.71083689
		 0.42981553 7.61243963 0.87429285 0.42981553 7.57853556 0.58975601 0.42084301 6.58423805 0.99537373
		 0.14230478 7.67329979 0.5801897 0.13583905 6.55702066 0.99868679 0.13583905 6.52311659 0.71414948
		 0.14230478 7.70720387 0.86472702 0.56066328 6.38986921 0.72886562 0.56066328 6.42377377 1.013402939
		 0.28010097 6.38986921 0.72886562 0.28010094 6.42377377 1.013402939 0.42038143 6.55314827 0.70925188
		 0.42038143 6.58705235 0.9937892 0.13537741 6.55983543 0.99710178 0.13537741 6.52593136 0.71256495
		 0.42038217 6.1956377 0.74250746 0.52385914 6.21458006 0.74025011;
	setAttr ".vt[166:281]" 0.1398198 6.23468781 1.026431561 0.52385914 6.24848413 1.024787903
		 0.1398198 6.20078373 0.74189425 0.28010097 6.19860172 0.74215412 0.42038214 6.22954178 1.027044773
		 0.28010094 6.2325058 1.026691437 0.9977687 5.61278725 0.037813663 1.011883378 6.32922745 -0.010677814
		 1.081171513 5.61772251 0.58484602 1.10849822 6.32621908 0.60610485 1.82072699 6.529531 0.68376637
		 1.76712 5.39994526 0.65137815 1.66497779 6.53432941 -0.29934025 1.63357997 5.39207554 -0.22069454
		 3.052475452 5.76033688 -0.18952179 3.10507679 6.13471794 -0.23013401 3.16797805 6.13450336 0.20588541
		 3.10774589 5.76365662 0.1970253 3.1803093 5.80883121 -0.22709656 3.22928643 6.086277008 -0.23219442
		 3.10210991 6.086117744 0.068466187 3.068791628 5.81260014 0.039933205 3.68295979 5.54954243 -0.23252678
		 3.72196031 6.34638023 -0.27867842 3.42009878 6.30644321 0.45446253 3.39358735 5.58292675 0.40731716
		 4.74908829 5.77580166 0.40835047 4.80959845 6.11854601 0.40203333 4.6688385 6.10136747 0.78047943
		 4.65072298 5.79016209 0.7550993 0.35459244 2.80526495 0.37867832 0.81223106 3.082605362 0.26892805
		 0.35459244 2.79284573 -0.48373055 0.77234501 3.20922136 -0.36465025 0.31522292 3.73378038 0.50891423
		 0.41491902 3.83424211 0.30558372 0.66701198 3.52816725 0.27989197 0.42107108 3.45472646 0.52832317
		 0.43677604 3.6052835 -0.48930001 0.69760746 3.63196135 -0.29027534 0.44740665 3.94716954 -0.13083291
		 0.311793 3.85223436 -0.35936165 0.48498857 3.35672283 -0.10644197 0.70050412 3.40885353 -0.12554741
		 0.48720446 3.35625768 0.12407708 0.6999203 3.40578699 0.13452363 1.16220582 2.92567539 0.34383106
		 0.39369953 2.79507303 0.31628513 1.16374588 2.9337616 -0.3419416 0.38785601 2.79629946 -0.29156327
		 0.94701123 1.40104985 -0.14386106 1.24728465 1.40754151 -0.16928768 1.24654627 1.41001153 0.17683148
		 0.94893086 1.40435278 0.16292858 0.93494165 1.4210223 -0.10681903 1.24361038 1.44997334 -0.12321138
		 0.93718714 1.3911289 0.13030601 1.2427249 1.41392422 0.14402616 1.36165881 1.18469882 0.19518614
		 0.87452656 1.14835489 0.17331159 1.36307073 1.24217319 -0.23088241 0.87094629 1.19601512 -0.2047472
		 1.2115438 -0.032773733 -0.19297716 1.26144648 -0.035596967 -0.19759113 1.26136041 -0.042224884 -0.140333
		 1.21191108 -0.038503051 -0.14220735 0.40174636 3.70251536 0.3480947 0.40477046 3.69771624 -0.15117455
		 0.6686691 4.71349669 -0.21549511 0.53520107 4.72607803 0.57698917 0.84043264 5.31631565 -0.22456503
		 0.82882965 5.43678045 0.67809343 -3.21275878 6.084730148 -0.15473318 -3.26105595 5.80728483 -0.16433001
		 -3.16217065 5.8074441 0.14678526 -3.12636137 6.080961227 0.12144899 -3.71276212 6.34402037 -0.20653009
		 -3.7473371 5.54718208 -0.25608444 -3.51442623 5.5871191 0.50178671 -3.48367691 6.31063557 0.45728922
		 -4.83348799 6.11776018 0.33321857 -4.89315701 5.77501631 0.32134342 -4.78792477 5.7921958 0.71116543
		 -4.76754475 6.10340023 0.68756533 4.77344036 5.77060795 0.37325191 4.82934093 6.11335182 0.34924078
		 4.80738258 6.096173286 0.75241899 4.78254414 5.78496742 0.73356771 5.43044662 5.73535156 0.40469074
		 5.48615026 6.14889908 0.37450647 5.45965576 6.12817192 0.8609724 5.42968655 5.75267792 0.8382268
		 5.075334549 5.6653738 0.29571962 5.19554234 5.66405487 0.30677271 5.2705884 6.22076607 0.26616573
		 5.15012121 6.21898842 0.25585175 5.11473274 6.19128036 0.90656328 5.23497725 6.19284916 0.92100239
		 5.19457054 5.68739414 0.89040041 5.07456398 5.68902206 0.87609863 -4.84242296 6.11256647 0.37325191
		 -4.89832354 5.7698226 0.34924078 -4.87636471 5.78700113 0.75241899 -4.85152721 6.09820652 0.73356771
		 -5.4994297 6.14782238 0.40469074 -5.55513334 5.73427534 0.37450647 -5.52863789 5.7550025 0.8609724
		 -5.49866962 6.13049603 0.8382268 -5.14431763 6.21780014 0.29571962 -5.26452541 6.21911907 0.30677271
		 -5.33957148 5.66240835 0.26616573 -5.21910429 5.664186 0.25585175 -5.18371487 5.69189405 0.90656328
		 -5.30396032 5.69032526 0.92100239 -5.26355362 6.1957798 0.89040041 -5.14354706 6.19415188 0.87609863;
	setAttr -s 501 ".ed";
	setAttr ".ed[0:165]"  8 9 0 9 10 0 10 11 0 11 8 0 9 6 0 6 5 0 5 10 0 1 3 0
		 3 2 0 2 0 0 0 1 0 0 7 0 7 6 0 6 1 0 8 2 0 3 9 0 7 4 0 4 5 0 7 16 0 16 14 0 14 4 0
		 2 13 0 13 12 0 12 0 0 12 16 0 5 15 0 15 18 0 18 10 0 18 19 0 19 11 0 19 17 0 17 8 0
		 14 15 0 17 13 0 152 145 0 145 144 0 144 154 0 154 152 0 32 35 0 35 24 0 24 20 0 20 32 0
		 33 34 0 34 21 0 21 25 0 25 33 0 39 36 0 36 29 0 29 31 0 31 39 0 38 37 0 37 30 0 30 28 0
		 28 38 0 29 34 0 33 31 0 30 35 0 32 28 0 22 26 0 26 37 0 38 22 0 27 23 0 23 36 0 39 27 0
		 46 40 0 40 42 0 42 47 0 47 46 0 49 44 0 44 45 0 45 48 0 48 49 0 44 46 0 47 45 0 41 49 0
		 48 43 0 43 41 0 50 58 0 58 55 0 55 51 0 51 50 0 56 54 0 54 59 0 59 57 0 57 56 0 59 58 0
		 50 57 0 53 52 0 52 54 0 56 53 0 47 58 0 59 45 0 48 54 0 52 43 0 40 51 0 55 42 0 46 50 0
		 44 57 0 49 56 0 41 53 0 62 60 0 60 61 0 61 63 0 63 62 0 67 66 0 66 61 0 60 67 0 66 64 0
		 64 63 0 64 65 0 65 62 0 65 67 0 64 70 0 70 71 0 71 65 0 67 68 0 68 69 0 69 66 0 71 68 0
		 69 70 0 80 81 0 81 82 0 82 83 0 83 80 0 81 78 0 78 77 0 77 82 0 73 75 0 75 74 0 74 72 0
		 72 73 0 72 79 0 79 78 0 78 73 0 80 74 0 75 81 0 79 76 0 76 77 0 79 88 0 88 86 0 86 76 0
		 74 85 0 85 84 0 84 72 0 84 88 0 82 90 0 90 91 0 91 83 0 91 89 0 89 80 0 86 87 0 87 77 0
		 89 85 0 94 92 0 92 93 0 93 95 0 95 94 0 99 98 0 98 93 0 92 99 0 98 96 0 96 95 0 96 97 0
		 97 94 0 97 99 0 96 102 0;
	setAttr ".ed[166:331]" 102 103 0 103 97 0 99 100 0 100 101 0 101 98 0 103 100 0
		 101 102 0 106 104 0 104 105 0 105 107 0 107 106 0 111 110 0 110 105 0 104 111 0 110 108 0
		 108 107 0 108 109 0 109 106 0 109 111 0 108 114 0 114 115 0 115 109 0 111 112 0 112 113 0
		 113 110 0 115 112 0 113 114 0 122 126 0 126 125 0 125 121 0 121 122 0 118 122 0 121 116 0
		 116 118 0 121 120 0 120 117 0 117 116 0 120 123 0 123 119 0 119 117 0 125 124 0 124 120 0
		 124 127 0 127 123 0 136 139 0 139 138 0 138 137 0 137 136 0 138 133 0 133 134 0 134 137 0
		 129 128 0 128 130 0 130 131 0 131 129 0 129 134 0 134 135 0 135 128 0 137 131 0 130 136 0
		 133 132 0 132 135 0 132 14 0 16 135 0 128 12 0 13 130 0 138 18 0 15 133 0 139 19 0
		 136 17 0 148 140 0 140 142 0 142 151 0 151 148 0 149 143 0 143 141 0 141 150 0 150 149 0
		 155 147 0 147 145 0 152 155 0 144 146 0 146 153 0 153 154 0 147 149 0 150 145 0 144 148 0
		 151 146 0 22 154 0 153 26 0 27 155 0 152 23 0 160 161 0 161 157 0 157 156 0 156 160 0
		 163 162 0 162 159 0 159 158 0 158 163 0 159 161 0 160 158 0 43 162 0 163 41 0 164 165 0
		 165 167 0 167 170 0 170 164 0 168 169 0 169 171 0 171 166 0 166 168 0 169 164 0 170 171 0
		 53 168 0 166 52 0 159 171 0 170 161 0 166 162 0 157 167 0 165 156 0 164 160 0 169 158 0
		 168 163 0 174 175 0 175 173 0 173 172 0 172 174 0 179 172 0 173 178 0 178 179 0 175 176 0
		 176 178 0 174 177 0 177 176 0 179 177 0 177 183 0 183 182 0 182 176 0 178 181 0 181 180 0
		 180 179 0 180 183 0 182 181 0 184 187 0 187 186 0 186 185 0 185 184 0 184 188 0 188 191 0
		 191 187 0 190 194 0 194 193 0 193 189 0 189 190 0 191 190 0 190 186 0 189 185 0 189 188 0
		 193 192 0 192 188 0 192 195 0 195 191 0 195 194 0 204 207 0 207 206 0;
	setAttr ".ed[332:497]" 206 205 0 205 204 0 206 201 0 201 202 0 202 205 0 197 196 0
		 196 198 0 198 199 0 199 197 0 197 202 0 202 203 0 203 196 0 205 199 0 198 204 0 201 200 0
		 200 203 0 200 86 0 88 203 0 196 84 0 85 198 0 207 91 0 90 206 0 204 89 0 201 87 0
		 210 211 0 211 209 0 209 208 0 208 210 0 215 208 0 209 214 0 214 215 0 211 212 0 212 214 0
		 210 213 0 213 212 0 215 213 0 213 219 0 219 218 0 218 212 0 214 217 0 217 216 0 216 215 0
		 216 219 0 218 217 0 222 223 0 223 221 0 221 220 0 220 222 0 227 220 0 221 226 0 226 227 0
		 223 224 0 224 226 0 222 225 0 225 224 0 227 225 0 225 231 0 231 230 0 230 224 0 226 229 0
		 229 228 0 228 227 0 228 231 0 230 229 0 122 235 0 235 237 0 237 126 0 118 232 0 232 235 0
		 232 233 0 233 234 0 234 235 0 233 119 0 123 234 0 234 236 0 236 237 0 127 236 0 238 241 0
		 241 240 0 240 239 0 239 238 0 238 242 0 242 245 0 245 241 0 244 248 0 248 247 0 247 243 0
		 243 244 0 245 244 0 244 240 0 243 239 0 243 242 0 247 246 0 246 242 0 246 249 0 249 245 0
		 249 248 0 266 269 0 269 268 0 268 267 0 267 266 0 250 253 0 253 252 0 252 251 0 251 250 0
		 27 26 0 153 155 0 147 146 0 151 149 0 141 140 0 148 150 0 143 142 0 22 23 0 36 38 0
		 28 29 0 39 37 0 33 35 0 30 31 0 20 21 0 34 32 0 24 25 0 264 257 0 257 256 0 256 263 0
		 263 264 0 250 258 0 258 265 0 265 253 0 259 254 0 254 257 0 264 259 0 256 255 0 255 260 0
		 260 263 0 254 255 0 265 262 0 262 252 0 262 261 0 261 251 0 261 258 0 259 258 0 261 260 0
		 260 259 0 263 262 0 265 264 0 280 273 0 273 272 0 272 279 0 279 280 0 266 274 0 274 281 0
		 281 269 0 275 270 0 270 273 0 280 275 0 272 271 0 271 276 0 276 279 0 270 271 0 281 278 0
		 278 268 0 278 277 0 277 267 0 277 274 0 275 274 0 277 276 0;
	setAttr ".ed[498:500]" 276 275 0 279 278 0 281 280 0;
	setAttr -s 984 ".n";
	setAttr ".n[0:165]" -type "float3"  -0.41966349 -0.87387884 -0.24539454 -0.78857863
		 -0.50513452 -0.35068896 -0.45139387 -0.22389606 -0.86377895 -0.35392916 -0.61854517
		 -0.70152408 -0.78857863 -0.50513452 -0.35068896 -0.84160143 0.38645443 -0.37730637
		 -0.43181747 0.17881955 -0.88405722 -0.45139387 -0.22389606 -0.86377895 -0.83445793
		 0.30222657 0.46080267 -0.78378415 -0.4719983 0.40360847 -0.32647827 -0.5200308 0.78929079
		 -0.32461879 0.65955728 0.67794305 -0.32461879 0.65955728 0.67794305 -0.35437828 0.90995198
		 -0.21541457 -0.84160143 0.38645443 -0.37730637 -0.83445793 0.30222657 0.46080267
		 -0.41966349 -0.87387884 -0.24539454 -0.32647827 -0.5200308 0.78929079 -0.78378415
		 -0.4719983 0.40360847 -0.78857863 -0.50513452 -0.35068896 -0.43181747 0.17881955
		 -0.88405722 -0.84160143 0.38645443 -0.37730637 -0.35437828 0.90995198 -0.21541457
		 -0.26941997 0.66340643 -0.69807208 -0.26941997 0.66340643 -0.69807208 -0.35437828
		 0.90995198 -0.21541457 5.0363486e-08 0.99332154 -0.11537895 6.7294252e-08 0.70266277
		 -0.71152312 -0.32461879 0.65955728 0.67794305 -0.32647827 -0.5200308 0.78929079 -6.8475217e-08
		 -0.60491925 0.79628676 -1.34903e-08 0.67786396 0.73518735 -0.35437828 0.90995198
		 -0.21541457 -0.32461879 0.65955728 0.67794305 -1.34903e-08 0.67786396 0.73518735
		 5.0363486e-08 0.99332154 -0.11537895 -0.45139387 -0.22389606 -0.86377895 -0.43181747
		 0.17881955 -0.88405722 4.53594e-08 0.16777855 -0.9858247 2.3864965e-08 -0.20336673
		 -0.97910267 -0.35392916 -0.61854517 -0.70152408 -0.45139387 -0.22389606 -0.86377895
		 2.3864965e-08 -0.20336673 -0.97910267 3.0040734e-09 -0.6719088 -0.74063396 -0.41966349
		 -0.87387884 -0.24539454 -0.35392916 -0.61854517 -0.70152408 3.0040734e-09 -0.6719088
		 -0.74063396 -4.3350081e-08 -0.99257851 -0.12160562 -0.43181747 0.17881955 -0.88405722
		 -0.26941997 0.66340643 -0.69807208 6.7294252e-08 0.70266277 -0.71152312 4.53594e-08
		 0.16777855 -0.9858247 -0.32647827 -0.5200308 0.78929079 -0.41966349 -0.87387884 -0.24539454
		 -4.3350081e-08 -0.99257851 -0.12160562 -6.8475217e-08 -0.60491925 0.79628676 0.092250742
		 0.63907611 -0.76359129 0.22636737 0.60560703 -0.76288784 0.042238936 -0.87926859
		 -0.47444975 0.037016373 -0.49821544 -0.86626279 -0.014376397 -0.54758596 -0.83662593
		 -0.023360949 -0.33763343 0.94098777 -0.35334891 -0.68750799 0.6344111 -0.34937719
		 -0.81854784 -0.45597708 -0.32939199 0.71880615 0.61222434 -0.32259575 0.55680674
		 -0.76543993 -0.68588048 0.31782398 -0.65464193 -0.68876463 0.46321341 0.55770648
		 -0.089431748 0.79774451 0.59632677 -0.092261523 0.63905054 -0.76361144 -0.22625434
		 0.60559547 -0.76293051 -0.22844405 0.7645607 0.60271066 -0.026516879 -0.55438113
		 -0.83184046 -0.022492215 -0.34641609 0.93781137 -0.04727808 -0.73671138 0.67455256
		 -0.044546857 -0.87398928 -0.48389906 -0.22844405 0.7645607 0.60271066 -0.22625434
		 0.60559547 -0.76293051 -0.32259575 0.55680674 -0.76543993 -0.32939199 0.71880615
		 0.61222434 -0.044546857 -0.87398928 -0.48389906 -0.04727808 -0.73671138 0.67455256
		 -0.023360949 -0.33763343 0.94098777 -0.014376397 -0.54758596 -0.83662593 0.062268399
		 -0.880611 -0.46973068 0.062659614 -0.74649298 0.66243631 -0.022492215 -0.34641609
		 0.93781137 -0.026516879 -0.55438113 -0.83184046 0.00020938081 0.79109818 0.61168921
		 -0.00021007557 0.62234616 -0.78274214 -0.092261523 0.63905054 -0.76361144 -0.089431748
		 0.79774451 0.59632677 0.034350399 0.74661434 -0.66436952 -0.757963 0.19870104 -0.62129712
		 -0.74394232 0.31583446 0.58889604 0.034478839 0.86958456 0.49257886 0.043671742 0.74596435
		 -0.66455245 0.02658117 0.37321338 -0.92736471 0.02462808 0.52798468 0.84889662 0.043964308
		 0.86698604 0.49638936 0.02658117 0.37321338 -0.92736471 0.034350399 0.74661434 -0.66436952
		 0.034478839 0.86958456 0.49257886 0.02462808 0.52798468 0.84889662 -0.032069344 0.31061843
		 -0.94999355 0.043671742 0.74596435 -0.66455245 0.043964308 0.86698604 0.49638936
		 -0.027114771 0.46342438 0.8857215 -0.058007538 -0.79156011 -0.60833198 -0.059198763
		 -0.65367043 0.75446028 -0.55476058 -0.51344287 0.6546886 -0.56238568 -0.62529022
		 -0.54104936 0.010832444 -0.77173179 -0.63585585 0.007267029 -0.63452375 0.77286917
		 0.011866896 -0.63331032 0.77380693 0.014282986 -0.77264279 -0.63468039 0.014282986
		 -0.77264279 -0.63468039 0.011866896 -0.63331032 0.77380693 -0.059198763 -0.65367043
		 0.75446028 -0.058007538 -0.79156011 -0.60833198 -0.0017139554 -0.7706396 -0.63726902
		 0.0016431157 -0.63263738 0.77444637 0.007267029 -0.63452375 0.77286917 0.010832444
		 -0.77173179 -0.63585585 0.02462808 0.52798468 0.84889662 0.034478839 0.86958456 0.49257886
		 -0.059198763 -0.65367043 0.75446028 0.011866896 -0.63331032 0.77380693 -0.027114771
		 0.46342438 0.8857215 0.043964308 0.86698604 0.49638936 0.007267029 -0.63452375 0.77286917
		 0.0016431157 -0.63263738 0.77444637 -0.74394232 0.31583446 0.58889604 -0.757963 0.19870104
		 -0.62129712 -0.56238568 -0.62529022 -0.54104936 -0.55476058 -0.51344287 0.6546886
		 0.043964308 0.86698604 0.49638936 0.02462808 0.52798468 0.84889662 0.011866896 -0.63331032
		 0.77380693 0.007267029 -0.63452375 0.77286917 -0.757963 0.19870104 -0.62129712 0.034350399
		 0.74661434 -0.66436952 -0.058007538 -0.79156011 -0.60833198 -0.56238568 -0.62529022
		 -0.54104936 0.034350399 0.74661434 -0.66436952 0.02658117 0.37321338 -0.92736471
		 0.014282986 -0.77264279 -0.63468039 -0.058007538 -0.79156011 -0.60833198 0.02658117
		 0.37321338 -0.92736471 0.043671742 0.74596435 -0.66455245 0.010832444 -0.77173179
		 -0.63585585 0.014282986 -0.77264279 -0.63468039 0.043671742 0.74596435 -0.66455245
		 -0.032069344 0.31061843 -0.94999355 -0.0017139554 -0.7706396 -0.63726902 0.010832444
		 -0.77173179 -0.63585585 0.034478839 0.86958456 0.49257886 -0.74394232 0.31583446
		 0.58889604 -0.55476058 -0.51344287 0.6546886 -0.059198763 -0.65367043 0.75446028
		 0.72781241 -0.47185746 0.4976342 0.72962153 -0.48373029 -0.48338112 0.7086243 0.48174897
		 -0.51552826 0.70444942 0.48814425 0.51523423 0.041976977 -0.74475855 -0.66601253
		 0.020575801 0.69683123 -0.71693993;
	setAttr ".n[166:331]" -type "float3"  0.7086243 0.48174897 -0.51552826 0.72962153
		 -0.48373029 -0.48338112 0.020575801 0.69683123 -0.71693993 0.016768115 0.70395726
		 0.71004432 0.70444942 0.48814425 0.51523423 0.7086243 0.48174897 -0.51552826 0.016768115
		 0.70395726 0.71004432 0.041002676 -0.72852933 0.68378639 0.72781241 -0.47185746 0.4976342
		 0.70444942 0.48814425 0.51523423 0.041002676 -0.72852933 0.68378639 0.041976977 -0.74475855
		 -0.66601253 0.72962153 -0.48373029 -0.48338112 0.72781241 -0.47185746 0.4976342 -0.78857863
		 -0.50513452 -0.35068896 -0.78378415 -0.4719983 0.40360847 -0.83445793 0.30222657
		 0.46080267 -0.84160143 0.38645443 -0.37730637 0.041002676 -0.72852933 0.68378639
		 0.016768115 0.70395726 0.71004432 -0.72674346 0.43497393 0.53164047 -0.64866573 -0.54938769
		 0.5266934 0.020575801 0.69683123 -0.71693993 0.041976977 -0.74475855 -0.66601253
		 -0.65205473 -0.56123471 -0.50974524 -0.7279247 0.42777959 -0.5358454 0.041976977
		 -0.74475855 -0.66601253 0.041002676 -0.72852933 0.68378639 -0.64866573 -0.54938769
		 0.5266934 -0.65205473 -0.56123471 -0.50974524 0.016768115 0.70395726 0.71004432 0.020575801
		 0.69683123 -0.71693993 -0.7279247 0.42777959 -0.5358454 -0.72674346 0.43497393 0.53164047
		 -0.65205473 -0.56123471 -0.50974524 -0.64866573 -0.54938769 0.5266934 -0.72674346
		 0.43497393 0.53164047 -0.7279247 0.42777959 -0.5358454 -0.31452346 0.27373165 -0.90892577
		 -0.79890138 0.43923274 -0.41089079 -0.61182821 0.75032675 -0.25035176 -0.30762419
		 0.66773075 -0.67786652 -0.79890138 0.43923274 -0.41089079 -0.82729578 0.30615652
		 0.47100934 -0.65437281 0.59786797 0.46297967 -0.61182821 0.75032675 -0.25035176 -0.8663007
		 -0.32349348 0.38062435 -0.84084481 -0.19685505 -0.50421035 -0.37116513 -0.67504829
		 -0.63760972 -0.40868878 -0.73114753 0.54625708 -0.40868878 -0.73114753 0.54625708
		 -0.43067011 0.03030451 0.90200049 -0.82729578 0.30615652 0.47100934 -0.8663007 -0.32349348
		 0.38062435 -0.31452346 0.27373165 -0.90892577 -0.37116513 -0.67504829 -0.63760972
		 -0.84084481 -0.19685505 -0.50421035 -0.79890138 0.43923274 -0.41089079 -0.65437281
		 0.59786797 0.46297967 -0.82729578 0.30615652 0.47100934 -0.43067011 0.03030451 0.90200049
		 -0.44556466 0.46763936 0.76340389 -0.44556466 0.46763936 0.76340389 -0.43067011 0.03030451
		 0.90200049 -2.501576e-08 -0.040395588 0.99918383 -1.9154314e-09 0.52737528 0.84963244
		 -0.40868878 -0.73114753 0.54625708 -0.37116513 -0.67504829 -0.63760972 -8.8310887e-09
		 -0.76415449 -0.64503318 -5.534601e-08 -0.76290458 0.64651102 -0.43067011 0.03030451
		 0.90200049 -0.40868878 -0.73114753 0.54625708 -5.534601e-08 -0.76290458 0.64651102
		 -2.501576e-08 -0.040395588 0.99918383 -0.30762419 0.66773075 -0.67786652 -0.61182821
		 0.75032675 -0.25035176 5.8299303e-08 0.90200311 -0.43172953 4.4749296e-08 0.69651645
		 -0.71754092 -0.31452346 0.27373165 -0.90892577 -0.30762419 0.66773075 -0.67786652
		 4.4749296e-08 0.69651645 -0.71754092 3.5508599e-08 0.16723664 -0.98591673 -0.65437281
		 0.59786797 0.46297967 -0.44556466 0.46763936 0.76340389 -1.9154314e-09 0.52737528
		 0.84963244 1.1431554e-08 0.82567281 0.56414932 -0.37116513 -0.67504829 -0.63760972
		 -0.31452346 0.27373165 -0.90892577 3.5508599e-08 0.16723664 -0.98591673 -8.8310887e-09
		 -0.76415449 -0.64503318 -0.79890138 0.43923274 -0.41089079 -0.84084481 -0.19685505
		 -0.50421035 -0.8663007 -0.32349348 0.38062435 -0.82729578 0.30615652 0.47100934 0.61330563
		 0.63893539 0.46434659 0.62552607 0.63854051 -0.44831163 -0.1849805 0.85394788 -0.48636934
		 -0.19441269 0.85061496 0.48852625 0.74693739 -0.0254365 -0.66440749 -0.63927948 0.32678676
		 -0.69608331 -0.1849805 0.85394788 -0.48636934 0.62552607 0.63854051 -0.44831163 -0.63927948
		 0.32678676 -0.69608331 -0.64774549 0.32204124 0.6904456 -0.19441269 0.85061496 0.48852625
		 -0.1849805 0.85394788 -0.48636934 -0.64774549 0.32204124 0.6904456 0.73040891 -0.021106593
		 0.68268389 0.61330563 0.63893539 0.46434659 -0.19441269 0.85061496 0.48852625 0.73040891
		 -0.021106593 0.68268389 0.74693739 -0.0254365 -0.66440749 0.62552607 0.63854051 -0.44831163
		 0.61330563 0.63893539 0.46434659 0.73040891 -0.021106593 0.68268389 -0.64774549 0.32204124
		 0.6904456 -0.60123193 -0.57615161 0.55368716 0.44797206 -0.70294952 0.55243367 -0.63927948
		 0.32678676 -0.69608331 0.74693739 -0.0254365 -0.66440749 0.45880967 -0.71078616 -0.53317624
		 -0.59509224 -0.57942915 -0.55689055 0.74693739 -0.0254365 -0.66440749 0.73040891
		 -0.021106593 0.68268389 0.44797206 -0.70294952 0.55243367 0.45880967 -0.71078616
		 -0.53317624 -0.64774549 0.32204124 0.6904456 -0.63927948 0.32678676 -0.69608331 -0.59509224
		 -0.57942915 -0.55689055 -0.60123193 -0.57615161 0.55368716 0.45880967 -0.71078616
		 -0.53317624 0.44797206 -0.70294952 0.55243367 -0.60123193 -0.57615161 0.55368716
		 -0.59509224 -0.57942915 -0.55689055 0.53340006 0.63545817 0.55828071 0.54541802 0.75117224
		 -0.37183255 -0.35890055 0.84781367 -0.39038733 -0.36701238 0.72177672 0.58680516
		 0.7424472 0.11553717 -0.65986603 -0.67660075 0.27061349 -0.68482083 -0.35890055 0.84781367
		 -0.39038733 0.54541802 0.75117224 -0.37183255 -0.67660075 0.27061349 -0.68482083
		 -0.6842984 0.092262931 0.72334176 -0.36701238 0.72177672 0.58680516 -0.35890055 0.84781367
		 -0.39038733 -0.6842984 0.092262931 0.72334176 0.72608274 -0.048799168 0.68587351
		 0.53340006 0.63545817 0.55828071 -0.36701238 0.72177672 0.58680516 0.72608274 -0.048799168
		 0.68587351 0.7424472 0.11553717 -0.65986603 0.54541802 0.75117224 -0.37183255 0.53340006
		 0.63545817 0.55828071 0.72608274 -0.048799168 0.68587351 -0.6842984 0.092262931 0.72334176
		 -0.53700513 -0.70701909 0.46016243 0.51300681 -0.7273922 0.45576799 -0.67660075 0.27061349
		 -0.68482083 0.7424472 0.11553717 -0.65986603 0.52317619 -0.60403901 -0.6011852 -0.53140485
		 -0.57588118 -0.62126464 0.7424472 0.11553717 -0.65986603 0.72608274 -0.048799168
		 0.68587351 0.51300681 -0.7273922 0.45576799 0.52317619 -0.60403901 -0.6011852;
	setAttr ".n[332:497]" -type "float3"  -0.6842984 0.092262931 0.72334176 -0.67660075
		 0.27061349 -0.68482083 -0.53140485 -0.57588118 -0.62126464 -0.53700513 -0.70701909
		 0.46016243 0.52317619 -0.60403901 -0.6011852 0.51300681 -0.7273922 0.45576799 -0.53700513
		 -0.70701909 0.46016243 -0.53140485 -0.57588118 -0.62126464 -3.0454842e-08 -0.22016634
		 0.97546232 -3.893474e-08 -0.10559431 0.99440926 -0.76577365 -0.27555308 0.58108616
		 -0.73210078 -0.26183048 0.62886655 -3.6086615e-08 -0.31977555 0.94749326 -3.0454842e-08
		 -0.22016634 0.97546232 -0.73210078 -0.26183048 0.62886655 -0.80119973 -0.27644849
		 0.53071195 -0.80119973 -0.27644849 0.53071195 -0.73210078 -0.26183048 0.62886655
		 -0.80992031 -0.25463191 -0.528386 -0.82071489 -0.17949897 -0.54240876 -0.82071489
		 -0.17949897 -0.54240876 -0.80992031 -0.25463191 -0.528386 3.7615244e-08 -0.13086388
		 -0.99140036 3.9193175e-08 -0.098501556 -0.99513692 -0.73210078 -0.26183048 0.62886655
		 -0.76577365 -0.27555308 0.58108616 -0.83595747 -0.32548925 -0.44185036 -0.80992031
		 -0.25463191 -0.528386 -0.80992031 -0.25463191 -0.528386 -0.83595747 -0.32548925 -0.44185036
		 3.5743383e-08 -0.16806294 -0.98577631 3.7615244e-08 -0.13086388 -0.99140036 0.41966343
		 -0.87387884 -0.24539447 0.35392913 -0.61854517 -0.70152408 0.45139393 -0.22389609
		 -0.86377895 0.78857863 -0.50513464 -0.35068879 0.78857863 -0.50513464 -0.35068879
		 0.45139393 -0.22389609 -0.86377895 0.4318175 0.17881949 -0.88405722 0.84160137 0.38645437
		 -0.37730631 0.83445787 0.30222657 0.46080279 0.32461876 0.65955728 0.67794305 0.32647812
		 -0.5200308 0.78929085 0.78378415 -0.47199833 0.40360859 0.32461876 0.65955728 0.67794305
		 0.83445787 0.30222657 0.46080279 0.84160137 0.38645437 -0.37730631 0.35437831 0.90995198
		 -0.21541463 0.41966343 -0.87387884 -0.24539447 0.78857863 -0.50513464 -0.35068879
		 0.78378415 -0.47199833 0.40360859 0.32647812 -0.5200308 0.78929085 0.4318175 0.17881949
		 -0.88405722 0.26942006 0.66340637 -0.69807225 0.35437831 0.90995198 -0.21541463 0.84160137
		 0.38645437 -0.37730631 0.26942006 0.66340637 -0.69807225 6.7294252e-08 0.70266277
		 -0.71152312 5.0363486e-08 0.99332154 -0.11537895 0.35437831 0.90995198 -0.21541463
		 0.32461876 0.65955728 0.67794305 -1.34903e-08 0.67786396 0.73518735 -6.8475217e-08
		 -0.60491925 0.79628676 0.32647812 -0.5200308 0.78929085 0.35437831 0.90995198 -0.21541463
		 5.0363486e-08 0.99332154 -0.11537895 -1.34903e-08 0.67786396 0.73518735 0.32461876
		 0.65955728 0.67794305 0.45139393 -0.22389609 -0.86377895 2.3864965e-08 -0.20336673
		 -0.97910267 4.53594e-08 0.16777855 -0.9858247 0.4318175 0.17881949 -0.88405722 0.35392913
		 -0.61854517 -0.70152408 3.0040734e-09 -0.6719088 -0.74063396 2.3864965e-08 -0.20336673
		 -0.97910267 0.45139393 -0.22389609 -0.86377895 0.41966343 -0.87387884 -0.24539447
		 -4.3350081e-08 -0.99257851 -0.12160562 3.0040734e-09 -0.6719088 -0.74063396 0.35392913
		 -0.61854517 -0.70152408 0.4318175 0.17881949 -0.88405722 4.53594e-08 0.16777855 -0.9858247
		 6.7294252e-08 0.70266277 -0.71152312 0.26942006 0.66340637 -0.69807225 0.32647812
		 -0.5200308 0.78929085 -6.8475217e-08 -0.60491925 0.79628676 -4.3350081e-08 -0.99257851
		 -0.12160562 0.41966343 -0.87387884 -0.24539447 -0.0047361283 -0.49145943 -0.87088758
		 0.28781939 -0.84622097 -0.44840831 0.2920838 -0.71619987 0.63383347 0.0047328556
		 -0.27548856 0.96129268 0.32955131 0.71874517 0.61221015 0.68864048 0.46327078 0.55781239
		 0.68600553 0.31779277 -0.6545257 0.32243633 0.55686343 -0.76546574 0.089442521 0.79772401
		 0.59635276 0.22833121 0.76456052 0.60275364 0.22636737 0.60560703 -0.76288784 0.092250742
		 0.63907611 -0.76359129 0.037016373 -0.49821544 -0.86626279 0.042238936 -0.87926859
		 -0.47444975 0.044826068 -0.74381733 0.6668781 0.032723907 -0.28439149 0.95814955
		 0.22833121 0.76456052 0.60275364 0.32955131 0.71874517 0.61221015 0.32243633 0.55686343
		 -0.76546574 0.22636737 0.60560703 -0.76288784 0.042238936 -0.87926859 -0.47444975
		 -0.0047361283 -0.49145943 -0.87088758 0.0047328556 -0.27548856 0.96129268 0.044826068
		 -0.74381733 0.6668781 0.062268399 -0.880611 -0.46973068 0.037016373 -0.49821544 -0.86626279
		 0.032723907 -0.28439149 0.95814955 0.062659614 -0.74649298 0.66243631 0.00020938081
		 0.79109818 0.61168921 0.089442521 0.79772401 0.59635276 0.092250742 0.63907611 -0.76359129
		 -0.00021007557 0.62234616 -0.78274214 0.00015356686 0.75587654 -0.65471429 -0.00016309576
		 0.87849128 0.47775838 0.75134003 0.25420973 0.60898733 0.76907909 0.13385165 -0.62498087
		 -0.072231628 0.75239301 -0.65474218 -0.072494745 0.87352347 0.48135346 -0.020929638
		 0.49248943 0.8700667 -0.023055211 0.33009142 -0.94366735 -0.023055211 0.33009142
		 -0.94366735 -0.020929638 0.49248943 0.8700667 -0.00016309576 0.87849128 0.47775838
		 0.00015356686 0.75587654 -0.65471429 -0.032069344 0.31061843 -0.94999355 -0.027114771
		 0.46342438 0.8857215 -0.072494745 0.87352347 0.48135346 -0.072231628 0.75239301 -0.65474218
		 0.059033409 -0.79267663 -0.60677737 0.56377453 -0.62562841 -0.5392099 0.55339843
		 -0.51279926 0.6563437 0.05820835 -0.65230268 0.75572014 -0.011856072 -0.77329117
		 -0.63394016 -0.014173663 -0.77414352 -0.63285142 -0.011966462 -0.63149512 0.77528739
		 -0.0062728859 -0.63266933 0.77439654 -0.014173663 -0.77414352 -0.63285142 0.059033409
		 -0.79267663 -0.60677737 0.05820835 -0.65230268 0.75572014 -0.011966462 -0.63149512
		 0.77528739 -0.0017139554 -0.7706396 -0.63726902 -0.011856072 -0.77329117 -0.63394016
		 -0.0062728859 -0.63266933 0.77439654 0.0016431157 -0.63263738 0.77444637 -0.020929638
		 0.49248943 0.8700667 -0.011966462 -0.63149512 0.77528739 0.05820835 -0.65230268 0.75572014
		 -0.00016309576 0.87849128 0.47775838 -0.027114771 0.46342438 0.8857215 0.0016431157
		 -0.63263738 0.77444637 -0.0062728859 -0.63266933 0.77439654 -0.072494745 0.87352347
		 0.48135346 0.75134003 0.25420973 0.60898733 0.55339843 -0.51279926 0.6563437 0.56377453
		 -0.62562841 -0.5392099 0.76907909 0.13385165 -0.62498087 -0.072494745 0.87352347
		 0.48135346 -0.0062728859 -0.63266933 0.77439654;
	setAttr ".n[498:663]" -type "float3"  -0.011966462 -0.63149512 0.77528739 -0.020929638
		 0.49248943 0.8700667 0.76907909 0.13385165 -0.62498087 0.56377453 -0.62562841 -0.5392099
		 0.059033409 -0.79267663 -0.60677737 0.00015356686 0.75587654 -0.65471429 0.00015356686
		 0.75587654 -0.65471429 0.059033409 -0.79267663 -0.60677737 -0.014173663 -0.77414352
		 -0.63285142 -0.023055211 0.33009142 -0.94366735 -0.023055211 0.33009142 -0.94366735
		 -0.014173663 -0.77414352 -0.63285142 -0.011856072 -0.77329117 -0.63394016 -0.072231628
		 0.75239301 -0.65474218 -0.072231628 0.75239301 -0.65474218 -0.011856072 -0.77329117
		 -0.63394016 -0.0017139554 -0.7706396 -0.63726902 -0.032069344 0.31061843 -0.94999355
		 -0.00016309576 0.87849128 0.47775838 0.05820835 -0.65230268 0.75572014 0.55339843
		 -0.51279926 0.6563437 0.75134003 0.25420973 0.60898733 -0.72781241 -0.4718574 0.49763414
		 -0.70444947 0.48814428 0.51523393 -0.7086243 0.481749 -0.51552844 -0.72962165 -0.48373029
		 -0.48338115 -0.041976985 -0.74475855 -0.66601247 -0.72962165 -0.48373029 -0.48338115
		 -0.7086243 0.481749 -0.51552844 -0.020575698 0.69683105 -0.71694016 -0.020575698
		 0.69683105 -0.71694016 -0.7086243 0.481749 -0.51552844 -0.70444947 0.48814428 0.51523393
		 -0.016768169 0.70395744 0.71004415 -0.016768169 0.70395744 0.71004415 -0.70444947
		 0.48814428 0.51523393 -0.72781241 -0.4718574 0.49763414 -0.041002847 -0.72852921
		 0.68378633 -0.041002847 -0.72852921 0.68378633 -0.72781241 -0.4718574 0.49763414
		 -0.72962165 -0.48373029 -0.48338115 -0.041976985 -0.74475855 -0.66601247 0.78857863
		 -0.50513464 -0.35068879 0.84160137 0.38645437 -0.37730631 0.83445787 0.30222657 0.46080279
		 0.78378415 -0.47199833 0.40360859 -0.041002847 -0.72852921 0.68378633 0.64866561
		 -0.54938775 0.5266934 0.72674352 0.43497387 0.53164047 -0.016768169 0.70395744 0.71004415
		 -0.020575698 0.69683105 -0.71694016 0.72792464 0.42777938 -0.53584546 0.65205473
		 -0.56123477 -0.50974518 -0.041976985 -0.74475855 -0.66601247 -0.041976985 -0.74475855
		 -0.66601247 0.65205473 -0.56123477 -0.50974518 0.64866561 -0.54938775 0.5266934 -0.041002847
		 -0.72852921 0.68378633 -0.016768169 0.70395744 0.71004415 0.72674352 0.43497387 0.53164047
		 0.72792464 0.42777938 -0.53584546 -0.020575698 0.69683105 -0.71694016 -0.78861922
		 -0.37951061 -0.48378849 -0.86789024 -0.36614177 0.33571824 -0.81376475 0.44807661
		 0.37015432 -0.73563617 0.43442106 -0.51972878 0.65205473 -0.56123477 -0.50974518
		 0.72792464 0.42777938 -0.53584546 0.72674352 0.43497387 0.53164047 0.64866561 -0.54938775
		 0.5266934 -0.78861922 -0.37951061 -0.48378849 -0.10594165 -0.739757 -0.66448164 -0.25614822
		 -0.69968265 0.66695756 -0.86789024 -0.36614177 0.33571824 -0.23976506 0.67118728
		 0.70144165 0.644364 0.46441162 0.60754985 0.72395808 0.49038592 -0.48518679 -0.10257297
		 0.69323587 -0.7133742 -0.86789024 -0.36614177 0.33571824 -0.25614822 -0.69968265
		 0.66695756 -0.23976506 0.67118728 0.70144165 -0.81376475 0.44807661 0.37015432 -0.81376475
		 0.44807661 0.37015432 -0.23976506 0.67118728 0.70144165 -0.10257297 0.69323587 -0.7133742
		 -0.73563617 0.43442106 -0.51972878 -0.73563617 0.43442106 -0.51972878 -0.10257297
		 0.69323587 -0.7133742 -0.10594165 -0.739757 -0.66448164 -0.78861922 -0.37951061 -0.48378849
		 -0.10257297 0.69323587 -0.7133742 0.72395808 0.49038592 -0.48518679 0.64952618 -0.59871656
		 -0.46867278 -0.10594165 -0.739757 -0.66448164 -0.10594165 -0.739757 -0.66448164 0.64952618
		 -0.59871656 -0.46867278 0.59774566 -0.55724961 0.57634449 -0.25614822 -0.69968265
		 0.66695756 -0.25614822 -0.69968265 0.66695756 0.59774566 -0.55724961 0.57634449 0.644364
		 0.46441162 0.60754985 -0.23976506 0.67118728 0.70144165 0.31452349 0.27373165 -0.90892577
		 0.30762431 0.66773075 -0.67786652 0.61182833 0.75032681 -0.2503517 0.79890138 0.43923274
		 -0.41089073 0.79890138 0.43923274 -0.41089073 0.61182833 0.75032681 -0.2503517 0.65437281
		 0.59786797 0.46297973 0.82729578 0.30615646 0.4710094 0.8663007 -0.32349351 0.38062441
		 0.40868866 -0.73114747 0.54625708 0.37116513 -0.67504829 -0.63760966 0.84084481 -0.1968551
		 -0.50421023 0.40868866 -0.73114747 0.54625708 0.8663007 -0.32349351 0.38062441 0.82729578
		 0.30615646 0.4710094 0.43067008 0.030304473 0.90200049 0.31452349 0.27373165 -0.90892577
		 0.79890138 0.43923274 -0.41089073 0.84084481 -0.1968551 -0.50421023 0.37116513 -0.67504829
		 -0.63760966 0.65437281 0.59786797 0.46297973 0.44556466 0.4676393 0.76340389 0.43067008
		 0.030304473 0.90200049 0.82729578 0.30615646 0.4710094 0.44556466 0.4676393 0.76340389
		 -1.9154314e-09 0.52737528 0.84963244 -2.501576e-08 -0.040395588 0.99918383 0.43067008
		 0.030304473 0.90200049 0.40868866 -0.73114747 0.54625708 -5.534601e-08 -0.76290458
		 0.64651102 -8.8310887e-09 -0.76415449 -0.64503318 0.37116513 -0.67504829 -0.63760966
		 0.43067008 0.030304473 0.90200049 -2.501576e-08 -0.040395588 0.99918383 -5.534601e-08
		 -0.76290458 0.64651102 0.40868866 -0.73114747 0.54625708 0.30762431 0.66773075 -0.67786652
		 4.4749296e-08 0.69651645 -0.71754092 5.8299303e-08 0.90200311 -0.43172953 0.61182833
		 0.75032681 -0.2503517 0.31452349 0.27373165 -0.90892577 3.5508599e-08 0.16723664
		 -0.98591673 4.4749296e-08 0.69651645 -0.71754092 0.30762431 0.66773075 -0.67786652
		 0.65437281 0.59786797 0.46297973 1.1431554e-08 0.82567281 0.56414932 -1.9154314e-09
		 0.52737528 0.84963244 0.44556466 0.4676393 0.76340389 0.37116513 -0.67504829 -0.63760966
		 -8.8310887e-09 -0.76415449 -0.64503318 3.5508599e-08 0.16723664 -0.98591673 0.31452349
		 0.27373165 -0.90892577 0.79890138 0.43923274 -0.41089073 0.82729578 0.30615646 0.4710094
		 0.8663007 -0.32349351 0.38062441 0.84084481 -0.1968551 -0.50421023 -0.61330563 0.63893533
		 0.46434659 0.19441272 0.85061485 0.48852631 0.18498065 0.85394794 -0.48636934 -0.62552607
		 0.63854045 -0.44831166 -0.74693739 -0.025436433 -0.66440767 -0.62552607 0.63854045
		 -0.44831166 0.18498065 0.85394794 -0.48636934 0.63927972 0.32678673 -0.69608331;
	setAttr ".n[664:829]" -type "float3"  0.63927972 0.32678673 -0.69608331 0.18498065
		 0.85394794 -0.48636934 0.19441272 0.85061485 0.48852631 0.64774549 0.32204118 0.6904456
		 0.64774549 0.32204118 0.6904456 0.19441272 0.85061485 0.48852631 -0.61330563 0.63893533
		 0.46434659 -0.73040903 -0.02110653 0.68268383 -0.73040903 -0.02110653 0.68268383
		 -0.61330563 0.63893533 0.46434659 -0.62552607 0.63854045 -0.44831166 -0.74693739
		 -0.025436433 -0.66440767 -0.73040903 -0.02110653 0.68268383 -0.44797221 -0.70294952
		 0.55243367 0.60123193 -0.57615161 0.55368716 0.64774549 0.32204118 0.6904456 0.63927972
		 0.32678673 -0.69608331 0.59509224 -0.57942915 -0.55689049 -0.45880964 -0.71078604
		 -0.53317618 -0.74693739 -0.025436433 -0.66440767 -0.74693739 -0.025436433 -0.66440767
		 -0.45880964 -0.71078604 -0.53317618 -0.44797221 -0.70294952 0.55243367 -0.73040903
		 -0.02110653 0.68268383 0.64774549 0.32204118 0.6904456 0.60123193 -0.57615161 0.55368716
		 0.59509224 -0.57942915 -0.55689049 0.63927972 0.32678673 -0.69608331 -0.45880964
		 -0.71078604 -0.53317618 0.59509224 -0.57942915 -0.55689049 0.60123193 -0.57615161
		 0.55368716 -0.44797221 -0.70294952 0.55243367 -0.53340006 0.63545817 0.55828071 0.36701238
		 0.72177672 0.58680516 0.35890073 0.84781373 -0.3903873 -0.5454179 0.7511723 -0.37183261
		 -0.7424472 0.11553732 -0.65986621 -0.5454179 0.7511723 -0.37183261 0.35890073 0.84781373
		 -0.3903873 0.67660093 0.27061343 -0.68482083 0.67660093 0.27061343 -0.68482083 0.35890073
		 0.84781373 -0.3903873 0.36701238 0.72177672 0.58680516 0.68429816 0.092262909 0.72334188
		 0.68429816 0.092262909 0.72334188 0.36701238 0.72177672 0.58680516 -0.53340006 0.63545817
		 0.55828071 -0.72608286 -0.048799075 0.68587339 -0.72608286 -0.048799075 0.68587339
		 -0.53340006 0.63545817 0.55828071 -0.5454179 0.7511723 -0.37183261 -0.7424472 0.11553732
		 -0.65986621 -0.72608286 -0.048799075 0.68587339 -0.51300687 -0.72739255 0.45576763
		 0.53700495 -0.70701939 0.46016216 0.68429816 0.092262909 0.72334188 0.67660093 0.27061343
		 -0.68482083 0.53140491 -0.57588089 -0.62126487 -0.52317619 -0.60403872 -0.6011855
		 -0.7424472 0.11553732 -0.65986621 -0.7424472 0.11553732 -0.65986621 -0.52317619 -0.60403872
		 -0.6011855 -0.51300687 -0.72739255 0.45576763 -0.72608286 -0.048799075 0.68587339
		 0.68429816 0.092262909 0.72334188 0.53700495 -0.70701939 0.46016216 0.53140491 -0.57588089
		 -0.62126487 0.67660093 0.27061343 -0.68482083 -0.52317619 -0.60403872 -0.6011855
		 0.53140491 -0.57588089 -0.62126487 0.53700495 -0.70701939 0.46016216 -0.51300687
		 -0.72739255 0.45576763 -3.0454842e-08 -0.22016634 0.97546232 0.73210078 -0.26183054
		 0.62886667 0.76577359 -0.2755532 0.58108634 -3.893474e-08 -0.10559431 0.99440926
		 -3.6086615e-08 -0.31977555 0.94749326 0.80119967 -0.27644855 0.53071207 0.73210078
		 -0.26183054 0.62886667 -3.0454842e-08 -0.22016634 0.97546232 0.80119967 -0.27644855
		 0.53071207 0.82071489 -0.17949903 -0.54240853 0.80992031 -0.254632 -0.52838582 0.73210078
		 -0.26183054 0.62886667 0.82071489 -0.17949903 -0.54240853 3.9193175e-08 -0.098501556
		 -0.99513692 3.7615244e-08 -0.13086388 -0.99140036 0.80992031 -0.254632 -0.52838582
		 0.73210078 -0.26183054 0.62886667 0.80992031 -0.254632 -0.52838582 0.83595747 -0.32548937
		 -0.4418503 0.76577359 -0.2755532 0.58108634 0.80992031 -0.254632 -0.52838582 3.7615244e-08
		 -0.13086388 -0.99140036 3.5743383e-08 -0.16806294 -0.98577631 0.83595747 -0.32548937
		 -0.4418503 0.78861934 0.37951073 -0.48378831 0.86789018 0.36614183 0.33571815 0.81376481
		 -0.44807634 0.37015465 0.73563623 -0.43442097 -0.51972866 0.78861934 0.37951073 -0.48378831
		 0.10594162 0.73975682 -0.66448182 0.2561484 0.69968301 0.66695696 0.86789018 0.36614183
		 0.33571815 0.23976511 -0.67118704 0.70144182 -0.6443637 -0.46441239 0.60754961 -0.7239579
		 -0.49038672 -0.48518646 0.10257296 -0.69323599 -0.71337408 0.86789018 0.36614183
		 0.33571815 0.2561484 0.69968301 0.66695696 0.23976511 -0.67118704 0.70144182 0.81376481
		 -0.44807634 0.37015465 0.81376481 -0.44807634 0.37015465 0.23976511 -0.67118704 0.70144182
		 0.10257296 -0.69323599 -0.71337408 0.73563623 -0.43442097 -0.51972866 0.73563623
		 -0.43442097 -0.51972866 0.10257296 -0.69323599 -0.71337408 0.10594162 0.73975682
		 -0.66448182 0.78861934 0.37951073 -0.48378831 0.10257296 -0.69323599 -0.71337408
		 -0.7239579 -0.49038672 -0.48518646 -0.64952636 0.59871584 -0.4686735 0.10594162 0.73975682
		 -0.66448182 0.10594162 0.73975682 -0.66448182 -0.64952636 0.59871584 -0.4686735 -0.59774625
		 0.55724919 0.57634431 0.2561484 0.69968301 0.66695696 0.2561484 0.69968301 0.66695696
		 -0.59774625 0.55724919 0.57634431 -0.6443637 -0.46441239 0.60754961 0.23976511 -0.67118704
		 0.70144182 0.64952618 -0.59871656 -0.46867278 0.72395808 0.49038592 -0.48518679 0.644364
		 0.46441162 0.60754985 0.59774566 -0.55724961 0.57634449 -0.64952636 0.59871584 -0.4686735
		 -0.7239579 -0.49038672 -0.48518646 -0.6443637 -0.46441239 0.60754961 -0.59774625
		 0.55724919 0.57634431 0.76044273 0.45080769 -0.46743903 0.79255992 0.44393492 0.4180558
		 0.7471025 -0.50053269 0.43738404 0.68273938 -0.51314038 -0.52014804 -0.7604425 -0.45080733
		 -0.46743974 -0.79255998 -0.44393486 0.4180558 -0.74710208 0.5005334 0.43738389 -0.68273908
		 0.51314092 -0.5201478 0.089442521 0.79772401 0.59635276 0.00020938081 0.79109818
		 0.61168921 0.062659614 -0.74649298 0.66243631 0.032723907 -0.28439149 0.95814955
		 0.32955131 0.71874517 0.61221015 0.22833121 0.76456052 0.60275364 0.044826068 -0.74381733
		 0.6668781 0.0047328556 -0.27548856 0.96129268 0.32243633 0.55686343 -0.76546574 0.68600553
		 0.31779277 -0.6545257 0.28781939 -0.84622097 -0.44840831 -0.0047361283 -0.49145943
		 -0.87088758 0.22636737 0.60560703 -0.76288784 0.32243633 0.55686343 -0.76546574 -0.0047361283
		 -0.49145943 -0.87088758 0.042238936 -0.87926859 -0.47444975 0.22833121 0.76456052
		 0.60275364 0.089442521 0.79772401 0.59635276;
	setAttr ".n[830:983]" -type "float3"  0.032723907 -0.28439149 0.95814955 0.044826068
		 -0.74381733 0.6668781 0.28781939 -0.84622097 -0.44840831 0.68600553 0.31779277 -0.6545257
		 0.68864048 0.46327078 0.55781239 0.2920838 -0.71619987 0.63383347 0.68864048 0.46327078
		 0.55781239 0.32955131 0.71874517 0.61221015 0.0047328556 -0.27548856 0.96129268 0.2920838
		 -0.71619987 0.63383347 -0.00021007557 0.62234616 -0.78274214 0.092250742 0.63907611
		 -0.76359129 0.037016373 -0.49821544 -0.86626279 0.062268399 -0.880611 -0.46973068
		 -0.22625434 0.60559547 -0.76293051 -0.092261523 0.63905054 -0.76361144 -0.026516879
		 -0.55438113 -0.83184046 -0.044546857 -0.87398928 -0.48389906 0.00020938081 0.79109818
		 0.61168921 -0.089431748 0.79774451 0.59632677 -0.022492215 -0.34641609 0.93781137
		 0.062659614 -0.74649298 0.66243631 -0.22844405 0.7645607 0.60271066 -0.32939199 0.71880615
		 0.61222434 -0.023360949 -0.33763343 0.94098777 -0.04727808 -0.73671138 0.67455256
		 -0.34937719 -0.81854784 -0.45597708 -0.68588048 0.31782398 -0.65464193 -0.32259575
		 0.55680674 -0.76543993 -0.014376397 -0.54758596 -0.83662593 -0.32259575 0.55680674
		 -0.76543993 -0.22625434 0.60559547 -0.76293051 -0.044546857 -0.87398928 -0.48389906
		 -0.014376397 -0.54758596 -0.83662593 -0.089431748 0.79774451 0.59632677 -0.22844405
		 0.7645607 0.60271066 -0.04727808 -0.73671138 0.67455256 -0.022492215 -0.34641609
		 0.93781137 -0.68876463 0.46321341 0.55770648 -0.68588048 0.31782398 -0.65464193 -0.34937719
		 -0.81854784 -0.45597708 -0.35334891 -0.68750799 0.6344111 -0.32939199 0.71880615
		 0.61222434 -0.68876463 0.46321341 0.55770648 -0.35334891 -0.68750799 0.6344111 -0.023360949
		 -0.33763343 0.94098777 -0.092261523 0.63905054 -0.76361144 -0.00021007557 0.62234616
		 -0.78274214 0.062268399 -0.880611 -0.46973068 -0.026516879 -0.55438113 -0.83184046
		 0.10778983 -0.70336354 0.70261014 0.67758173 -0.52942067 0.5104869 0.72486299 0.42571643
		 0.54160786 0.12593623 0.65296876 0.74684125 -0.7604425 -0.45080733 -0.46743974 -0.1732699
		 -0.72295964 -0.66881007 -0.28296465 -0.68250507 0.67388272 -0.79255998 -0.44393486
		 0.4180558 0.22638544 -0.73875856 -0.63481122 0.72229004 -0.56399477 -0.40025866 0.67758173
		 -0.52942067 0.5104869 0.10778983 -0.70336354 0.70261014 0.12593623 0.65296876 0.74684125
		 0.72486299 0.42571643 0.54160786 0.79495072 0.43932652 -0.41838443 0.27498579 0.66637886
		 -0.69305277 0.67758173 -0.52942067 0.5104869 0.72229004 -0.56399477 -0.40025866 0.79495072
		 0.43932652 -0.41838443 0.72486299 0.42571643 0.54160786 -0.79255998 -0.44393486 0.4180558
		 -0.28296465 -0.68250507 0.67388272 -0.27844247 0.65746003 0.70015436 -0.74710208
		 0.5005334 0.43738389 -0.74710208 0.5005334 0.43738389 -0.27844247 0.65746003 0.70015436
		 -0.14754489 0.67977268 -0.71842861 -0.68273908 0.51314092 -0.5201478 -0.68273908
		 0.51314092 -0.5201478 -0.14754489 0.67977268 -0.71842861 -0.1732699 -0.72295964 -0.66881007
		 -0.7604425 -0.45080733 -0.46743974 0.22638544 -0.73875856 -0.63481122 -0.1732699
		 -0.72295964 -0.66881007 -0.14754489 0.67977268 -0.71842861 0.27498579 0.66637886
		 -0.69305277 0.12593623 0.65296876 0.74684125 -0.27844247 0.65746003 0.70015436 -0.28296465
		 -0.68250507 0.67388272 0.10778983 -0.70336354 0.70261014 0.27498579 0.66637886 -0.69305277
		 -0.14754489 0.67977268 -0.71842861 -0.27844247 0.65746003 0.70015436 0.12593623 0.65296876
		 0.74684125 0.10778983 -0.70336354 0.70261014 -0.28296465 -0.68250507 0.67388272 -0.1732699
		 -0.72295964 -0.66881007 0.22638544 -0.73875856 -0.63481122 0.27498579 0.66637886
		 -0.69305277 0.79495072 0.43932652 -0.41838443 0.72229004 -0.56399477 -0.40025866
		 0.22638544 -0.73875856 -0.63481122 -0.10779011 0.70336336 0.70261025 -0.67758167
		 0.5294205 0.51048702 -0.72486317 -0.42571661 0.54160732 -0.12593631 -0.65296888 0.74684101
		 0.76044273 0.45080769 -0.46743903 0.17327017 0.7229594 -0.66881019 0.28296486 0.68250477
		 0.67388284 0.79255992 0.44393492 0.4180558 -0.22638579 0.73875868 -0.63481092 -0.72229034
		 0.563995 -0.40025792 -0.67758167 0.5294205 0.51048702 -0.10779011 0.70336336 0.70261025
		 -0.12593631 -0.65296888 0.74684101 -0.72486317 -0.42571661 0.54160732 -0.79495084
		 -0.43932605 -0.41838467 -0.27498597 -0.66637868 -0.69305277 -0.67758167 0.5294205
		 0.51048702 -0.72229034 0.563995 -0.40025792 -0.79495084 -0.43932605 -0.41838467 -0.72486317
		 -0.42571661 0.54160732 0.79255992 0.44393492 0.4180558 0.28296486 0.68250477 0.67388284
		 0.27844253 -0.65746003 0.7001543 0.7471025 -0.50053269 0.43738404 0.7471025 -0.50053269
		 0.43738404 0.27844253 -0.65746003 0.7001543 0.14754489 -0.67977256 -0.71842873 0.68273938
		 -0.51314038 -0.52014804 0.68273938 -0.51314038 -0.52014804 0.14754489 -0.67977256
		 -0.71842873 0.17327017 0.7229594 -0.66881019 0.76044273 0.45080769 -0.46743903 -0.22638579
		 0.73875868 -0.63481092 0.17327017 0.7229594 -0.66881019 0.14754489 -0.67977256 -0.71842873
		 -0.27498597 -0.66637868 -0.69305277 -0.12593631 -0.65296888 0.74684101 0.27844253
		 -0.65746003 0.7001543 0.28296486 0.68250477 0.67388284 -0.10779011 0.70336336 0.70261025
		 -0.27498597 -0.66637868 -0.69305277 0.14754489 -0.67977256 -0.71842873 0.27844253
		 -0.65746003 0.7001543 -0.12593631 -0.65296888 0.74684101 -0.10779011 0.70336336 0.70261025
		 0.28296486 0.68250477 0.67388284 0.17327017 0.7229594 -0.66881019 -0.22638579 0.73875868
		 -0.63481092 -0.27498597 -0.66637868 -0.69305277 -0.79495084 -0.43932605 -0.41838467
		 -0.72229034 0.563995 -0.40025792 -0.22638579 0.73875868 -0.63481092;
	setAttr -s 246 -ch 984 ".fc[0:245]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 283 269 264 277
		mc 0 4 29 33 37 41
		f 4 4 5 6 -2
		mu 0 4 268 235 252 264
		mc 0 4 34 21 17 38
		f 4 7 8 9 10
		mu 0 4 177 69 46 181
		mc 0 4 4 11 7 0
		f 4 11 12 13 -11
		mu 0 4 182 231 224 184
		mc 0 4 1 25 22 5
		f 4 14 -9 15 -1
		mu 0 4 305 290 294 300
		mc 0 4 30 8 12 35
		f 4 -6 -13 16 17
		mu 0 4 252 236 231 249
		mc 0 4 18 23 26 14
		f 4 -17 18 19 20
		mu 0 4 249 231 226 247
		mc 0 4 15 27 60 52
		f 4 -10 21 22 23
		mu 0 4 182 53 24 179
		mc 0 4 2 9 48 44
		f 4 -12 -24 24 -19
		mu 0 4 231 182 179 226
		mc 0 4 28 3 45 61
		f 4 -7 25 26 27
		mu 0 4 264 252 250 265
		mc 0 4 39 19 56 68
		f 4 -3 -28 28 29
		mu 0 4 277 264 265 284
		mc 0 4 42 40 69 72
		f 4 -4 -30 30 31
		mu 0 4 283 277 284 292
		mc 0 4 31 43 73 64
		f 4 -18 -21 32 -26
		mu 0 4 252 249 247 250
		mc 0 4 20 16 53 57
		f 4 -15 -32 33 -22
		mu 0 4 290 305 320 285
		mc 0 4 10 32 65 49
		f 4 34 35 36 37
		mu 0 4 215 210 150 169
		mc 0 4 538 510 506 546
		f 4 38 39 40 41
		mu 0 4 4 48 58 8
		mc 0 4 120 132 90 76
		f 4 42 43 44 45
		mu 0 4 97 65 67 100
		mc 0 4 124 128 79 93
		f 4 46 47 48 49
		mu 0 4 89 57 60 94
		mc 0 4 148 136 108 116
		f 4 50 51 52 53
		mu 0 4 7 52 61 9
		mc 0 4 144 140 112 104
		f 4 -49 54 -43 55
		mu 0 4 94 60 65 97
		mc 0 4 117 109 129 125
		f 4 -53 56 -39 57
		mu 0 4 9 61 48 4
		mc 0 4 105 113 133 121
		f 4 58 59 -51 60
		mu 0 4 11 63 52 7
		mc 0 4 82 96 141 145
		f 4 61 62 -47 63
		mu 0 4 85 55 57 89
		mc 0 4 100 86 137 149
		f 4 64 65 66 67
		mu 0 4 29 28 13 14
		mc 0 4 174 152 159 178
		f 4 68 69 70 71
		mu 0 4 31 30 15 16
		mc 0 4 186 166 170 182
		f 4 72 -68 73 -70
		mu 0 4 30 29 14 15
		mc 0 4 167 175 179 171
		f 4 74 -72 75 76
		mu 0 4 32 31 16 17
		mc 0 4 155 187 183 162
		f 4 77 78 79 80
		mu 0 4 139 109 111 141
		mc 0 4 190 220 209 194
		f 4 81 82 83 84
		mu 0 4 137 107 108 138
		mc 0 4 212 205 224 216
		f 4 -84 85 -78 86
		mu 0 4 138 108 109 139
		mc 0 4 217 225 221 191
		f 4 87 88 -82 89
		mu 0 4 136 106 107 137
		mc 0 4 201 197 206 213
		f 4 -74 90 -86 91
		mu 0 4 115 128 84 86
		mc 0 4 172 180 222 226
		f 4 -76 92 -89 93
		mu 0 4 114 126 90 95
		mc 0 4 163 184 207 198
		f 4 -66 94 -80 95
		mu 0 4 112 142 143 113
		mc 0 4 160 153 195 210
		f 4 -71 -92 -83 -93
		mu 0 4 126 115 86 90
		mc 0 4 185 173 227 208
		f 4 -65 96 -81 -95
		mu 0 4 76 83 45 47
		mc 0 4 154 176 192 196
		f 4 -73 97 -87 -97
		mu 0 4 83 72 44 45
		mc 0 4 177 168 218 193
		f 4 -69 98 -85 -98
		mu 0 4 72 80 43 44
		mc 0 4 169 188 214 219
		f 4 -75 99 -90 -99
		mu 0 4 80 68 42 43
		mc 0 4 189 156 202 215
		f 4 -67 -96 -79 -91
		mu 0 4 128 116 98 84
		mc 0 4 181 161 211 223
		f 4 100 101 102 103
		mu 0 4 539 537 586 583
		mc 0 4 234 228 231 237
		f 4 104 105 -102 106
		mu 0 4 526 524 591 592
		mc 0 4 252 248 232 229
		f 4 107 108 -103 -106
		mu 0 4 511 510 568 567
		mc 0 4 249 240 238 233
		f 4 109 110 -104 -109
		mu 0 4 508 515 575 563
		mc 0 4 241 244 235 239
		f 4 111 -107 -101 -111
		mu 0 4 519 517 577 581
		mc 0 4 245 253 230 236
		f 4 -16 -8 -14 -5
		mu 0 4 310 308 287 288
		mc 0 4 36 13 6 24
		f 4 -110 112 113 114
		mu 0 4 515 508 410 415
		mc 0 4 246 242 262 265
		f 4 -105 115 116 117
		mu 0 4 524 526 436 422
		mc 0 4 250 254 256 259
		f 4 -112 -115 118 -116
		mu 0 4 517 519 420 416
		mc 0 4 255 247 266 257
		f 4 -108 -118 119 -113
		mu 0 4 510 511 409 413
		mc 0 4 243 251 260 263
		f 4 -119 -114 -120 -117
		mu 0 4 501 530 535 498
		mc 0 4 258 267 264 261
		f 4 120 121 122 123
		mu 0 4 125 129 170 160
		mc 0 4 296 300 304 307
		f 4 124 125 126 -122
		mu 0 4 78 79 122 123
		mc 0 4 301 288 285 305
		f 4 127 128 129 130
		mu 0 4 1 23 75 73
		mc 0 4 272 279 275 268
		f 4 131 132 133 -131
		mu 0 4 180 192 197 188
		mc 0 4 269 292 289 273
		f 4 134 -129 135 -121
		mu 0 4 125 22 77 129
		mc 0 4 297 276 280 302
		f 4 -126 -133 136 137
		mu 0 4 229 197 192 222
		mc 0 4 286 290 293 282
		f 4 -137 138 139 140
		mu 0 4 222 192 196 225
		mc 0 4 283 294 324 318
		f 4 -130 141 142 143
		mu 0 4 73 75 121 119
		mc 0 4 270 277 314 310
		f 4 -132 -144 144 -139
		mu 0 4 192 180 176 196
		mc 0 4 295 271 311 325
		f 4 -123 145 146 147
		mu 0 4 160 170 174 165
		mc 0 4 308 306 332 334
		f 4 -124 -148 148 149
		mu 0 4 125 160 165 120
		mc 0 4 298 309 335 328
		f 4 -138 -141 150 151
		mu 0 4 229 222 225 234
		mc 0 4 287 284 319 322
		f 4 -135 -150 152 -142
		mu 0 4 22 125 120 0
		mc 0 4 278 299 329 315
		f 4 -136 -128 -134 -125
		mu 0 4 78 25 26 79
		mc 0 4 303 281 274 291
		f 4 153 154 155 156
		mu 0 4 384 386 396 393
		mc 0 4 344 338 341 347
		f 4 157 158 -155 159
		mu 0 4 337 349 387 377
		mc 0 4 362 358 342 339
		f 4 160 161 -156 -159
		mu 0 4 349 355 405 401
		mc 0 4 359 350 348 343
		f 4 162 163 -157 -162
		mu 0 4 355 347 389 391
		mc 0 4 351 354 345 349
		f 4 164 -160 -154 -164
		mu 0 4 339 342 386 384
		mc 0 4 355 363 340 346
		f 4 -163 165 166 167
		mu 0 4 347 355 315 317
		mc 0 4 356 352 372 375
		f 4 -158 168 169 170
		mu 0 4 349 337 306 312
		mc 0 4 360 364 366 369
		f 4 -165 -168 171 -169
		mu 0 4 342 339 302 304
		mc 0 4 365 357 376 367
		f 4 -161 -171 172 -166
		mu 0 4 355 349 312 315
		mc 0 4 353 361 370 373
		f 4 -172 -167 -173 -170
		mu 0 4 304 302 299 297
		mc 0 4 368 377 374 371
		f 4 173 174 175 176
		mu 0 4 379 375 397 400
		mc 0 4 384 378 381 387
		f 4 177 178 -175 179
		mu 0 4 346 360 371 364
		mc 0 4 402 398 382 379
		f 4 180 181 -176 -179
		mu 0 4 360 352 374 381
		mc 0 4 399 390 388 383
		f 4 182 183 -177 -182
		mu 0 4 352 344 362 369
		mc 0 4 391 394 385 389
		f 4 184 -180 -174 -184
		mu 0 4 357 354 375 379
		mc 0 4 395 403 380 386
		f 4 -183 185 186 187
		mu 0 4 344 352 335 327
		mc 0 4 396 392 412 415
		f 4 -178 188 189 190
		mu 0 4 360 346 325 331
		mc 0 4 400 404 406 409
		f 4 -185 -188 191 -189
		mu 0 4 354 357 333 330
		mc 0 4 405 397 416 407
		f 4 -181 -191 192 -186
		mu 0 4 352 360 331 335
		mc 0 4 393 401 410 413
		f 4 -192 -187 -193 -190
		mu 0 4 330 333 323 322
		mc 0 4 408 417 414 411
		f 4 193 194 195 196
		mu 0 4 254 275 280 260
		mc 0 4 434 446 444 430
		f 4 197 -197 198 199
		mu 0 4 246 254 260 243
		mc 0 4 422 435 431 418
		f 4 -199 200 201 202
		mu 0 4 242 259 255 237
		mc 0 4 419 432 426 420
		f 4 -202 203 204 205
		mu 0 4 240 258 253 241
		mc 0 4 421 427 438 424
		f 4 -196 206 207 -201
		mu 0 4 259 279 270 255
		mc 0 4 433 445 442 428
		f 4 -208 208 209 -204
		mu 0 4 258 273 274 253
		mc 0 4 429 443 448 439
		f 4 210 211 212 213
		mu 0 4 278 276 263 266
		mc 0 4 479 491 487 483
		f 4 -213 214 215 216
		mu 0 4 267 263 251 232
		mc 0 4 484 488 467 471
		f 4 217 218 219 220
		mu 0 4 144 175 27 37
		mc 0 4 454 450 457 461
		f 4 -218 221 222 223
		mu 0 4 175 183 214 223
		mc 0 4 451 455 472 475
		f 4 -214 224 -220 225
		mu 0 4 319 313 295 291
		mc 0 4 480 485 462 458
		f 4 226 227 -223 -216
		mu 0 4 251 248 223 233
		mc 0 4 468 464 476 473
		f 4 228 -20 229 -228
		mu 0 4 248 247 226 223
		mc 0 4 465 54 62 477
		f 4 230 -23 231 -219
		mu 0 4 175 179 24 27
		mc 0 4 452 46 50 459
		f 4 -230 -25 -231 -224
		mu 0 4 223 226 179 175
		mc 0 4 478 63 47 453
		f 4 232 -27 233 -215
		mu 0 4 263 265 250 251
		mc 0 4 489 70 58 469
		f 4 234 -29 -233 -212
		mu 0 4 276 284 265 263
		mc 0 4 492 74 71 490
		f 4 235 -31 -235 -211
		mu 0 4 278 293 284 276
		mc 0 4 481 66 75 493
		f 4 -234 -33 -229 -227
		mu 0 4 251 250 247 248
		mc 0 4 470 59 55 466
		f 4 -232 -34 -236 -226
		mu 0 4 291 285 320 319
		mc 0 4 460 51 67 482
		f 4 236 237 238 239
		mu 0 4 2 3 54 51
		mc 0 4 522 494 500 534
		f 4 240 241 242 243
		mu 0 4 96 99 66 64
		mc 0 4 526 503 497 530
		f 4 244 245 -35 246
		mu 0 4 88 93 59 56
		mc 0 4 550 518 511 539
		f 4 -37 247 248 249
		mu 0 4 6 10 62 50
		mc 0 4 547 507 514 542
		f 4 250 -244 251 -246
		mu 0 4 93 96 64 59
		mc 0 4 519 527 531 512
		f 4 252 -240 253 -248
		mu 0 4 10 5 49 62
		mc 0 4 508 523 535 515
		f 4 254 -250 255 -59
		mu 0 4 11 6 50 63
		mc 0 4 83 548 543 97
		f 4 256 -247 257 -62
		mu 0 4 85 88 56 55
		mc 0 4 101 551 540 87
		f 4 258 259 260 261
		mu 0 4 35 20 21 36
		mc 0 4 568 572 557 554
		f 4 262 263 264 265
		mu 0 4 33 18 19 34
		mc 0 4 580 576 564 560
		f 4 -265 266 -259 267
		mu 0 4 34 19 20 35
		mc 0 4 561 565 573 569
		f 4 -77 268 -263 269
		mu 0 4 32 17 18 33
		mc 0 4 157 164 577 581
		f 4 270 271 272 273
		mu 0 4 131 134 104 102
		mc 0 4 584 588 595 606
		f 4 274 275 276 277
		mu 0 4 135 133 103 105
		mc 0 4 598 602 610 591
		f 4 278 -274 279 -276
		mu 0 4 133 131 102 103
		mc 0 4 603 585 607 611
		f 4 280 -278 281 -88
		mu 0 4 136 135 105 106
		mc 0 4 203 599 592 199
		f 4 282 -280 283 -267
		mu 0 4 117 91 87 132
		mc 0 4 566 612 608 574
		f 4 -94 -282 284 -269
		mu 0 4 114 95 92 130
		mc 0 4 165 200 593 578
		f 4 285 -272 286 -261
		mu 0 4 110 104 134 140
		mc 0 4 558 596 589 555
		f 4 -285 -277 -283 -264
		mu 0 4 130 92 91 117
		mc 0 4 579 594 613 567
		f 4 -287 -271 287 -262
		mu 0 4 70 40 38 82
		mc 0 4 556 590 586 570
		f 4 -288 -279 288 -268
		mu 0 4 82 38 39 71
		mc 0 4 571 587 604 562
		f 4 -289 -275 289 -266
		mu 0 4 71 39 41 81
		mc 0 4 563 605 600 582
		f 4 -290 -281 -100 -270
		mu 0 4 81 41 42 68
		mc 0 4 583 601 204 158
		f 4 -284 -273 -286 -260
		mu 0 4 132 87 101 118
		mc 0 4 575 609 597 559
		f 4 290 291 292 293
		mu 0 4 538 587 584 540
		mc 0 4 620 623 617 614
		f 4 294 -293 295 296
		mu 0 4 525 590 589 522
		mc 0 4 638 615 618 634
		f 4 -296 -292 297 298
		mu 0 4 513 570 569 512
		mc 0 4 635 619 624 626
		f 4 -298 -291 299 300
		mu 0 4 507 564 576 516
		mc 0 4 627 625 621 630
		f 4 -300 -294 -295 301
		mu 0 4 518 580 582 520
		mc 0 4 631 622 616 639
		f 4 -217 -222 -221 -225
		mu 0 4 309 286 289 311
		mc 0 4 486 474 456 463
		f 4 302 303 304 -301
		mu 0 4 516 417 411 507
		mc 0 4 632 651 648 628
		f 4 305 306 307 -297
		mu 0 4 522 421 431 525
		mc 0 4 636 645 642 640
		f 4 -308 308 -303 -302
		mu 0 4 520 418 419 518
		mc 0 4 641 643 652 633
		f 4 -305 309 -306 -299
		mu 0 4 512 414 412 513
		mc 0 4 629 649 646 637
		f 4 310 311 312 313
		mu 0 4 502 531 534 499
		mc 0 4 654 663 660 657
		f 4 -307 -310 -304 -309
		mu 0 4 500 529 536 497
		mc 0 4 644 647 650 653
		f 4 314 315 316 -311
		mu 0 4 562 541 556 574
		mc 0 4 655 666 678 664
		f 4 317 318 319 320
		mu 0 4 551 462 466 542
		mc 0 4 674 688 685 670
		f 4 -317 321 322 -312
		mu 0 4 558 549 548 560
		mc 0 4 665 679 675 661
		f 4 -323 -321 323 -313
		mu 0 4 572 551 542 565
		mc 0 4 662 676 671 658
		f 4 -324 324 -315 -314
		mu 0 4 588 545 555 578
		mc 0 4 659 672 667 656
		f 4 -320 325 326 -325
		mu 0 4 545 472 470 555
		mc 0 4 673 686 682 668
		f 4 -327 327 328 -316
		mu 0 4 541 467 468 556
		mc 0 4 669 683 691 680
		f 4 -329 329 -318 -322
		mu 0 4 549 456 457 548
		mc 0 4 681 692 689 677
		f 4 330 331 332 333
		mu 0 4 124 159 168 127
		mc 0 4 722 733 730 726
		f 4 -333 334 335 336
		mu 0 4 194 230 227 195
		mc 0 4 727 731 711 714
		f 4 337 338 339 340
		mu 0 4 186 161 163 185
		mc 0 4 698 694 701 705
		f 4 -338 341 342 343
		mu 0 4 178 187 193 191
		mc 0 4 695 699 715 718
		f 4 -334 344 -340 345
		mu 0 4 124 127 74 12
		mc 0 4 723 728 706 702
		f 4 346 347 -343 -336
		mu 0 4 228 218 191 193
		mc 0 4 712 708 719 716
		f 4 348 -140 349 -348
		mu 0 4 218 225 196 191
		mc 0 4 709 320 326 720
		f 4 350 -143 351 -339
		mu 0 4 161 119 121 163
		mc 0 4 696 312 316 703
		f 4 -350 -145 -351 -344
		mu 0 4 191 196 176 178
		mc 0 4 721 327 313 697
		f 4 352 -147 353 -332
		mu 0 4 159 165 174 168
		mc 0 4 734 336 333 732
		f 4 354 -149 -353 -331
		mu 0 4 124 120 165 159
		mc 0 4 724 330 337 735
		f 4 355 -151 -349 -347
		mu 0 4 228 234 225 218
		mc 0 4 713 323 321 710
		f 4 -352 -153 -355 -346
		mu 0 4 12 0 120 124
		mc 0 4 704 317 331 725
		f 4 -337 -342 -341 -345
		mu 0 4 194 195 189 190
		mc 0 4 729 717 700 707
		f 4 356 357 358 359
		mu 0 4 383 394 395 385
		mc 0 4 742 745 739 736
		f 4 360 -359 361 362
		mu 0 4 338 382 388 350
		mc 0 4 760 737 740 756
		f 4 -362 -358 363 364
		mu 0 4 350 402 408 356
		mc 0 4 757 741 746 748
		f 4 -364 -357 365 366
		mu 0 4 356 392 390 348
		mc 0 4 749 747 743 752
		f 4 -366 -360 -361 367
		mu 0 4 340 383 385 341
		mc 0 4 753 744 738 761
		f 4 368 369 370 -367
		mu 0 4 348 318 316 356
		mc 0 4 754 773 770 750
		f 4 371 372 373 -363
		mu 0 4 350 314 307 338
		mc 0 4 758 767 764 762
		f 4 -374 374 -369 -368
		mu 0 4 341 303 301 340
		mc 0 4 763 765 774 755
		f 4 -371 375 -372 -365
		mu 0 4 356 316 314 350
		mc 0 4 751 771 768 759
		f 4 -373 -376 -370 -375
		mu 0 4 303 296 298 301
		mc 0 4 766 769 772 775
		f 4 376 377 378 379
		mu 0 4 378 399 398 376
		mc 0 4 782 785 779 776
		f 4 380 -379 381 382
		mu 0 4 345 363 372 359
		mc 0 4 800 777 780 796
		f 4 -382 -378 383 384
		mu 0 4 359 380 373 351
		mc 0 4 797 781 786 788
		f 4 -384 -377 385 386
		mu 0 4 351 370 361 343
		mc 0 4 789 787 783 792
		f 4 -386 -380 -381 387
		mu 0 4 358 378 376 353
		mc 0 4 793 784 778 801
		f 4 388 389 390 -387
		mu 0 4 343 328 336 351
		mc 0 4 794 813 810 790
		f 4 391 392 393 -383
		mu 0 4 359 332 326 345
		mc 0 4 798 807 804 802
		f 4 -394 394 -389 -388
		mu 0 4 353 329 334 358
		mc 0 4 803 805 814 795
		f 4 -391 395 -392 -385
		mu 0 4 351 336 332 359
		mc 0 4 791 811 808 799
		f 4 -393 -396 -390 -395
		mu 0 4 329 321 324 334
		mc 0 4 806 809 812 815
		f 4 396 397 398 -194
		mu 0 4 254 261 281 275
		mc 0 4 436 824 830 447
		f 4 399 400 -397 -198
		mu 0 4 246 244 261 254
		mc 0 4 423 816 825 437
		f 4 401 402 403 -401
		mu 0 4 245 238 256 262
		mc 0 4 817 818 820 826
		f 4 404 -205 405 -403
		mu 0 4 239 241 253 257
		mc 0 4 819 425 440 821
		f 4 -404 406 407 -398
		mu 0 4 262 256 271 282
		mc 0 4 827 822 828 831
		f 4 -406 -210 408 -407
		mu 0 4 257 253 274 272
		mc 0 4 823 441 449 829
		f 4 409 410 411 412
		mu 0 4 514 532 533 509
		mc 0 4 832 841 838 835
		f 4 413 414 415 -410
		mu 0 4 566 543 552 571
		mc 0 4 833 844 856 842
		f 4 416 417 418 419
		mu 0 4 553 463 464 544
		mc 0 4 852 866 863 848
		f 4 -416 420 421 -411
		mu 0 4 561 547 550 557
		mc 0 4 843 857 853 839
		f 4 -422 -420 422 -412
		mu 0 4 573 553 544 559
		mc 0 4 840 854 849 836
		f 4 -423 423 -414 -413
		mu 0 4 579 554 546 585
		mc 0 4 837 850 845 834
		f 4 -419 424 425 -424
		mu 0 4 554 469 471 546
		mc 0 4 851 864 860 846
		f 4 -426 426 427 -415
		mu 0 4 543 465 461 552
		mc 0 4 847 861 869 858
		f 4 -428 428 -417 -421
		mu 0 4 547 458 455 550
		mc 0 4 859 870 867 855
		f 4 -326 -319 -330 -328
		mu 0 4 427 441 443 429
		mc 0 4 684 687 690 693
		f 4 -425 -418 -429 -427
		mu 0 4 439 425 426 437
		mc 0 4 862 865 868 871
		f 4 429 430 431 432
		mu 0 4 430 428 442 444
		mc 0 4 928 937 934 931
		f 4 433 434 435 436
		mu 0 4 424 423 440 438
		mc 0 4 872 881 878 875
		f 4 -257 437 -256 438
		mu 0 4 220 221 146 171
		mc 0 4 552 102 98 544
		f 4 -251 439 -254 440
		mu 0 4 209 213 157 173
		mc 0 4 528 520 516 536
		f 4 -243 441 -237 442
		mu 0 4 206 198 152 172
		mc 0 4 532 498 495 524
		f 4 -252 -443 -253 -36
		mu 0 4 210 206 172 150
		mc 0 4 513 533 525 509
		f 4 -245 -439 -249 -440
		mu 0 4 213 220 171 157
		mc 0 4 521 553 545 517
		f 4 -442 -242 443 -238
		mu 0 4 153 201 202 154
		mc 0 4 496 499 504 501
		f 4 -241 -441 -239 -444
		mu 0 4 205 209 173 158
		mc 0 4 505 529 537 502
		f 4 -258 -38 -255 444
		mu 0 4 217 215 169 145
		mc 0 4 88 541 549 84
		f 4 -48 445 -54 446
		mu 0 4 211 216 162 147
		mc 0 4 110 138 146 106
		f 4 -64 447 -60 -438
		mu 0 4 221 219 164 146
		mc 0 4 103 150 142 99
		f 4 -56 448 -57 449
		mu 0 4 212 208 167 148
		mc 0 4 118 126 134 114
		f 4 450 -44 451 -42
		mu 0 4 151 199 207 166
		mc 0 4 77 80 130 122
		f 4 -55 -447 -58 -452
		mu 0 4 207 211 147 166
		mc 0 4 131 111 107 123
		f 4 -50 -450 -52 -448
		mu 0 4 219 212 148 164
		mc 0 4 151 119 115 143
		f 4 -45 -451 -41 452
		mu 0 4 204 203 155 156
		mc 0 4 94 81 78 91
		f 4 -46 -453 -40 -449
		mu 0 4 208 200 149 167
		mc 0 4 127 95 92 135
		f 4 -63 -445 -61 -446
		mu 0 4 216 217 145 162
		mc 0 4 139 89 85 147
		f 4 453 454 455 456
		mu 0 4 483 477 453 445
		mc 0 4 920 893 890 916
		f 4 457 458 459 -434
		mu 0 4 527 505 503 521
		mc 0 4 873 896 924 882
		f 4 460 461 -454 462
		mu 0 4 495 479 477 493
		mc 0 4 900 884 894 921
		f 4 -456 463 464 465
		mu 0 4 434 453 451 432
		mc 0 4 917 891 887 904
		f 4 -462 466 -464 -455
		mu 0 4 477 479 451 453
		mc 0 4 895 885 888 892
		f 4 -460 467 468 -435
		mu 0 4 481 485 447 473
		mc 0 4 883 925 912 879
		f 4 -469 469 470 -436
		mu 0 4 367 406 403 365
		mc 0 4 880 913 908 876
		f 4 -471 471 -458 -437
		mu 0 4 475 459 491 489
		mc 0 4 877 909 897 874
		f 4 472 -472 473 474
		mu 0 4 487 491 459 449
		mc 0 4 901 898 910 905
		f 4 475 -468 476 -457
		mu 0 4 445 447 485 483
		mc 0 4 918 914 926 922
		f 4 -474 -470 -476 -466
		mu 0 4 432 403 406 434
		mc 0 4 906 911 915 919
		f 4 -477 -459 -473 -463
		mu 0 4 493 503 505 495
		mc 0 4 923 927 899 902
		f 4 -465 -467 -461 -475
		mu 0 4 449 451 479 487
		mc 0 4 907 889 886 903
		f 4 477 478 479 480
		mu 0 4 484 478 454 446
		mc 0 4 976 949 946 972
		f 4 481 482 483 -430
		mu 0 4 528 506 504 523
		mc 0 4 929 952 980 938
		f 4 484 485 -478 486
		mu 0 4 496 480 478 494
		mc 0 4 956 940 950 977
		f 4 -480 487 488 489
		mu 0 4 435 454 452 433
		mc 0 4 973 947 943 960
		f 4 -486 490 -488 -479
		mu 0 4 478 480 452 454
		mc 0 4 951 941 944 948
		f 4 -484 491 492 -431
		mu 0 4 482 486 448 474
		mc 0 4 939 981 968 935
		f 4 -493 493 494 -432
		mu 0 4 368 407 404 366
		mc 0 4 936 969 964 932
		f 4 -495 495 -482 -433
		mu 0 4 476 460 492 490
		mc 0 4 933 965 953 930
		f 4 496 -496 497 498
		mu 0 4 488 492 460 450
		mc 0 4 957 954 966 961
		f 4 499 -492 500 -481
		mu 0 4 446 448 486 484
		mc 0 4 974 970 982 978
		f 4 -498 -494 -500 -490
		mu 0 4 433 404 407 435
		mc 0 4 962 967 971 975
		f 4 -501 -483 -497 -487
		mu 0 4 494 504 506 496
		mc 0 4 979 983 955 958
		f 4 -489 -491 -485 -499
		mu 0 4 450 452 480 488
		mc 0 4 963 945 942 959;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "directionalLight1";
	rename -uid "47D2DB66-450A-B925-923E-0B8FE2471F3F";
	setAttr ".r" -type "double3" -37.828668745101439 -40.946058304205515 17.313400798328104 ;
createNode directionalLight -n "directionalLightShape1" -p "directionalLight1";
	rename -uid "290BE99E-429C-ECFE-1EB7-469FBEDDD5D3";
	setAttr -k off ".v";
	setAttr ".in" 10;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "FA4F889C-4132-7478-B677-5F896ABF880D";
	setAttr -s 7 ".lnk";
	setAttr -s 7 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "CF02D3D6-40DD-F7A6-E769-06A7CB6DF934";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "C8631BBE-45AD-4272-F2D2-48BED37C2DA9";
createNode displayLayerManager -n "layerManager";
	rename -uid "61B9096A-4412-F4FD-29BA-7382866A7970";
	setAttr ".cdl" 2;
	setAttr -s 4 ".dli[1:3]"  1 2 3;
	setAttr -s 4 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "5F0B536F-4DAA-5C94-ED1E-55AA898269C6";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "46A41B86-4D01-AA2D-1EF0-5693ADCDC5B5";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "C415077C-4DEA-886A-58A8-0A9FA6ED3420";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "ECD97816-4FF2-633A-16C6-028806399A87";
	addAttr -ci true -sn "ARV_options" -ln "ARV_options" -dt "string";
	setAttr ".version" -type "string" "5.3.1.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "BF2F2CDE-4469-8B99-FDFF-B392DD5D70D7";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "88EBB5F0-40D8-5E84-44DD-4A8A3EEF2576";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "CFB78182-46B6-E7DC-3E63-8A99735EAD5A";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode phong -n "GolemMat1";
	rename -uid "B556E46A-4FC7-5C2E-3C81-B4873C8D902F";
	setAttr ".dc" 1;
	setAttr ".sc" -type "float3" 0 0 0 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.80000001 0.80000001 0.80000001 ;
	setAttr ".cp" 2;
createNode shadingEngine -n "GolemSG";
	rename -uid "7442D8E2-4831-8B36-AF1E-C48C42553CBD";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "788D2C2C-438F-D9EF-A2EE-59BC45E969A1";
createNode file -n "base_color_texture";
	rename -uid "74D63B5B-4DE2-B4BB-3E42-10BFA66221E2";
	setAttr ".ftn" -type "string" "C:/Users/jaden/OneDrive/Documents/School Repos/GoldTeamProject/GoldTeamProjMain/Assets/2D Assets/RawTextures/GolemTex.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "A0A75FB6-45CD-A8AF-8FFF-AA85B0A08A3A";
createNode phong -n "GolemMat1FBXASC046001";
	rename -uid "63D461E3-49FD-A5CB-67AF-FAADCF39452E";
	setAttr ".dc" 1;
	setAttr ".sc" -type "float3" 0 0 0 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.80000001 0.80000001 0.80000001 ;
	setAttr ".cp" 2;
createNode shadingEngine -n "GolemFBXASC046001SG";
	rename -uid "4FBB145F-4403-1382-EB2E-FD9953A0E761";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "34F32690-420C-2892-17D8-9A9F9BA7106C";
createNode file -n "base_color_texture_ncl1_1";
	rename -uid "B5566B41-45B3-6AB7-6489-CF92626C4C8B";
	setAttr ".ftn" -type "string" "C:/Users/jaden/OneDrive/Documents/School Repos/GoldTeamProject/GoldTeamProjMain/Assets/2D Assets/RawTextures/GolemTex.png";
	setAttr ".ft" 0;
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "D946BF62-43D0-4F44-1852-22AC05D4E71C";
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "4383F134-4CAF-EA30-1776-D6854726F41F";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".r" 3;
createNode makeNurbCircle -n "makeNurbCircle2";
	rename -uid "B9E258F8-4D2A-DD1C-A51C-76A173AC83BB";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".r" 3;
createNode makeNurbCircle -n "makeNurbCircle3";
	rename -uid "105DC507-4A6C-83F2-F19A-4E994E685B25";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".r" 3;
createNode makeNurbCircle -n "makeNurbCircle4";
	rename -uid "95F6B2AF-4250-E372-DD73-85A93F651847";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".r" 3;
createNode makeNurbCircle -n "makeNurbCircle5";
	rename -uid "B47BCBF7-4A89-0D20-2529-FDA68EDEFD6A";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".r" 3;
createNode makeNurbCircle -n "makeNurbCircle6";
	rename -uid "BEE8A6A8-4A32-CA5F-7B40-42A778D39423";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".r" 3;
createNode makeNurbCircle -n "makeNurbCircle7";
	rename -uid "1788332A-410B-9982-76AD-A1BA39282B5E";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".r" 3;
createNode makeNurbCircle -n "makeNurbCircle8";
	rename -uid "790D828B-4E9E-5ABF-0D26-9589366D0FC2";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".r" 3;
createNode makeNurbCircle -n "makeNurbCircle9";
	rename -uid "11636312-46A0-77B6-17DA-23B4A8D98167";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".r" 3;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "801A9C11-4982-21A9-207C-B4981C2185C5";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 218\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 217\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1178\n            -height 579\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"all\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1226\n            -height 686\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n"
		+ "            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n"
		+ "            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n"
		+ "            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 0\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 0\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -excludeObjectPreset \"All\" \n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n"
		+ "            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1226\\n    -height 686\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1226\\n    -height 686\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "C7F21478-4657-89B3-43CD-F0B846E4C6B9";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 541 -ast 0 -aet 541 ";
	setAttr ".st" 6;
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "E66D7B24-445B-3BDB-8468-6F8DC98ED37B";
createNode makeNurbCircle -n "makeNurbCircle10";
	rename -uid "A3C4974F-4DD3-D822-3810-7D99ADC04C27";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".r" 3;
createNode makeNurbCircle -n "makeNurbCircle11";
	rename -uid "B964AE3E-4AA3-D73B-6C1B-09A276E753AC";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".tol" 1e-06;
createNode dagPose -n "bindPose1";
	rename -uid "1DEF7F6E-4921-F0B4-1AA6-D9843E97F994";
	setAttr -s 24 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[24]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 24 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 -8.1388374769536163e-34 3.6655314603278048e-18
		 -4.4407407575357535e-16 0 1.2298974638724758e-07 3.3799967765808105 0.044305413961411633 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 2.501755730136752e-08 0.99999148366534152 0.004127056673742655 1.0324975613082475e-10 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.3574652853052969e-12
		 1.3360549071315564 -0.18468281596023783 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 9.1967002603552135e-16
		 1.2196957406718427 0.1846828159602496 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 0.99999999999999989 0.0021330161236717358
		 -0.00012501158903266272 0.020550600354480784 0 -1.0497685528288634 0.035977536549194333
		 -0.11124692396390927 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.70736581510210406 -0.0069078695282170366 0.70681308936036935 -0.0010684906961879737 1
		 1 1 no;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 7.031407301503845e-18 2.9627807045019292e-16
		 -1.9003351557413238e-18 0 -0.22926118964243897 -0.00024554472942472927 2.1025754358178195 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0056158869326456955 0.047098891781122573 0.00026893779776433692 0.99887440846154973 1
		 1 1.0000000000000002 no;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.46073648987394233 -0.00017878567465157147
		 1.676891381307875 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0038074543534034966 0.0032955933193304673 -0.00037534794869761818 0.99998725065369587 1
		 1 1 no;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.3114509478384662e-15
		 1.7763568394002505e-15 0.65994801647308954 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.70660017692715593 0.026761725776040617 0.026761725776040617 0.70660017692715593 1
		 1 1 no;
	setAttr ".xm[8]" -type "matrix" "xform" 0.99999999999999989 0.99999999999999989 0.99999999999999978 -0.0015040086992971478
		 -6.7839276935950692e-05 -0.015505781311795889 0 1.0497702526750605 0.035979049441134947
		 -0.11124712675797242 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0069080067972270287 0.70736586253963085 -0.0010686273330809959 0.70681304033759651 1
		 1 1 no;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 4.2571752548630649e-17 -2.1472959167030386e-15
		 -1.5576505439541768e-17 0 -0.22926120753010271 0.00024548193196238799 2.1025698737441467 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0056144914225749179 0.047098479862275604 -0.0002688694045947514 0.99887443574754275 1.0000000000000002
		 1.0000000000000002 1.0000000000000002 no;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.43547338219889453 -0.0051901148669850627
		 1.69795945407949 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0038064935868990044 0.0032961671704024777 0.00037525278507442866 0.99998725245570252 1
		 1 1 no;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.4694469519536142e-17
		 0 0.6599500674293477 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.70565973855263331 -0.045220200317310028 -0.098466277553192066 0.70021700854371505 1
		 1 1 no;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 -1.6653345369377348e-16 -2.7755575615628914e-16
		 -5.5511151231257802e-17 0 0.00024457745947726581 0.42477664863350029 -0.81033310941924097 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.46791099988298063 -0.53087817024536399 0.46718200379983243 0.53006475063997305 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.3487369939548124 -2.2204460492503131e-16
		 2.4633073358870661e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 -6.6613381477509373e-16 -7.2164496600635175e-16
		 -2.2204460492503101e-16 0 0.00027543065701191071 0.25595847528904159 -0.83170599579991344 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.46791099988298079 -0.53087817024536421 0.46718200379983227 0.53006475063997271 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.17016573355267628 -2.2204460492503131e-16
		 2.5370330836160804e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.9704669402545328e-23
		 -0.14501964200800144 -1.1067535776732029e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 1.6608936448392337e-13 -2.2204460492502665e-16
		 -5.5511151231276254e-17 0 0.58341211460395004 -0.022776103754396981 0.023409618105001133 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.5642278524243125 0.42798818685297657 -0.56346283754109261 -0.42542058386153592 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 3.9400340628992213e-14 -6.9898514060140767e-16
		 1.5092094240996839e-16 0 -9.1072982488782372e-17 -3.7747582837255322e-15 1.8619107772344083 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.086977322988843447 0.058195574772943792 -0.0055165979633396292 0.99449373427360099 1
		 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.3877787807814457e-16
		 2.2204460492503131e-16 1.4763992926328733 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.008630155861654689 0.77403895176852311 0.63302033231335642 0.0086302046775897975 1
		 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 0.99999999999999978 0.99999999999999978
		 1 2.3481216970822058e-14 2.2204460492503126e-16 2.6069387727225614e-30 0 -0.58341163857351386
		 -0.02277250990475288 0.023409678479495509 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.42798879355491481 -0.56422739559998292 0.42542119616240204 0.56346237185957659 1
		 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 -9.0611329203738032e-14 -3.7459185059373197e-16
		 2.1510571102114099e-16 0 -8.8731105796213683e-16 -3.9745984281580604e-14 1.8619121591225587 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.086976551429958152 0.058195545607739638 0.005516545875365356 0.99449380374860763 1
		 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 2.2204460492503131e-16 4.4408920985006262e-16
		 4.9303806576313238e-32 0 2.7755575615628914e-17 -6.6613381477509392e-16 1.4764002466912762 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 3.4975012119160796e-15 -0.70710678118654746 -0.70710678118654768 3.4975012119160803e-15 1
		 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 24 ".m";
	setAttr -s 24 ".p";
	setAttr -s 24 ".g";
	setAttr ".g[0]" yes;
	setAttr ".g[24]" yes;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster1";
	rename -uid "1DA00600-4F7A-3C97-5FD2-F0B5C87F89C8";
	setAttr ".en" 0;
	setAttr -s 8 ".wl";
	setAttr ".wl[0:7].w"
		1 11 1
		1 7 1
		1 7 1
		1 7 1
		1 1 1
		1 1 1
		1 1 1
		1 2 1;
	setAttr -s 22 ".pm";
	setAttr ".pm[0]" -type "matrix" -0.99999999999999889 5.0033836251764216e-08 4.1299550728539256e-10 0
		 5.0035540722144621e-08 0.99996593480642226 0.0082540430526937304 0 -5.1698788284564241e-26 0.0082540430526937408 -0.9999659348064236 0
		 -4.613021996807924e-08 -3.3802473351306355 0.016405265777044462 1;
	setAttr ".pm[1]" -type "matrix" -0.99999999999999889 5.0033836251764216e-08 4.1299550728539256e-10 0
		 5.0035540722144621e-08 0.99996593480642226 0.0082540430526937304 0 -5.1698788284564241e-26 0.0082540430526937408 -0.9999659348064236 0
		 -4.6125862502793948e-08 -4.7163022422621914 0.20108808173728229 1;
	setAttr ".pm[2]" -type "matrix" -0.99999999999999889 5.0033836251764216e-08 4.1299550728539256e-10 0
		 5.0035540722144621e-08 0.99996593480642226 0.0082540430526937304 0 -5.1698788284564241e-26 0.0082540430526937408 -0.9999659348064236 0
		 -4.6125863422463994e-08 -5.9359979829340341 0.016405265777032677 1;
	setAttr ".pm[3]" -type "matrix" -0.00084177908934550427 -0.0091328862302655356 0.99995794001401395 0
		 -0.020540963285035619 -0.99974715718450491 -0.0091482527743493285 0 0.9997886577848778 -0.020547800140297199 0.00065396797080831696 0
		 -0.053375408698836987 5.982431893479367 -0.99521872477621076 1;
	setAttr ".pm[4]" -type "matrix" -0.094932559797356417 0.0021116899964835566 0.99548146635468848 0
		 -0.020655085186813988 -0.99978664955586727 0.00015108202608629252 0 0.99526939898011879 -0.02054741188597484 0.094955923030326572 0
		 0.47295212657213037 5.9474647158537879 -3.1342740050362914 1;
	setAttr ".pm[5]" -type "matrix" -0.10149058430739238 -0.0055401206534303497 0.99482107354040816 0
		 -0.019880009609657027 -0.99977351858460739 -0.0075958379967682238 0 0.99463784691457635 -0.020547958538468924 0.10135746092438064 0
		 0.039298426570051163 5.9841262675553413 -4.7655653668198603 1;
	setAttr ".pm[6]" -type "matrix" -0.10161888933896301 0.99482107354040805 -0.0021524333732014147 0
		 -0.09544528791943134 -0.0075958379967682238 0.99540569631638287 0 0.99023421388249988 0.10135746092438062 0.095722864413212289 0
		 0.49182133107863807 -5.425513383292949 -5.9640106749294741 1;
	setAttr ".pm[7]" -type "matrix" 0.00084224107181526486 -0.0097668850088438036 -0.99995194813911037 0
		 -0.015496642999285616 0.99983210079123663 -0.0097787669537373299 0 0.9998795650905814 0.015504134435912097 0.00069074573000869422 0
		 -0.083509413994456452 -5.9827138207605843 -0.99145549846457337 1;
	setAttr ".pm[8]" -type "matrix" 0.094932310598611319 0.00147486951912386 -0.99548263729927056 0
		 -0.015573648170035412 0.99987872338022699 -3.768778235553825e-06 0 0.99536190297151994 0.015503654131503838 0.094943766627862275 0
		 0.44259338265541687 -5.9477980231031138 -3.1333445997632898 1;
	setAttr ".pm[9]" -type "matrix" 0.10149099176052905 -0.0061750003127745033 -0.9948172937593126 0
		 -0.014797784922943247 0.99986073497263994 -0.0077159718342538694 0 0.9947263966301686 0.015504193984529485 0.10138548128825724 0
		 0.034346181940943576 -5.9792313284925847 -4.7857863895365913 1;
	setAttr ".pm[10]" -type "matrix" -0.10168154265366182 0.99481583825309239 0.0015204750474332586 0
		 -0.090076282639861296 -0.01072892208949525 0.99587707752341703 0 0.99073060273182045 0.10112535879588178 0.090700245970166918 0
		 -0.62519328817962982 5.4315691719053687 -5.9594984840833227 1;
	setAttr ".pm[11]" -type "matrix" 0.00018136232447026683 -0.0015340403412761885 0.99999880691325749 0
		 0.99308381138435409 0.11740759586298014 -3.9364670377517452e-16 0 -0.11740745578553397 0.99308262654922441 0.0015447239434280568 0
		 -6.2065642676704273 -1.6191074902872804 -0.0011138349404824384 1;
	setAttr ".pm[12]" -type "matrix" 0.00018136232447026683 -0.0015340403412761885 0.99999880691325749 0
		 0.99308381138435409 0.11740759586298014 -3.9364670377517452e-16 0 -0.11740745578553397 0.99308262654922441 0.0015447239434280568 0
		 -7.5553012616252389 -1.61910749028728 -0.0011138349404826845 1;
	setAttr ".pm[13]" -type "matrix" 0.00018136232447062635 -0.0015340403412772618 0.99999880691325749 0
		 0.99308381138435387 0.11740759586298002 -7.3050831876642055e-16 0 -0.11740745578553383 0.99308262654922441 0.001544723943428991 0
		 -6.0363985341177484 -1.6191074902872793 -0.0011138349404811022 1;
	setAttr ".pm[14]" -type "matrix" 0.00018136232447062635 -0.0015340403412772618 0.99999880691325749 0
		 0.99308381138435387 0.11740759586298002 -7.3050831876642055e-16 0 -0.11740745578553383 0.99308262654922441 0.001544723943428991 0
		 -6.2065642676704247 -1.6191074902872788 -0.0011138349404813562 1;
	setAttr ".pm[15]" -type "matrix" -0.99999999999999889 5.0033836251764216e-08 4.1299550728539256e-10 0
		 5.0035540722144621e-08 0.99996593480642226 0.0082540430526937304 0 -5.1698788284564241e-26 0.0082540430526937408 -0.9999659348064236 0
		 -4.6130219968079306e-08 -3.2352276931226336 0.016405265777045572 1;
	setAttr ".pm[16]" -type "matrix" 0.001328514986572053 0.96238307612961538 -0.27169293297255542 0
		 0.0047057722146670467 -0.27169618101714094 -0.9623715711348525 0 -0.9999880453064397 4.6620693416876691e-17 -0.0048897079877924165 0
		 0.0051696156677529005 1.4342626471103943 2.9331089237285899 1;
	setAttr ".pm[17]" -type "matrix" 0.012204964325376733 0.99494112566615478 -0.099715572023537827 0
		 0.12087650924555111 -0.10045972555290533 -0.98757111797300212 0 -0.99259251879027699 4.5033421436357912e-15 -0.12149111754187451 0
		 -0.14808619428836123 1.2264775324998389 1.29554037999946 1;
	setAttr ".pm[18]" -type "matrix" 0.012204871640694979 0.099714872157073683 0.99494119694529326 0
		 -0.12087644938055714 -0.98757119711141972 0.10045901961032368 0 0.9925925272202003 -0.12149104866868285 -8.9026008787129756e-15 0
		 0.17826896012964258 0.065736840265242222 1.2340119329369881 1;
	setAttr ".pm[19]" -type "matrix" -0.0013285035849668037 0.9623836907193053 0.27169075603655324 0
		 0.0047057725388472338 0.27169400405141297 -0.96237218573030459 0 -0.99998804532006158 4.9981720151581764e-16 -0.0048897052020176893 0
		 0.0051695602997312426 -1.4342567355141926 2.9331156377573038 1;
	setAttr ".pm[20]" -type "matrix" -0.012204871640705139 0.9949411969452866 0.099714872157137743 0
		 0.12087644938055629 0.10045901961038861 -0.98757119711141284 0 -0.99259252722020008 -1.1324274851176594e-14 -0.12149104866868296 0
		 -0.14808641838445927 -1.2264728091836661 1.295542689911753 1;
	setAttr ".pm[21]" -type "matrix" 0.012204871640695298 0.099714872157137507 0.9949411969452866 0
		 -0.12087644938055726 -0.98757119711141261 0.10045901961038696 0 0.99259252722019997 -0.12149104866868293 -1.5577816814271718e-15 0
		 0.14808641838447134 -0.18085755677952323 -1.2264728091836632 1;
	setAttr ".gm" -type "matrix" 0.00073521048905912146 8.2963287532531291e-06 0.9999997296983173 0
		 -0.011283565809120542 0.99993633854492514 -4.6600390190786242e-12 0 -0.99993606826045023 -0.01128356275915029 0.00073525729666097889 0
		 -1.0497700000527213 5.9707200000035803 0.17694099956646572 1;
	setAttr -s 22 ".ma";
	setAttr -s 22 ".dpf[0:21]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4;
	setAttr -s 22 ".lw";
	setAttr -s 22 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
	setAttr -s 22 ".ifcl";
	setAttr -s 22 ".ifcl";
createNode displayLayer -n "Geo_Layer";
	rename -uid "501DBC3C-4083-1F19-0FA8-C78D18F4BA37";
	setAttr ".dt" 2;
	setAttr ".c" 14;
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 1;
createNode displayLayer -n "Armature_Layer";
	rename -uid "D7B5EC65-49F9-7336-26E0-848B77E16ED6";
	setAttr ".c" 13;
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 2;
createNode displayLayer -n "Control_Layer";
	rename -uid "1C1CB4E2-4D01-7789-F030-B78071A90ED7";
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 3;
createNode file -n "GolemMainTexture";
	rename -uid "C6403D41-41F8-8A04-6511-DA87F908AE56";
	setAttr ".ftn" -type "string" "C:/Users/jaden/OneDrive/Documents/School Repos/Animations/NeedleAnim/Needle1Repo/Textures/Golem/GolemTex_001.png";
	setAttr ".ufe" yes;
	setAttr ".ft" 0;
	setAttr ".cs" -type "string" "sRGB";
createNode rampShader -n "rampShader1";
	rename -uid "EF2AA26E-4746-28ED-192B-918F66EEF02E";
	setAttr -s 2 ".clr";
	setAttr ".clr[0].clrp" 0;
	setAttr ".clr[0].clrc" -type "float3" 0.23100001 0.23100001 0.23100001 ;
	setAttr ".clr[0].clri" 0;
	setAttr ".clr[1].clrp" 0.069565214216709137;
	setAttr ".clr[1].clrc" -type "float3" 1 1 1 ;
	setAttr ".clr[1].clri" 1;
	setAttr ".cin" 2;
	setAttr ".it[0].itp" 0;
	setAttr ".it[0].itc" -type "float3" 0 0 0 ;
	setAttr ".it[0].iti" 1;
	setAttr ".ic[0].icp" 0;
	setAttr ".ic[0].icc" -type "float3" 0 0 0 ;
	setAttr ".ic[0].ici" 1;
	setAttr ".spl" 0;
	setAttr -s 2 ".sro[0:1]"  0 1 2 0.5 0.5 2;
	setAttr ".sc[0].scp" 0;
	setAttr ".sc[0].scc" -type "float3" 0.5 0.5 0.5 ;
	setAttr ".sc[0].sci" 1;
	setAttr ".rfl[0]"  0 1 1;
	setAttr ".env[0].envp" 0;
	setAttr ".env[0].envc" -type "float3" 0 0 0 ;
	setAttr ".env[0].envi" 1;
createNode layeredShader -n "GolemShader";
	rename -uid "6DE847F3-419D-F505-0F5D-648A4AF9D13F";
	setAttr -s 2 ".cs";
	setAttr ".cs[0].c" -type "float3" 0 0 0 ;
	setAttr ".cs[0].g" -type "float3" 0 0 0 ;
	setAttr ".cs[1].t" -type "float3" 0 0 0 ;
	setAttr ".cs[1].g" -type "float3" 0 0 0 ;
createNode shadingEngine -n "layeredShader1SG";
	rename -uid "8548B956-40AD-01EC-303B-46B9374DF3C7";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "1872C55F-47D4-4B57-E3A4-F5A588CE8C37";
createNode phong -n "GolemMat2";
	rename -uid "5FBA1B02-4E59-79F8-9279-D1B6D2DACAC2";
	setAttr ".dc" 1;
	setAttr ".sc" -type "float3" 0 0 0 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.80000001 0.80000001 0.80000001 ;
	setAttr ".cp" 2;
createNode shadingEngine -n "GolemSG1";
	rename -uid "0DE80EC7-4C46-8CD1-BB6E-CC9B59A57607";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "530CFE85-4AB4-F739-B131-50A2E816FD9F";
createNode file -n "base_color_texture1";
	rename -uid "CBF6C8CC-4F35-5D28-18CC-88857937F3E3";
	setAttr ".ftn" -type "string" "C:\\Users\\jaden\\OneDrive\\Documents\\School Repos\\GoldTeamProject\\GoldTeamProjMain\\Assets\\2D Assets\\RawTextures\\GolemTex.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture3";
	rename -uid "04193708-453E-13B1-4072-538EB84EC5AB";
createNode phong -n "GolemMat1FBXASC046002";
	rename -uid "FCC228E2-418C-BBCF-992F-F1B86254C780";
	setAttr ".dc" 1;
	setAttr ".sc" -type "float3" 0 0 0 ;
	setAttr ".rfl" 0;
	setAttr ".rc" -type "float3" 0.80000001 0.80000001 0.80000001 ;
	setAttr ".cp" 2;
createNode shadingEngine -n "GolemFBXASC046001SG1";
	rename -uid "1248F51B-4D76-5657-F25E-6380E0D80D13";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "FA8CD369-4CCF-E851-8A46-A29A3F61AAC0";
createNode file -n "base_color_texture_ncl1_2";
	rename -uid "B6D659B1-47C5-89D4-E5B2-F791A1D0D9DF";
	setAttr ".ftn" -type "string" "C:\\Users\\jaden\\OneDrive\\Documents\\School Repos\\GoldTeamProject\\GoldTeamProjMain\\Assets\\2D Assets\\RawTextures\\GolemTex.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture4";
	rename -uid "0AC60633-41E3-692B-9862-39B00588747F";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "51067243-47C2-2052-B4A2-FF93A824BF28";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" 47.223551974575784 -972.06696954500478 ;
	setAttr ".tgi[0].vh" -type "double2" 785.47855619600443 -267.86837176831466 ;
	setAttr -s 5 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 168.89350891113281;
	setAttr ".tgi[0].ni[0].y" -706.22198486328125;
	setAttr ".tgi[0].ni[0].nvs" 2066;
	setAttr ".tgi[0].ni[1].x" 99.36663818359375;
	setAttr ".tgi[0].ni[1].y" -369.03713989257812;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 850.65557861328125;
	setAttr ".tgi[0].ni[2].y" -388.05435180664062;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" 366.38436889648438;
	setAttr ".tgi[0].ni[3].y" -263.33499145507812;
	setAttr ".tgi[0].ni[3].nvs" 18306;
	setAttr ".tgi[0].ni[4].x" 630.25775146484375;
	setAttr ".tgi[0].ni[4].y" -389.08511352539062;
	setAttr ".tgi[0].ni[4].nvs" 18306;
createNode animCurveUU -n "GolemMainTexture_frameOffset";
	rename -uid "E86D8304-47A3-9D0E-D030-3C90BFB581B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 1;
createNode skinCluster -n "skinCluster2";
	rename -uid "B3A29BA9-406E-18D2-E34C-9E89DA450A9C";
	setAttr -s 282 ".wl";
	setAttr ".wl[0:281].w"
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		2 1 0.030907775671495285 7 0.96909222432850473
		2 1 0.016880381381623188 7 0.98311961861837682
		2 1 0.035276277810290739 7 0.96472372218970925
		1 7 1
		1 7 1
		2 1 0.027687813714735741 7 0.97231218628526428
		2 1 0.020094844620064931 7 0.97990515537993506
		2 1 0.028491878300456575 7 0.97150812169954337
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		2 15 0.99494999086634195 20 0.0050500091336580649
		2 15 0.98836383035595698 20 0.011636169644042973
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		2 16 0.99941250403448612 19 0.00058749596551388331
		2 16 0.99908838037247716 19 0.00091161962752287114
		2 16 0.99958834080917369 19 0.00041165919082632651
		2 16 0.99929156914635719 19 0.00070843085364279341
		2 16 0.99276531590340933 19 0.0072346840965907024
		2 16 0.9868314206283807 19 0.013168579371619322
		2 16 0.99192433113673828 19 0.0080756688632617306
		2 16 0.98513705213989677 19 0.014862947860103226
		2 16 0.99993605218822446 19 6.394781177557687e-05
		1 16 1
		1 16 1
		2 16 0.99993898636047507 19 6.1013639524910236e-05
		2 17 0.99995369901363129 19 4.6300986368737746e-05
		1 17 1
		2 17 0.99995054024888319 19 4.9459751116776729e-05
		1 17 1
		2 17 0.99976895165534896 19 0.00023104834465109252
		3 17 0.99917478374671342 19 0.00042012187496753768 20 0.00040509437831903565
		2 17 0.99975451759375966 19 0.00024548240624037201
		3 17 0.99919029550658101 19 0.0004149251264008296 20 0.00039477936701818461
		3 17 0.99999995863429214 20 2.0892493674226418e-08 21 2.0473214244025672e-08
		3 17 0.99999994580693075 20 2.7363777997193967e-08 21 2.6829291291146279e-08
		3 17 0.99999994471233622 20 2.7917382719158832e-08 21 2.7370281067519372e-08
		3 17 0.99999995175276246 20 2.4369148841660904e-08 21 2.3878088754833757e-08
		2 1 0.19078406995827946 15 0.80921593004172054
		2 1 0.24136852199071912 15 0.75863147800928088
		2 1 0.045338690280914307 15 0.95466130971908569
		2 1 0.092934787273406982 15 0.90706521272659302
		3 1 0.90167012025378535 2 0.06478254190715016 15 0.033547337839064467
		2 1 0.9739753222893619 2 0.026024677710638086
		3 1 0.97584432525868525 2 0.013622406531635078 15 0.010533268209679666
		3 1 0.96322006626719703 2 0.019092012116558234 15 0.017687921616244679
		2 1 0.58427683430421296 2 0.41572316569578704
		2 1 0.57662191866073742 2 0.42337808133926258
		2 1 0.6987445199033544 2 0.3012554800966456
		3 1 0.75482652720865273 2 0.24441869667162713 3 0.00075477611972019076
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		2 3 0.0036132894456386566 11 0.99638671055436134
		1 11 1
		2 3 0.0031880147289484739 11 0.99681198527105153
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		2 3 1.2034699466312304e-05 11 0.99998796530053369
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		2 3 0.00038565127761103213 13 0.99961434872238897
		2 3 5.4780888604000211e-05 13 0.999945219111396
		1 13 1
		1 13 1
		1 13 1
		2 3 3.4753143154375721e-06 13 0.99999652468568456
		1 13 1
		1 13 1
		1 13 1
		2 3 0.001568782958202064 13 0.99843121704179794
		1 13 1
		2 3 9.6716619736980647e-05 13 0.99990328338026302
		1 13 1
		1 13 1
		2 3 0.0062412619590759277 13 0.99375873804092407
		1 13 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		2 15 0.99170786409470613 20 0.0082921359052938737
		2 15 0.99803046077671775 20 0.0019695392232822297
		2 15 0.98363195825998262 20 0.016368041740017342
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 19 1
		1 19 1
		1 19 1
		1 19 1
		1 19 1
		1 19 1
		1 19 1
		1 19 1
		1 19 1
		1 19 1
		1 19 1
		1 19 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		2 1 0.022012412548065186 15 0.97798758745193481
		2 1 0.017842051846824192 15 0.98215794815317581
		4 1 0.89361475014292002 2 0.068046022892240196 3 0.0047915992327034473 
		15 0.033547627732136348
		3 1 0.97344522160083879 2 0.026544946251208474 3 9.8321479526930489e-06
		3 1 0.3825798657644548 2 0.6114332737479351 3 0.0059868604876101017
		3 1 0.32188793545125038 2 0.67795110120145152 3 0.00016096334729809314
		2 2 2.1272943117712567e-05 8 0.99997872705688229
		2 2 3.8123386849557888e-05 8 0.99996187661315039
		2 2 8.1577780964933762e-05 8 0.99991842221903504
		2 2 5.3824929371432654e-05 8 0.99994617507062855
		2 2 0.00099582659987564721 8 0.99900417340012437
		2 2 0.0012792291991494372 8 0.99872077080085053
		2 2 0.001622491919379523 8 0.99837750808062042
		2 2 0.0014153279704215511 8 0.99858467202957846
		2 2 1.3582713867803205e-05 8 0.99998641728613225
		2 2 1.5440181826316449e-05 8 0.99998455981817369
		2 2 6.2411437292851612e-06 8 0.99999375885627073
		2 2 5.740787926302277e-06 8 0.99999425921207374
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		4 2 8.3868281237010463e-06 7 0.00018670619537155747 8 0.49522809804682072 
		9 0.50457680892968404
		4 2 1.204345629678798e-05 7 0.00025373914477860962 8 0.45139872733192843 
		9 0.54833549006699611
		4 2 1.0102788026238106e-05 7 0.00017126575315025235 8 0.42486195520152403 
		9 0.57495667625729951
		4 2 8.2903614081935793e-06 7 0.00014590187054739143 8 0.45694908035860304 
		9 0.54289672740944139
		4 2 9.8080667541483498e-06 7 0.00011713153644880949 8 0.012865980756916773 
		9 0.98700707963988021
		4 2 1.3390315553087094e-05 7 0.0001545791735767144 8 0.013599502940777112 
		9 0.98623252757009305
		4 2 1.184944413444734e-05 7 0.00011809357234874186 8 0.011360559219474826 
		9 0.98850949776404196
		4 2 9.9644197732404238e-06 7 0.000102146505777156 8 0.011042904796376278 
		9 0.98884498427807332
		4 2 5.0925552477824019e-05 7 0.00083563974514809731 8 0.22177131244866405 
		9 0.77734212225371002
		4 2 4.4308910274813246e-05 7 0.00064983754644098329 8 0.11684531826798498 
		9 0.88246053527529922
		4 2 5.0950971706520984e-05 7 0.00070664541190145944 8 0.088170253067876 
		9 0.91107215054851598
		4 2 6.0852428644649885e-05 7 0.00093968541572070569 8 0.16620558938827062 
		9 0.83279387276736405
		4 2 4.860729480009619e-05 7 0.00058284031871246478 8 0.13145471901874728 
		9 0.8679138333677402
		4 2 3.9880328642188669e-05 7 0.00043936586110763571 8 0.066633011602696884 
		9 0.93288774220755333
		4 2 3.8356898374623543e-05 7 0.00044106524893846845 8 0.08115868493328586 
		9 0.91836189291940107
		4 2 4.5906841107380533e-05 7 0.0005764509811275253 8 0.16207478992365534 
		9 0.83730285225410972;
	setAttr -s 22 ".pm";
	setAttr ".pm[0]" -type "matrix" -0.99999999999999889 5.0033836251764216e-08 4.129955072853925e-10 -0
		 5.0035540722144621e-08 0.99996593480642226 0.0082540430526937304 0 -5.1698788284564241e-26 0.0082540430526937408 -0.9999659348064236 0
		 -4.613021996807924e-08 -3.3802473351306355 0.016405265777044462 1;
	setAttr ".pm[1]" -type "matrix" -0.99999999999999889 5.0033836251764216e-08 4.129955072853925e-10 -0
		 5.0035540722144621e-08 0.99996593480642226 0.0082540430526937304 0 -5.1698788284564241e-26 0.0082540430526937408 -0.9999659348064236 0
		 -4.6125862502793948e-08 -4.7163022422621914 0.20108808173728229 1;
	setAttr ".pm[2]" -type "matrix" -0.99999999999999889 5.0033836251764216e-08 4.129955072853925e-10 -0
		 5.0035540722144621e-08 0.99996593480642226 0.0082540430526937304 0 -5.1698788284564241e-26 0.0082540430526937408 -0.9999659348064236 0
		 -4.6125863422463994e-08 -5.9359979829340341 0.016405265777032677 1;
	setAttr ".pm[3]" -type "matrix" -0.00084177908934550427 -0.0091328862302655356 0.99995794001401395 -0
		 -0.020540963285035619 -0.99974715718450491 -0.0091482527743493285 0 0.9997886577848778 -0.020547800140297199 0.00065396797080831696 -0
		 -0.053375408698836987 5.982431893479367 -0.99521872477621076 1;
	setAttr ".pm[4]" -type "matrix" -0.094932559797356417 0.0021116899964835566 0.99548146635468848 -0
		 -0.020655085186813988 -0.99978664955586727 0.00015108202608629252 0 0.99526939898011879 -0.02054741188597484 0.094955923030326572 -0
		 0.47295212657213037 5.9474647158537879 -3.1342740050362914 1;
	setAttr ".pm[5]" -type "matrix" -0.10149058430739238 -0.0055401206534303497 0.99482107354040816 -0
		 -0.019880009609657027 -0.99977351858460739 -0.0075958379967682238 0 0.99463784691457635 -0.020547958538468924 0.10135746092438064 -0
		 0.039298426570051163 5.9841262675553413 -4.7655653668198603 1;
	setAttr ".pm[6]" -type "matrix" -0.10161888933896301 0.99482107354040805 -0.0021524333732014147 -0
		 -0.09544528791943134 -0.0075958379967682238 0.99540569631638287 0 0.99023421388249988 0.10135746092438062 0.095722864413212289 -0
		 0.49182133107863807 -5.425513383292949 -5.9640106749294741 1;
	setAttr ".pm[7]" -type "matrix" 0.00084224107181532894 -0.0097668850088431097 -0.99995194813911037 -0
		 -0.015496642999292693 0.99983210079123663 -0.009778766953736643 0 0.9998795650905814 0.015504134435919173 0.00069074573000863578 -0
		 -0.083509413994414139 -5.9827138207605852 -0.99145549846457759 1;
	setAttr ".pm[8]" -type "matrix" 0.094932310598611375 0.0014748695191245519 -0.99548263729927056 -0
		 -0.015573648170042522 0.99987872338022699 -3.7687782355382125e-06 0 0.99536190297151994 0.015503654131510917 0.094943766627862289 -0
		 0.44259338265545939 -5.9477980231031138 -3.1333445997632903 1;
	setAttr ".pm[9]" -type "matrix" 0.10149099176052909 -0.0061750003127738103 -0.99481729375931238 -0
		 -0.014797784922950356 0.99986073497263972 -0.0077159718342538989 0 0.99472639663016837 0.015504193984536561 0.10138548128825718 -0
		 0.034346181940985841 -5.9792313284925847 -4.7857863895365895 1;
	setAttr ".pm[10]" -type "matrix" -0.10168154265366176 0.99481583825309206 0.0015204750474339522 -0
		 -0.090076282639868221 -0.010728922089496653 0.99587707752341614 0 0.99073060273181968 0.10112535879588171 0.090700245970173954 -0
		 -0.62519328817958819 5.4315691719053749 -5.9594984840833192 1;
	setAttr ".pm[11]" -type "matrix" 0.00018136232447026683 -0.0015340403412761885 0.99999880691325749 -0
		 0.99308381138435409 0.11740759586298014 -3.9364670377517452e-16 0 -0.11740745578553397 0.99308262654922441 0.0015447239434280568 -0
		 -6.2065642676704273 -1.6191074902872804 -0.0011138349404824384 1;
	setAttr ".pm[12]" -type "matrix" 0.00018136232447026683 -0.0015340403412761885 0.99999880691325749 -0
		 0.99308381138435409 0.11740759586298014 -3.9364670377517452e-16 0 -0.11740745578553397 0.99308262654922441 0.0015447239434280568 -0
		 -7.5553012616252389 -1.61910749028728 -0.0011138349404826845 1;
	setAttr ".pm[13]" -type "matrix" 0.00018136232447062635 -0.0015340403412772618 0.99999880691325749 -0
		 0.99308381138435387 0.11740759586298002 -7.3050831876642055e-16 0 -0.11740745578553383 0.99308262654922441 0.001544723943428991 -0
		 -6.0363985341177484 -1.6191074902872793 -0.0011138349404811022 1;
	setAttr ".pm[14]" -type "matrix" 0.00018136232447062635 -0.0015340403412772618 0.99999880691325749 -0
		 0.99308381138435387 0.11740759586298002 -7.3050831876642055e-16 0 -0.11740745578553383 0.99308262654922441 0.001544723943428991 -0
		 -6.2065642676704247 -1.6191074902872788 -0.0011138349404813562 1;
	setAttr ".pm[15]" -type "matrix" -0.99999999999999889 5.0033836251764216e-08 4.129955072853925e-10 -0
		 5.0035540722144621e-08 0.99996593480642226 0.0082540430526937304 0 -5.1698788284564241e-26 0.0082540430526937408 -0.9999659348064236 0
		 -4.6130219968079306e-08 -3.2352276931226336 0.016405265777045572 1;
	setAttr ".pm[16]" -type "matrix" 0.001328514986572053 0.96238307612961538 -0.27169293297255542 -0
		 0.0047057722146670467 -0.27169618101714094 -0.9623715711348525 0 -0.9999880453064397 4.6620693416876691e-17 -0.0048897079877924165 -0
		 0.0051696156677529005 1.4342626471103943 2.9331089237285899 1;
	setAttr ".pm[17]" -type "matrix" 0.012204964325376733 0.99494112566615478 -0.099715572023537827 -0
		 0.12087650924555111 -0.10045972555290533 -0.98757111797300212 0 -0.99259251879027699 4.5033421436357912e-15 -0.12149111754187451 -0
		 -0.14808619428836123 1.2264775324998392 1.29554037999946 1;
	setAttr ".pm[18]" -type "matrix" 0.012204871640694979 0.099714872157073683 0.99494119694529326 -0
		 -0.12087644938055714 -0.98757119711141972 0.10045901961032368 0 0.9925925272202003 -0.12149104866868285 -8.9026008787129756e-15 -0
		 0.17826896012964261 0.06573684026524225 1.2340119329369883 1;
	setAttr ".pm[19]" -type "matrix" -0.0013285035849668041 0.96238369071930552 0.27169075603655324 -0
		 0.0047057725388472355 0.27169400405141303 -0.96237218573030459 0 -0.9999880453200618 4.9981720151581784e-16 -0.0048897052020176893 0
		 0.0051695602997312443 -1.4342567355141931 2.9331156377573038 1;
	setAttr ".pm[20]" -type "matrix" -0.012204871640705139 0.99494119694528682 0.099714872157137716 -0
		 0.12087644938055629 0.10045901961038864 -0.98757119711141261 0 -0.99259252722020008 -1.1327744298128547e-14 -0.12149104866868293 0
		 -0.14808641838445843 -1.2264728091836641 1.2955426899117519 1;
	setAttr ".pm[21]" -type "matrix" 0.012204871640695296 0.099714872157137494 0.9949411969452866 -0
		 -0.12087644938055726 -0.98757119711141261 0.10045901961038696 0 0.99259252722019997 -0.12149104866868293 -1.5612511283791254e-15 -0
		 0.14808641838447051 -0.18085755677952403 -1.2264728091836612 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 22 ".ma";
	setAttr -s 22 ".dpf[0:21]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4;
	setAttr -s 22 ".lw";
	setAttr -s 22 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 22 ".ifcl";
	setAttr -s 22 ".ifcl";
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 7 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 11 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 4 ".u";
select -ne :defaultRenderingList1;
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 5 ".tx";
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".outf" 51;
	setAttr ".imfkey" -type "string" "exr";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultLightSet;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "Control_Layer.di" "Transform_Ctrl_Grp.do";
connectAttr "Transform_Ctrl.MasterScale" "Transform_Ctrl.sx";
connectAttr "Transform_Ctrl.MasterScale" "Transform_Ctrl.sy";
connectAttr "Transform_Ctrl.MasterScale" "Transform_Ctrl.sz";
connectAttr "makeNurbCircle2.oc" "ROOT_ctrlShape.cr";
connectAttr "makeNurbCircle8.oc" "Spine_ctrl_01Shape.cr";
connectAttr "makeNurbCircle3.oc" "Spine_ctrl_02Shape.cr";
connectAttr "makeNurbCircle4.oc" "Head_ctrl_01Shape.cr";
connectAttr "makeNurbCircle5.oc" "Jaw_ctrl_01Shape.cr";
connectAttr "skinCluster1.og[0]" "R_Arm_IK_Basae_CtrlShape.cr";
connectAttr "R_Arm_IK_Jnt_01.msg" "R_Arm_IKHandle.hsj";
connectAttr "effector2.hp" "R_Arm_IKHandle.hee";
connectAttr "ikRPsolver.msg" "R_Arm_IKHandle.hsv";
connectAttr "R_Arm_IKHandle_poleVectorConstraint1.ctx" "R_Arm_IKHandle.pvx";
connectAttr "R_Arm_IKHandle_poleVectorConstraint1.cty" "R_Arm_IKHandle.pvy";
connectAttr "R_Arm_IKHandle_poleVectorConstraint1.ctz" "R_Arm_IKHandle.pvz";
connectAttr "R_Arm_IKHandle.pim" "R_Arm_IKHandle_poleVectorConstraint1.cpim";
connectAttr "R_Arm_IK_Jnt_01.pm" "R_Arm_IKHandle_poleVectorConstraint1.ps";
connectAttr "R_Arm_IK_Jnt_01.t" "R_Arm_IKHandle_poleVectorConstraint1.crp";
connectAttr "R_Arm_IK_PV_Ctrl.t" "R_Arm_IKHandle_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "R_Arm_IK_PV_Ctrl.rp" "R_Arm_IKHandle_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "R_Arm_IK_PV_Ctrl.rpt" "R_Arm_IKHandle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "R_Arm_IK_PV_Ctrl.pm" "R_Arm_IKHandle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "R_Arm_IKHandle_poleVectorConstraint1.w0" "R_Arm_IKHandle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "makeNurbCircle11.oc" "L_Arm_IK_Base_CtrlShape.cr";
connectAttr "L_Arm_IK_Jnt_01.msg" "L_Arm_IKHandle.hsj";
connectAttr "effector1.hp" "L_Arm_IKHandle.hee";
connectAttr "ikRPsolver.msg" "L_Arm_IKHandle.hsv";
connectAttr "L_Arm_IKHandle_poleVectorConstraint1.ctx" "L_Arm_IKHandle.pvx";
connectAttr "L_Arm_IKHandle_poleVectorConstraint1.cty" "L_Arm_IKHandle.pvy";
connectAttr "L_Arm_IKHandle_poleVectorConstraint1.ctz" "L_Arm_IKHandle.pvz";
connectAttr "L_Arm_IKHandle.pim" "L_Arm_IKHandle_poleVectorConstraint1.cpim";
connectAttr "L_Arm_IK_Jnt_01.pm" "L_Arm_IKHandle_poleVectorConstraint1.ps";
connectAttr "L_Arm_IK_Jnt_01.t" "L_Arm_IKHandle_poleVectorConstraint1.crp";
connectAttr "L_Arm_IK_PV_Ctrl.t" "L_Arm_IKHandle_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "L_Arm_IK_PV_Ctrl.rp" "L_Arm_IKHandle_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "L_Arm_IK_PV_Ctrl.rpt" "L_Arm_IKHandle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "L_Arm_IK_PV_Ctrl.pm" "L_Arm_IKHandle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "L_Arm_IKHandle_poleVectorConstraint1.w0" "L_Arm_IKHandle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "makeNurbCircle10.oc" "Pelvis_ctrlShape.cr";
connectAttr "makeNurbCircle6.oc" "R_Leg_FK_ctrl_01Shape.cr";
connectAttr "makeNurbCircle7.oc" "R_Leg_FK_ctrl_02Shape.cr";
connectAttr "makeNurbCircle1.oc" "L_Leg_FK_ctrl_01Shape.cr";
connectAttr "makeNurbCircle9.oc" "L_Leg_FK_ctrl_02Shape.cr";
connectAttr "Armature_Layer.di" "Skeleton_Grp.do";
connectAttr "ROOT_Jnt_parentConstraint1.ctx" "ROOT_Jnt.tx";
connectAttr "ROOT_Jnt_parentConstraint1.cty" "ROOT_Jnt.ty";
connectAttr "ROOT_Jnt_parentConstraint1.ctz" "ROOT_Jnt.tz";
connectAttr "ROOT_Jnt_parentConstraint1.crx" "ROOT_Jnt.rx";
connectAttr "ROOT_Jnt_parentConstraint1.cry" "ROOT_Jnt.ry";
connectAttr "ROOT_Jnt_parentConstraint1.crz" "ROOT_Jnt.rz";
connectAttr "ROOT_Jnt.s" "Spine_Jnt_01.is";
connectAttr "Spine_Jnt_01_parentConstraint1.ctx" "Spine_Jnt_01.tx";
connectAttr "Spine_Jnt_01_parentConstraint1.cty" "Spine_Jnt_01.ty";
connectAttr "Spine_Jnt_01_parentConstraint1.ctz" "Spine_Jnt_01.tz";
connectAttr "Spine_Jnt_01_parentConstraint1.crx" "Spine_Jnt_01.rx";
connectAttr "Spine_Jnt_01_parentConstraint1.cry" "Spine_Jnt_01.ry";
connectAttr "Spine_Jnt_01_parentConstraint1.crz" "Spine_Jnt_01.rz";
connectAttr "Spine_Jnt_01_scaleConstraint1.csx" "Spine_Jnt_01.sx";
connectAttr "Spine_Jnt_01_scaleConstraint1.csy" "Spine_Jnt_01.sy";
connectAttr "Spine_Jnt_01_scaleConstraint1.csz" "Spine_Jnt_01.sz";
connectAttr "Spine_Jnt_01.s" "Spine_Jnt_02.is";
connectAttr "Spine_Jnt_02_parentConstraint1.ctx" "Spine_Jnt_02.tx";
connectAttr "Spine_Jnt_02_parentConstraint1.cty" "Spine_Jnt_02.ty";
connectAttr "Spine_Jnt_02_parentConstraint1.ctz" "Spine_Jnt_02.tz";
connectAttr "Spine_Jnt_02_parentConstraint1.crx" "Spine_Jnt_02.rx";
connectAttr "Spine_Jnt_02_parentConstraint1.cry" "Spine_Jnt_02.ry";
connectAttr "Spine_Jnt_02_parentConstraint1.crz" "Spine_Jnt_02.rz";
connectAttr "Spine_Jnt_02_scaleConstraint1.csx" "Spine_Jnt_02.sx";
connectAttr "Spine_Jnt_02_scaleConstraint1.csy" "Spine_Jnt_02.sy";
connectAttr "Spine_Jnt_02_scaleConstraint1.csz" "Spine_Jnt_02.sz";
connectAttr "L_Arm_IK_Jnt_01_parentConstraint1.ctx" "L_Arm_IK_Jnt_01.tx";
connectAttr "L_Arm_IK_Jnt_01_parentConstraint1.cty" "L_Arm_IK_Jnt_01.ty";
connectAttr "L_Arm_IK_Jnt_01_parentConstraint1.ctz" "L_Arm_IK_Jnt_01.tz";
connectAttr "Spine_Jnt_02.s" "L_Arm_IK_Jnt_01.is";
connectAttr "L_Arm_IK_Jnt_01_scaleConstraint1.csx" "L_Arm_IK_Jnt_01.sx";
connectAttr "L_Arm_IK_Jnt_01_scaleConstraint1.csy" "L_Arm_IK_Jnt_01.sy";
connectAttr "L_Arm_IK_Jnt_01_scaleConstraint1.csz" "L_Arm_IK_Jnt_01.sz";
connectAttr "L_Arm_IK_Jnt_01_parentConstraint1.crx" "L_Arm_IK_Jnt_01.rx";
connectAttr "L_Arm_IK_Jnt_01_parentConstraint1.cry" "L_Arm_IK_Jnt_01.ry";
connectAttr "L_Arm_IK_Jnt_01_parentConstraint1.crz" "L_Arm_IK_Jnt_01.rz";
connectAttr "L_Arm_IK_Jnt_01.s" "L_Arm_IK_Jnt_02.is";
connectAttr "L_Arm_IK_Jnt_02.s" "L_Arm_IK_Jnt_03.is";
connectAttr "L_Arm_IK_Jnt_03.s" "L_Arm_IK_Jnt_04.is";
connectAttr "L_Arm_IK_Jnt_03.tx" "effector1.tx";
connectAttr "L_Arm_IK_Jnt_03.ty" "effector1.ty";
connectAttr "L_Arm_IK_Jnt_03.tz" "effector1.tz";
connectAttr "L_Arm_IK_Jnt_03.opm" "effector1.opm";
connectAttr "L_Arm_IK_Jnt_01.ro" "L_Arm_IK_Jnt_01_parentConstraint1.cro";
connectAttr "L_Arm_IK_Jnt_01.pim" "L_Arm_IK_Jnt_01_parentConstraint1.cpim";
connectAttr "L_Arm_IK_Jnt_01.rp" "L_Arm_IK_Jnt_01_parentConstraint1.crp";
connectAttr "L_Arm_IK_Jnt_01.rpt" "L_Arm_IK_Jnt_01_parentConstraint1.crt";
connectAttr "L_Arm_IK_Jnt_01.jo" "L_Arm_IK_Jnt_01_parentConstraint1.cjo";
connectAttr "L_Arm_IK_Base_Ctrl.t" "L_Arm_IK_Jnt_01_parentConstraint1.tg[0].tt";
connectAttr "L_Arm_IK_Base_Ctrl.rp" "L_Arm_IK_Jnt_01_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Arm_IK_Base_Ctrl.rpt" "L_Arm_IK_Jnt_01_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Arm_IK_Base_Ctrl.r" "L_Arm_IK_Jnt_01_parentConstraint1.tg[0].tr";
connectAttr "L_Arm_IK_Base_Ctrl.ro" "L_Arm_IK_Jnt_01_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Arm_IK_Base_Ctrl.s" "L_Arm_IK_Jnt_01_parentConstraint1.tg[0].ts";
connectAttr "L_Arm_IK_Base_Ctrl.pm" "L_Arm_IK_Jnt_01_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Arm_IK_Jnt_01_parentConstraint1.w0" "L_Arm_IK_Jnt_01_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Arm_IK_Jnt_01.ssc" "L_Arm_IK_Jnt_01_scaleConstraint1.tsc";
connectAttr "L_Arm_IK_Jnt_01.pim" "L_Arm_IK_Jnt_01_scaleConstraint1.cpim";
connectAttr "L_Arm_IK_Base_Ctrl.s" "L_Arm_IK_Jnt_01_scaleConstraint1.tg[0].ts";
connectAttr "L_Arm_IK_Base_Ctrl.pm" "L_Arm_IK_Jnt_01_scaleConstraint1.tg[0].tpm"
		;
connectAttr "L_Arm_IK_Jnt_01_scaleConstraint1.w0" "L_Arm_IK_Jnt_01_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Arm_IK_Jnt_01_parentConstraint1.ctx" "R_Arm_IK_Jnt_01.tx";
connectAttr "R_Arm_IK_Jnt_01_parentConstraint1.cty" "R_Arm_IK_Jnt_01.ty";
connectAttr "R_Arm_IK_Jnt_01_parentConstraint1.ctz" "R_Arm_IK_Jnt_01.tz";
connectAttr "Spine_Jnt_02.s" "R_Arm_IK_Jnt_01.is";
connectAttr "R_Arm_IK_Jnt_01_scaleConstraint1.csx" "R_Arm_IK_Jnt_01.sx";
connectAttr "R_Arm_IK_Jnt_01_scaleConstraint1.csy" "R_Arm_IK_Jnt_01.sy";
connectAttr "R_Arm_IK_Jnt_01_scaleConstraint1.csz" "R_Arm_IK_Jnt_01.sz";
connectAttr "R_Arm_IK_Jnt_01_parentConstraint1.crx" "R_Arm_IK_Jnt_01.rx";
connectAttr "R_Arm_IK_Jnt_01_parentConstraint1.cry" "R_Arm_IK_Jnt_01.ry";
connectAttr "R_Arm_IK_Jnt_01_parentConstraint1.crz" "R_Arm_IK_Jnt_01.rz";
connectAttr "R_Arm_IK_Jnt_01.s" "R_Arm_IK_Jnt_02.is";
connectAttr "R_Arm_IK_Jnt_02.s" "R_Arm_IK_Jnt_03.is";
connectAttr "R_Arm_IK_Jnt_03.s" "R_Arm_IK_Jnt_04.is";
connectAttr "R_Arm_IK_Jnt_03.tx" "effector2.tx";
connectAttr "R_Arm_IK_Jnt_03.ty" "effector2.ty";
connectAttr "R_Arm_IK_Jnt_03.tz" "effector2.tz";
connectAttr "R_Arm_IK_Jnt_03.opm" "effector2.opm";
connectAttr "R_Arm_IK_Jnt_01.ro" "R_Arm_IK_Jnt_01_parentConstraint1.cro";
connectAttr "R_Arm_IK_Jnt_01.pim" "R_Arm_IK_Jnt_01_parentConstraint1.cpim";
connectAttr "R_Arm_IK_Jnt_01.rp" "R_Arm_IK_Jnt_01_parentConstraint1.crp";
connectAttr "R_Arm_IK_Jnt_01.rpt" "R_Arm_IK_Jnt_01_parentConstraint1.crt";
connectAttr "R_Arm_IK_Jnt_01.jo" "R_Arm_IK_Jnt_01_parentConstraint1.cjo";
connectAttr "R_Arm_IK_Basae_Ctrl.t" "R_Arm_IK_Jnt_01_parentConstraint1.tg[0].tt"
		;
connectAttr "R_Arm_IK_Basae_Ctrl.rp" "R_Arm_IK_Jnt_01_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Arm_IK_Basae_Ctrl.rpt" "R_Arm_IK_Jnt_01_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Arm_IK_Basae_Ctrl.r" "R_Arm_IK_Jnt_01_parentConstraint1.tg[0].tr"
		;
connectAttr "R_Arm_IK_Basae_Ctrl.ro" "R_Arm_IK_Jnt_01_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Arm_IK_Basae_Ctrl.s" "R_Arm_IK_Jnt_01_parentConstraint1.tg[0].ts"
		;
connectAttr "R_Arm_IK_Basae_Ctrl.pm" "R_Arm_IK_Jnt_01_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Arm_IK_Jnt_01_parentConstraint1.w0" "R_Arm_IK_Jnt_01_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Arm_IK_Jnt_01.ssc" "R_Arm_IK_Jnt_01_scaleConstraint1.tsc";
connectAttr "R_Arm_IK_Jnt_01.pim" "R_Arm_IK_Jnt_01_scaleConstraint1.cpim";
connectAttr "R_Arm_IK_Basae_Ctrl.s" "R_Arm_IK_Jnt_01_scaleConstraint1.tg[0].ts";
connectAttr "R_Arm_IK_Basae_Ctrl.pm" "R_Arm_IK_Jnt_01_scaleConstraint1.tg[0].tpm"
		;
connectAttr "R_Arm_IK_Jnt_01_scaleConstraint1.w0" "R_Arm_IK_Jnt_01_scaleConstraint1.tg[0].tw"
		;
connectAttr "Spine_Jnt_02.s" "Head_Jnt_01.is";
connectAttr "Head_Jnt_01_parentConstraint1.ctx" "Head_Jnt_01.tx";
connectAttr "Head_Jnt_01_parentConstraint1.cty" "Head_Jnt_01.ty";
connectAttr "Head_Jnt_01_parentConstraint1.ctz" "Head_Jnt_01.tz";
connectAttr "Head_Jnt_01_parentConstraint1.crx" "Head_Jnt_01.rx";
connectAttr "Head_Jnt_01_parentConstraint1.cry" "Head_Jnt_01.ry";
connectAttr "Head_Jnt_01_parentConstraint1.crz" "Head_Jnt_01.rz";
connectAttr "Head_Jnt_01_scaleConstraint1.csx" "Head_Jnt_01.sx";
connectAttr "Head_Jnt_01_scaleConstraint1.csy" "Head_Jnt_01.sy";
connectAttr "Head_Jnt_01_scaleConstraint1.csz" "Head_Jnt_01.sz";
connectAttr "Head_Jnt_01.s" "Head_Jnt_02.is";
connectAttr "Head_Jnt_01.ro" "Head_Jnt_01_parentConstraint1.cro";
connectAttr "Head_Jnt_01.pim" "Head_Jnt_01_parentConstraint1.cpim";
connectAttr "Head_Jnt_01.rp" "Head_Jnt_01_parentConstraint1.crp";
connectAttr "Head_Jnt_01.rpt" "Head_Jnt_01_parentConstraint1.crt";
connectAttr "Head_Jnt_01.jo" "Head_Jnt_01_parentConstraint1.cjo";
connectAttr "Head_ctrl_01.t" "Head_Jnt_01_parentConstraint1.tg[0].tt";
connectAttr "Head_ctrl_01.rp" "Head_Jnt_01_parentConstraint1.tg[0].trp";
connectAttr "Head_ctrl_01.rpt" "Head_Jnt_01_parentConstraint1.tg[0].trt";
connectAttr "Head_ctrl_01.r" "Head_Jnt_01_parentConstraint1.tg[0].tr";
connectAttr "Head_ctrl_01.ro" "Head_Jnt_01_parentConstraint1.tg[0].tro";
connectAttr "Head_ctrl_01.s" "Head_Jnt_01_parentConstraint1.tg[0].ts";
connectAttr "Head_ctrl_01.pm" "Head_Jnt_01_parentConstraint1.tg[0].tpm";
connectAttr "Head_Jnt_01_parentConstraint1.w0" "Head_Jnt_01_parentConstraint1.tg[0].tw"
		;
connectAttr "Head_Jnt_01.ssc" "Head_Jnt_01_scaleConstraint1.tsc";
connectAttr "Head_Jnt_01.pim" "Head_Jnt_01_scaleConstraint1.cpim";
connectAttr "Head_ctrl_01.s" "Head_Jnt_01_scaleConstraint1.tg[0].ts";
connectAttr "Head_ctrl_01.pm" "Head_Jnt_01_scaleConstraint1.tg[0].tpm";
connectAttr "Head_Jnt_01_scaleConstraint1.w0" "Head_Jnt_01_scaleConstraint1.tg[0].tw"
		;
connectAttr "Spine_Jnt_02.s" "Jaw_Jnt_01.is";
connectAttr "Jaw_Jnt_01_parentConstraint1.ctx" "Jaw_Jnt_01.tx";
connectAttr "Jaw_Jnt_01_parentConstraint1.cty" "Jaw_Jnt_01.ty";
connectAttr "Jaw_Jnt_01_parentConstraint1.ctz" "Jaw_Jnt_01.tz";
connectAttr "Jaw_Jnt_01_parentConstraint1.crx" "Jaw_Jnt_01.rx";
connectAttr "Jaw_Jnt_01_parentConstraint1.cry" "Jaw_Jnt_01.ry";
connectAttr "Jaw_Jnt_01_parentConstraint1.crz" "Jaw_Jnt_01.rz";
connectAttr "Jaw_Jnt_01_scaleConstraint1.csx" "Jaw_Jnt_01.sx";
connectAttr "Jaw_Jnt_01_scaleConstraint1.csy" "Jaw_Jnt_01.sy";
connectAttr "Jaw_Jnt_01_scaleConstraint1.csz" "Jaw_Jnt_01.sz";
connectAttr "Jaw_Jnt_01.s" "Jaw_Jnt_02.is";
connectAttr "Jaw_Jnt_01.ro" "Jaw_Jnt_01_parentConstraint1.cro";
connectAttr "Jaw_Jnt_01.pim" "Jaw_Jnt_01_parentConstraint1.cpim";
connectAttr "Jaw_Jnt_01.rp" "Jaw_Jnt_01_parentConstraint1.crp";
connectAttr "Jaw_Jnt_01.rpt" "Jaw_Jnt_01_parentConstraint1.crt";
connectAttr "Jaw_Jnt_01.jo" "Jaw_Jnt_01_parentConstraint1.cjo";
connectAttr "Jaw_ctrl_01.t" "Jaw_Jnt_01_parentConstraint1.tg[0].tt";
connectAttr "Jaw_ctrl_01.rp" "Jaw_Jnt_01_parentConstraint1.tg[0].trp";
connectAttr "Jaw_ctrl_01.rpt" "Jaw_Jnt_01_parentConstraint1.tg[0].trt";
connectAttr "Jaw_ctrl_01.r" "Jaw_Jnt_01_parentConstraint1.tg[0].tr";
connectAttr "Jaw_ctrl_01.ro" "Jaw_Jnt_01_parentConstraint1.tg[0].tro";
connectAttr "Jaw_ctrl_01.s" "Jaw_Jnt_01_parentConstraint1.tg[0].ts";
connectAttr "Jaw_ctrl_01.pm" "Jaw_Jnt_01_parentConstraint1.tg[0].tpm";
connectAttr "Jaw_Jnt_01_parentConstraint1.w0" "Jaw_Jnt_01_parentConstraint1.tg[0].tw"
		;
connectAttr "Jaw_Jnt_01.ssc" "Jaw_Jnt_01_scaleConstraint1.tsc";
connectAttr "Jaw_Jnt_01.pim" "Jaw_Jnt_01_scaleConstraint1.cpim";
connectAttr "Jaw_ctrl_01.s" "Jaw_Jnt_01_scaleConstraint1.tg[0].ts";
connectAttr "Jaw_ctrl_01.pm" "Jaw_Jnt_01_scaleConstraint1.tg[0].tpm";
connectAttr "Jaw_Jnt_01_scaleConstraint1.w0" "Jaw_Jnt_01_scaleConstraint1.tg[0].tw"
		;
connectAttr "Spine_Jnt_02.ro" "Spine_Jnt_02_parentConstraint1.cro";
connectAttr "Spine_Jnt_02.pim" "Spine_Jnt_02_parentConstraint1.cpim";
connectAttr "Spine_Jnt_02.rp" "Spine_Jnt_02_parentConstraint1.crp";
connectAttr "Spine_Jnt_02.rpt" "Spine_Jnt_02_parentConstraint1.crt";
connectAttr "Spine_Jnt_02.jo" "Spine_Jnt_02_parentConstraint1.cjo";
connectAttr "Spine_ctrl_02.t" "Spine_Jnt_02_parentConstraint1.tg[0].tt";
connectAttr "Spine_ctrl_02.rp" "Spine_Jnt_02_parentConstraint1.tg[0].trp";
connectAttr "Spine_ctrl_02.rpt" "Spine_Jnt_02_parentConstraint1.tg[0].trt";
connectAttr "Spine_ctrl_02.r" "Spine_Jnt_02_parentConstraint1.tg[0].tr";
connectAttr "Spine_ctrl_02.ro" "Spine_Jnt_02_parentConstraint1.tg[0].tro";
connectAttr "Spine_ctrl_02.s" "Spine_Jnt_02_parentConstraint1.tg[0].ts";
connectAttr "Spine_ctrl_02.pm" "Spine_Jnt_02_parentConstraint1.tg[0].tpm";
connectAttr "Spine_Jnt_02_parentConstraint1.w0" "Spine_Jnt_02_parentConstraint1.tg[0].tw"
		;
connectAttr "Spine_Jnt_02.ssc" "Spine_Jnt_02_scaleConstraint1.tsc";
connectAttr "Spine_Jnt_02.pim" "Spine_Jnt_02_scaleConstraint1.cpim";
connectAttr "Spine_ctrl_02.s" "Spine_Jnt_02_scaleConstraint1.tg[0].ts";
connectAttr "Spine_ctrl_02.pm" "Spine_Jnt_02_scaleConstraint1.tg[0].tpm";
connectAttr "Spine_Jnt_02_scaleConstraint1.w0" "Spine_Jnt_02_scaleConstraint1.tg[0].tw"
		;
connectAttr "Spine_Jnt_01.ro" "Spine_Jnt_01_parentConstraint1.cro";
connectAttr "Spine_Jnt_01.pim" "Spine_Jnt_01_parentConstraint1.cpim";
connectAttr "Spine_Jnt_01.rp" "Spine_Jnt_01_parentConstraint1.crp";
connectAttr "Spine_Jnt_01.rpt" "Spine_Jnt_01_parentConstraint1.crt";
connectAttr "Spine_Jnt_01.jo" "Spine_Jnt_01_parentConstraint1.cjo";
connectAttr "Spine_ctrl_01.t" "Spine_Jnt_01_parentConstraint1.tg[0].tt";
connectAttr "Spine_ctrl_01.rp" "Spine_Jnt_01_parentConstraint1.tg[0].trp";
connectAttr "Spine_ctrl_01.rpt" "Spine_Jnt_01_parentConstraint1.tg[0].trt";
connectAttr "Spine_ctrl_01.r" "Spine_Jnt_01_parentConstraint1.tg[0].tr";
connectAttr "Spine_ctrl_01.ro" "Spine_Jnt_01_parentConstraint1.tg[0].tro";
connectAttr "Spine_ctrl_01.s" "Spine_Jnt_01_parentConstraint1.tg[0].ts";
connectAttr "Spine_ctrl_01.pm" "Spine_Jnt_01_parentConstraint1.tg[0].tpm";
connectAttr "Spine_Jnt_01_parentConstraint1.w0" "Spine_Jnt_01_parentConstraint1.tg[0].tw"
		;
connectAttr "Spine_Jnt_01.ssc" "Spine_Jnt_01_scaleConstraint1.tsc";
connectAttr "Spine_Jnt_01.pim" "Spine_Jnt_01_scaleConstraint1.cpim";
connectAttr "Spine_ctrl_01.s" "Spine_Jnt_01_scaleConstraint1.tg[0].ts";
connectAttr "Spine_ctrl_01.pm" "Spine_Jnt_01_scaleConstraint1.tg[0].tpm";
connectAttr "Spine_Jnt_01_scaleConstraint1.w0" "Spine_Jnt_01_scaleConstraint1.tg[0].tw"
		;
connectAttr "ROOT_Jnt.ro" "ROOT_Jnt_parentConstraint1.cro";
connectAttr "ROOT_Jnt.pim" "ROOT_Jnt_parentConstraint1.cpim";
connectAttr "ROOT_Jnt.rp" "ROOT_Jnt_parentConstraint1.crp";
connectAttr "ROOT_Jnt.rpt" "ROOT_Jnt_parentConstraint1.crt";
connectAttr "ROOT_Jnt.jo" "ROOT_Jnt_parentConstraint1.cjo";
connectAttr "ROOT_ctrl.t" "ROOT_Jnt_parentConstraint1.tg[0].tt";
connectAttr "ROOT_ctrl.rp" "ROOT_Jnt_parentConstraint1.tg[0].trp";
connectAttr "ROOT_ctrl.rpt" "ROOT_Jnt_parentConstraint1.tg[0].trt";
connectAttr "ROOT_ctrl.r" "ROOT_Jnt_parentConstraint1.tg[0].tr";
connectAttr "ROOT_ctrl.ro" "ROOT_Jnt_parentConstraint1.tg[0].tro";
connectAttr "ROOT_ctrl.s" "ROOT_Jnt_parentConstraint1.tg[0].ts";
connectAttr "ROOT_ctrl.pm" "ROOT_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "ROOT_Jnt_parentConstraint1.w0" "ROOT_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Pelvis_Jnt_parentConstraint1.ctx" "Pelvis_Jnt.tx";
connectAttr "Pelvis_Jnt_parentConstraint1.cty" "Pelvis_Jnt.ty";
connectAttr "Pelvis_Jnt_parentConstraint1.ctz" "Pelvis_Jnt.tz";
connectAttr "Pelvis_Jnt_parentConstraint1.crx" "Pelvis_Jnt.rx";
connectAttr "Pelvis_Jnt_parentConstraint1.cry" "Pelvis_Jnt.ry";
connectAttr "Pelvis_Jnt_parentConstraint1.crz" "Pelvis_Jnt.rz";
connectAttr "ROOT_Jnt.s" "Pelvis_Jnt.is";
connectAttr "Pelvis_Jnt_scaleConstraint1.csx" "Pelvis_Jnt.sx";
connectAttr "Pelvis_Jnt_scaleConstraint1.csy" "Pelvis_Jnt.sy";
connectAttr "Pelvis_Jnt_scaleConstraint1.csz" "Pelvis_Jnt.sz";
connectAttr "Pelvis_Jnt.s" "R_Leg_FK_Jnt_01.is";
connectAttr "R_Leg_FK_Jnt_01_scaleConstraint1.csx" "R_Leg_FK_Jnt_01.sx";
connectAttr "R_Leg_FK_Jnt_01_scaleConstraint1.csy" "R_Leg_FK_Jnt_01.sy";
connectAttr "R_Leg_FK_Jnt_01_scaleConstraint1.csz" "R_Leg_FK_Jnt_01.sz";
connectAttr "R_Leg_FK_Jnt_01_parentConstraint2.ctx" "R_Leg_FK_Jnt_01.tx";
connectAttr "R_Leg_FK_Jnt_01_parentConstraint2.cty" "R_Leg_FK_Jnt_01.ty";
connectAttr "R_Leg_FK_Jnt_01_parentConstraint2.ctz" "R_Leg_FK_Jnt_01.tz";
connectAttr "R_Leg_FK_Jnt_01_parentConstraint2.crx" "R_Leg_FK_Jnt_01.rx";
connectAttr "R_Leg_FK_Jnt_01_parentConstraint2.cry" "R_Leg_FK_Jnt_01.ry";
connectAttr "R_Leg_FK_Jnt_01_parentConstraint2.crz" "R_Leg_FK_Jnt_01.rz";
connectAttr "R_Leg_FK_Jnt_01.s" "R_Leg_FK_Jnt_02.is";
connectAttr "R_Leg_FK_Jnt_02_scaleConstraint1.csx" "R_Leg_FK_Jnt_02.sx";
connectAttr "R_Leg_FK_Jnt_02_scaleConstraint1.csy" "R_Leg_FK_Jnt_02.sy";
connectAttr "R_Leg_FK_Jnt_02_scaleConstraint1.csz" "R_Leg_FK_Jnt_02.sz";
connectAttr "R_Leg_FK_Jnt_02_parentConstraint2.ctx" "R_Leg_FK_Jnt_02.tx";
connectAttr "R_Leg_FK_Jnt_02_parentConstraint2.cty" "R_Leg_FK_Jnt_02.ty";
connectAttr "R_Leg_FK_Jnt_02_parentConstraint2.ctz" "R_Leg_FK_Jnt_02.tz";
connectAttr "R_Leg_FK_Jnt_02_parentConstraint2.crx" "R_Leg_FK_Jnt_02.rx";
connectAttr "R_Leg_FK_Jnt_02_parentConstraint2.cry" "R_Leg_FK_Jnt_02.ry";
connectAttr "R_Leg_FK_Jnt_02_parentConstraint2.crz" "R_Leg_FK_Jnt_02.rz";
connectAttr "R_Leg_FK_Jnt_02.s" "R_Leg_FK_Jnt_03.is";
connectAttr "R_Leg_FK_Jnt_02.ssc" "R_Leg_FK_Jnt_02_scaleConstraint1.tsc";
connectAttr "R_Leg_FK_Jnt_02.pim" "R_Leg_FK_Jnt_02_scaleConstraint1.cpim";
connectAttr "R_Leg_FK_ctrl_02.s" "R_Leg_FK_Jnt_02_scaleConstraint1.tg[0].ts";
connectAttr "R_Leg_FK_ctrl_02.pm" "R_Leg_FK_Jnt_02_scaleConstraint1.tg[0].tpm";
connectAttr "R_Leg_FK_Jnt_02_scaleConstraint1.w0" "R_Leg_FK_Jnt_02_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Leg_FK_Jnt_02.ro" "R_Leg_FK_Jnt_02_parentConstraint2.cro";
connectAttr "R_Leg_FK_Jnt_02.pim" "R_Leg_FK_Jnt_02_parentConstraint2.cpim";
connectAttr "R_Leg_FK_Jnt_02.rp" "R_Leg_FK_Jnt_02_parentConstraint2.crp";
connectAttr "R_Leg_FK_Jnt_02.rpt" "R_Leg_FK_Jnt_02_parentConstraint2.crt";
connectAttr "R_Leg_FK_Jnt_02.jo" "R_Leg_FK_Jnt_02_parentConstraint2.cjo";
connectAttr "R_Leg_FK_ctrl_02.t" "R_Leg_FK_Jnt_02_parentConstraint2.tg[0].tt";
connectAttr "R_Leg_FK_ctrl_02.rp" "R_Leg_FK_Jnt_02_parentConstraint2.tg[0].trp";
connectAttr "R_Leg_FK_ctrl_02.rpt" "R_Leg_FK_Jnt_02_parentConstraint2.tg[0].trt"
		;
connectAttr "R_Leg_FK_ctrl_02.r" "R_Leg_FK_Jnt_02_parentConstraint2.tg[0].tr";
connectAttr "R_Leg_FK_ctrl_02.ro" "R_Leg_FK_Jnt_02_parentConstraint2.tg[0].tro";
connectAttr "R_Leg_FK_ctrl_02.s" "R_Leg_FK_Jnt_02_parentConstraint2.tg[0].ts";
connectAttr "R_Leg_FK_ctrl_02.pm" "R_Leg_FK_Jnt_02_parentConstraint2.tg[0].tpm";
connectAttr "R_Leg_FK_Jnt_02_parentConstraint2.w0" "R_Leg_FK_Jnt_02_parentConstraint2.tg[0].tw"
		;
connectAttr "R_Leg_FK_Jnt_01.ssc" "R_Leg_FK_Jnt_01_scaleConstraint1.tsc";
connectAttr "R_Leg_FK_Jnt_01.pim" "R_Leg_FK_Jnt_01_scaleConstraint1.cpim";
connectAttr "R_Leg_FK_ctrl_01.s" "R_Leg_FK_Jnt_01_scaleConstraint1.tg[0].ts";
connectAttr "R_Leg_FK_ctrl_01.pm" "R_Leg_FK_Jnt_01_scaleConstraint1.tg[0].tpm";
connectAttr "R_Leg_FK_Jnt_01_scaleConstraint1.w0" "R_Leg_FK_Jnt_01_scaleConstraint1.tg[0].tw"
		;
connectAttr "R_Leg_FK_Jnt_01.ro" "R_Leg_FK_Jnt_01_parentConstraint2.cro";
connectAttr "R_Leg_FK_Jnt_01.pim" "R_Leg_FK_Jnt_01_parentConstraint2.cpim";
connectAttr "R_Leg_FK_Jnt_01.rp" "R_Leg_FK_Jnt_01_parentConstraint2.crp";
connectAttr "R_Leg_FK_Jnt_01.rpt" "R_Leg_FK_Jnt_01_parentConstraint2.crt";
connectAttr "R_Leg_FK_Jnt_01.jo" "R_Leg_FK_Jnt_01_parentConstraint2.cjo";
connectAttr "R_Leg_FK_ctrl_01.t" "R_Leg_FK_Jnt_01_parentConstraint2.tg[0].tt";
connectAttr "R_Leg_FK_ctrl_01.rp" "R_Leg_FK_Jnt_01_parentConstraint2.tg[0].trp";
connectAttr "R_Leg_FK_ctrl_01.rpt" "R_Leg_FK_Jnt_01_parentConstraint2.tg[0].trt"
		;
connectAttr "R_Leg_FK_ctrl_01.r" "R_Leg_FK_Jnt_01_parentConstraint2.tg[0].tr";
connectAttr "R_Leg_FK_ctrl_01.ro" "R_Leg_FK_Jnt_01_parentConstraint2.tg[0].tro";
connectAttr "R_Leg_FK_ctrl_01.s" "R_Leg_FK_Jnt_01_parentConstraint2.tg[0].ts";
connectAttr "R_Leg_FK_ctrl_01.pm" "R_Leg_FK_Jnt_01_parentConstraint2.tg[0].tpm";
connectAttr "R_Leg_FK_Jnt_01_parentConstraint2.w0" "R_Leg_FK_Jnt_01_parentConstraint2.tg[0].tw"
		;
connectAttr "Pelvis_Jnt.s" "L_Leg_FK_Jnt_01.is";
connectAttr "L_Leg_FK_Jnt_01_scaleConstraint1.csx" "L_Leg_FK_Jnt_01.sx";
connectAttr "L_Leg_FK_Jnt_01_scaleConstraint1.csy" "L_Leg_FK_Jnt_01.sy";
connectAttr "L_Leg_FK_Jnt_01_scaleConstraint1.csz" "L_Leg_FK_Jnt_01.sz";
connectAttr "L_Leg_FK_Jnt_01_parentConstraint2.ctx" "L_Leg_FK_Jnt_01.tx";
connectAttr "L_Leg_FK_Jnt_01_parentConstraint2.cty" "L_Leg_FK_Jnt_01.ty";
connectAttr "L_Leg_FK_Jnt_01_parentConstraint2.ctz" "L_Leg_FK_Jnt_01.tz";
connectAttr "L_Leg_FK_Jnt_01_parentConstraint2.crx" "L_Leg_FK_Jnt_01.rx";
connectAttr "L_Leg_FK_Jnt_01_parentConstraint2.cry" "L_Leg_FK_Jnt_01.ry";
connectAttr "L_Leg_FK_Jnt_01_parentConstraint2.crz" "L_Leg_FK_Jnt_01.rz";
connectAttr "L_Leg_FK_Jnt_01.s" "L_Leg_FK_Jnt_02.is";
connectAttr "L_Leg_FK_Jnt_02_scaleConstraint1.csx" "L_Leg_FK_Jnt_02.sx";
connectAttr "L_Leg_FK_Jnt_02_scaleConstraint1.csy" "L_Leg_FK_Jnt_02.sy";
connectAttr "L_Leg_FK_Jnt_02_scaleConstraint1.csz" "L_Leg_FK_Jnt_02.sz";
connectAttr "L_Leg_FK_Jnt_02_parentConstraint2.ctx" "L_Leg_FK_Jnt_02.tx";
connectAttr "L_Leg_FK_Jnt_02_parentConstraint2.cty" "L_Leg_FK_Jnt_02.ty";
connectAttr "L_Leg_FK_Jnt_02_parentConstraint2.ctz" "L_Leg_FK_Jnt_02.tz";
connectAttr "L_Leg_FK_Jnt_02_parentConstraint2.crx" "L_Leg_FK_Jnt_02.rx";
connectAttr "L_Leg_FK_Jnt_02_parentConstraint2.cry" "L_Leg_FK_Jnt_02.ry";
connectAttr "L_Leg_FK_Jnt_02_parentConstraint2.crz" "L_Leg_FK_Jnt_02.rz";
connectAttr "L_Leg_FK_Jnt_02.s" "L_Leg_FK_Jnt_03.is";
connectAttr "L_Leg_FK_Jnt_02.ssc" "L_Leg_FK_Jnt_02_scaleConstraint1.tsc";
connectAttr "L_Leg_FK_Jnt_02.pim" "L_Leg_FK_Jnt_02_scaleConstraint1.cpim";
connectAttr "L_Leg_FK_ctrl_02.s" "L_Leg_FK_Jnt_02_scaleConstraint1.tg[0].ts";
connectAttr "L_Leg_FK_ctrl_02.pm" "L_Leg_FK_Jnt_02_scaleConstraint1.tg[0].tpm";
connectAttr "L_Leg_FK_Jnt_02_scaleConstraint1.w0" "L_Leg_FK_Jnt_02_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Leg_FK_Jnt_02.ro" "L_Leg_FK_Jnt_02_parentConstraint2.cro";
connectAttr "L_Leg_FK_Jnt_02.pim" "L_Leg_FK_Jnt_02_parentConstraint2.cpim";
connectAttr "L_Leg_FK_Jnt_02.rp" "L_Leg_FK_Jnt_02_parentConstraint2.crp";
connectAttr "L_Leg_FK_Jnt_02.rpt" "L_Leg_FK_Jnt_02_parentConstraint2.crt";
connectAttr "L_Leg_FK_Jnt_02.jo" "L_Leg_FK_Jnt_02_parentConstraint2.cjo";
connectAttr "L_Leg_FK_ctrl_02.t" "L_Leg_FK_Jnt_02_parentConstraint2.tg[0].tt";
connectAttr "L_Leg_FK_ctrl_02.rp" "L_Leg_FK_Jnt_02_parentConstraint2.tg[0].trp";
connectAttr "L_Leg_FK_ctrl_02.rpt" "L_Leg_FK_Jnt_02_parentConstraint2.tg[0].trt"
		;
connectAttr "L_Leg_FK_ctrl_02.r" "L_Leg_FK_Jnt_02_parentConstraint2.tg[0].tr";
connectAttr "L_Leg_FK_ctrl_02.ro" "L_Leg_FK_Jnt_02_parentConstraint2.tg[0].tro";
connectAttr "L_Leg_FK_ctrl_02.s" "L_Leg_FK_Jnt_02_parentConstraint2.tg[0].ts";
connectAttr "L_Leg_FK_ctrl_02.pm" "L_Leg_FK_Jnt_02_parentConstraint2.tg[0].tpm";
connectAttr "L_Leg_FK_Jnt_02_parentConstraint2.w0" "L_Leg_FK_Jnt_02_parentConstraint2.tg[0].tw"
		;
connectAttr "L_Leg_FK_Jnt_01.ssc" "L_Leg_FK_Jnt_01_scaleConstraint1.tsc";
connectAttr "L_Leg_FK_Jnt_01.pim" "L_Leg_FK_Jnt_01_scaleConstraint1.cpim";
connectAttr "L_Leg_FK_ctrl_01.s" "L_Leg_FK_Jnt_01_scaleConstraint1.tg[0].ts";
connectAttr "L_Leg_FK_ctrl_01.pm" "L_Leg_FK_Jnt_01_scaleConstraint1.tg[0].tpm";
connectAttr "L_Leg_FK_Jnt_01_scaleConstraint1.w0" "L_Leg_FK_Jnt_01_scaleConstraint1.tg[0].tw"
		;
connectAttr "L_Leg_FK_Jnt_01.ro" "L_Leg_FK_Jnt_01_parentConstraint2.cro";
connectAttr "L_Leg_FK_Jnt_01.pim" "L_Leg_FK_Jnt_01_parentConstraint2.cpim";
connectAttr "L_Leg_FK_Jnt_01.rp" "L_Leg_FK_Jnt_01_parentConstraint2.crp";
connectAttr "L_Leg_FK_Jnt_01.rpt" "L_Leg_FK_Jnt_01_parentConstraint2.crt";
connectAttr "L_Leg_FK_Jnt_01.jo" "L_Leg_FK_Jnt_01_parentConstraint2.cjo";
connectAttr "L_Leg_FK_ctrl_01.t" "L_Leg_FK_Jnt_01_parentConstraint2.tg[0].tt";
connectAttr "L_Leg_FK_ctrl_01.rp" "L_Leg_FK_Jnt_01_parentConstraint2.tg[0].trp";
connectAttr "L_Leg_FK_ctrl_01.rpt" "L_Leg_FK_Jnt_01_parentConstraint2.tg[0].trt"
		;
connectAttr "L_Leg_FK_ctrl_01.r" "L_Leg_FK_Jnt_01_parentConstraint2.tg[0].tr";
connectAttr "L_Leg_FK_ctrl_01.ro" "L_Leg_FK_Jnt_01_parentConstraint2.tg[0].tro";
connectAttr "L_Leg_FK_ctrl_01.s" "L_Leg_FK_Jnt_01_parentConstraint2.tg[0].ts";
connectAttr "L_Leg_FK_ctrl_01.pm" "L_Leg_FK_Jnt_01_parentConstraint2.tg[0].tpm";
connectAttr "L_Leg_FK_Jnt_01_parentConstraint2.w0" "L_Leg_FK_Jnt_01_parentConstraint2.tg[0].tw"
		;
connectAttr "Pelvis_Jnt.ro" "Pelvis_Jnt_parentConstraint1.cro";
connectAttr "Pelvis_Jnt.pim" "Pelvis_Jnt_parentConstraint1.cpim";
connectAttr "Pelvis_Jnt.rp" "Pelvis_Jnt_parentConstraint1.crp";
connectAttr "Pelvis_Jnt.rpt" "Pelvis_Jnt_parentConstraint1.crt";
connectAttr "Pelvis_Jnt.jo" "Pelvis_Jnt_parentConstraint1.cjo";
connectAttr "Pelvis_ctrl.t" "Pelvis_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Pelvis_ctrl.rp" "Pelvis_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Pelvis_ctrl.rpt" "Pelvis_Jnt_parentConstraint1.tg[0].trt";
connectAttr "Pelvis_ctrl.r" "Pelvis_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Pelvis_ctrl.ro" "Pelvis_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Pelvis_ctrl.s" "Pelvis_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Pelvis_ctrl.pm" "Pelvis_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Pelvis_Jnt_parentConstraint1.w0" "Pelvis_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Pelvis_Jnt.ssc" "Pelvis_Jnt_scaleConstraint1.tsc";
connectAttr "Pelvis_Jnt.pim" "Pelvis_Jnt_scaleConstraint1.cpim";
connectAttr "Pelvis_ctrl.s" "Pelvis_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "Pelvis_ctrl.pm" "Pelvis_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "Pelvis_Jnt_scaleConstraint1.w0" "Pelvis_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Geo_Layer.di" "Mesh_Grp.do";
connectAttr "skinCluster2.og[0]" "Golem_MeshShape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "GolemSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "GolemFBXASC046001SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "layeredShader1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "GolemSG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "GolemFBXASC046001SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "GolemSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "GolemFBXASC046001SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "layeredShader1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "GolemSG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "GolemFBXASC046001SG1.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "base_color_texture.oc" "GolemMat1.c";
connectAttr "GolemMat1.oc" "GolemSG.ss";
connectAttr "GolemSG.msg" "materialInfo1.sg";
connectAttr "GolemMat1.msg" "materialInfo1.m";
connectAttr "base_color_texture.msg" "materialInfo1.t" -na;
connectAttr "place2dTexture1.o" "base_color_texture.uv";
connectAttr "place2dTexture1.ofu" "base_color_texture.ofu";
connectAttr "place2dTexture1.ofv" "base_color_texture.ofv";
connectAttr "place2dTexture1.rf" "base_color_texture.rf";
connectAttr "place2dTexture1.reu" "base_color_texture.reu";
connectAttr "place2dTexture1.rev" "base_color_texture.rev";
connectAttr "place2dTexture1.vt1" "base_color_texture.vt1";
connectAttr "place2dTexture1.vt2" "base_color_texture.vt2";
connectAttr "place2dTexture1.vt3" "base_color_texture.vt3";
connectAttr "place2dTexture1.vc1" "base_color_texture.vc1";
connectAttr "place2dTexture1.ofs" "base_color_texture.fs";
connectAttr ":defaultColorMgtGlobals.cme" "base_color_texture.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "base_color_texture.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "base_color_texture.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "base_color_texture.ws";
connectAttr "base_color_texture_ncl1_1.oc" "GolemMat1FBXASC046001.c";
connectAttr "GolemMat1FBXASC046001.oc" "GolemFBXASC046001SG.ss";
connectAttr "GolemFBXASC046001SG.msg" "materialInfo2.sg";
connectAttr "GolemMat1FBXASC046001.msg" "materialInfo2.m";
connectAttr "base_color_texture_ncl1_1.msg" "materialInfo2.t" -na;
connectAttr "place2dTexture2.o" "base_color_texture_ncl1_1.uv";
connectAttr "place2dTexture2.ofu" "base_color_texture_ncl1_1.ofu";
connectAttr "place2dTexture2.ofv" "base_color_texture_ncl1_1.ofv";
connectAttr "place2dTexture2.rf" "base_color_texture_ncl1_1.rf";
connectAttr "place2dTexture2.reu" "base_color_texture_ncl1_1.reu";
connectAttr "place2dTexture2.rev" "base_color_texture_ncl1_1.rev";
connectAttr "place2dTexture2.vt1" "base_color_texture_ncl1_1.vt1";
connectAttr "place2dTexture2.vt2" "base_color_texture_ncl1_1.vt2";
connectAttr "place2dTexture2.vt3" "base_color_texture_ncl1_1.vt3";
connectAttr "place2dTexture2.vc1" "base_color_texture_ncl1_1.vc1";
connectAttr "place2dTexture2.ofs" "base_color_texture_ncl1_1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "base_color_texture_ncl1_1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "base_color_texture_ncl1_1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "base_color_texture_ncl1_1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "base_color_texture_ncl1_1.ws";
connectAttr "Skeleton_Grp.msg" "bindPose1.m[0]";
connectAttr "ROOT_Jnt.msg" "bindPose1.m[1]";
connectAttr "Spine_Jnt_01.msg" "bindPose1.m[2]";
connectAttr "Spine_Jnt_02.msg" "bindPose1.m[3]";
connectAttr "L_Arm_IK_Jnt_01.msg" "bindPose1.m[4]";
connectAttr "L_Arm_IK_Jnt_02.msg" "bindPose1.m[5]";
connectAttr "L_Arm_IK_Jnt_03.msg" "bindPose1.m[6]";
connectAttr "L_Arm_IK_Jnt_04.msg" "bindPose1.m[7]";
connectAttr "R_Arm_IK_Jnt_01.msg" "bindPose1.m[8]";
connectAttr "R_Arm_IK_Jnt_02.msg" "bindPose1.m[9]";
connectAttr "R_Arm_IK_Jnt_03.msg" "bindPose1.m[10]";
connectAttr "R_Arm_IK_Jnt_04.msg" "bindPose1.m[11]";
connectAttr "Head_Jnt_01.msg" "bindPose1.m[12]";
connectAttr "Head_Jnt_02.msg" "bindPose1.m[13]";
connectAttr "Jaw_Jnt_01.msg" "bindPose1.m[14]";
connectAttr "Jaw_Jnt_02.msg" "bindPose1.m[15]";
connectAttr "Pelvis_Jnt.msg" "bindPose1.m[16]";
connectAttr "R_Leg_FK_Jnt_01.msg" "bindPose1.m[17]";
connectAttr "R_Leg_FK_Jnt_02.msg" "bindPose1.m[18]";
connectAttr "R_Leg_FK_Jnt_03.msg" "bindPose1.m[19]";
connectAttr "L_Leg_FK_Jnt_01.msg" "bindPose1.m[20]";
connectAttr "L_Leg_FK_Jnt_02.msg" "bindPose1.m[21]";
connectAttr "L_Leg_FK_Jnt_03.msg" "bindPose1.m[22]";
connectAttr "GolemRig.msg" "bindPose1.m[24]";
connectAttr "bindPose1.m[24]" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[3]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[9]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[3]" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[3]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.m[1]" "bindPose1.p[16]";
connectAttr "bindPose1.m[16]" "bindPose1.p[17]";
connectAttr "bindPose1.m[17]" "bindPose1.p[18]";
connectAttr "bindPose1.m[18]" "bindPose1.p[19]";
connectAttr "bindPose1.m[16]" "bindPose1.p[20]";
connectAttr "bindPose1.m[20]" "bindPose1.p[21]";
connectAttr "bindPose1.m[21]" "bindPose1.p[22]";
connectAttr "bindPose1.w" "bindPose1.p[24]";
connectAttr "ROOT_Jnt.bps" "bindPose1.wm[1]";
connectAttr "Spine_Jnt_01.bps" "bindPose1.wm[2]";
connectAttr "Spine_Jnt_02.bps" "bindPose1.wm[3]";
connectAttr "L_Arm_IK_Jnt_01.bps" "bindPose1.wm[4]";
connectAttr "L_Arm_IK_Jnt_02.bps" "bindPose1.wm[5]";
connectAttr "L_Arm_IK_Jnt_03.bps" "bindPose1.wm[6]";
connectAttr "L_Arm_IK_Jnt_04.bps" "bindPose1.wm[7]";
connectAttr "R_Arm_IK_Jnt_01.bps" "bindPose1.wm[8]";
connectAttr "R_Arm_IK_Jnt_02.bps" "bindPose1.wm[9]";
connectAttr "R_Arm_IK_Jnt_03.bps" "bindPose1.wm[10]";
connectAttr "R_Arm_IK_Jnt_04.bps" "bindPose1.wm[11]";
connectAttr "Head_Jnt_01.bps" "bindPose1.wm[12]";
connectAttr "Head_Jnt_02.bps" "bindPose1.wm[13]";
connectAttr "Jaw_Jnt_01.bps" "bindPose1.wm[14]";
connectAttr "Jaw_Jnt_02.bps" "bindPose1.wm[15]";
connectAttr "Pelvis_Jnt.bps" "bindPose1.wm[16]";
connectAttr "R_Leg_FK_Jnt_01.bps" "bindPose1.wm[17]";
connectAttr "R_Leg_FK_Jnt_02.bps" "bindPose1.wm[18]";
connectAttr "R_Leg_FK_Jnt_03.bps" "bindPose1.wm[19]";
connectAttr "L_Leg_FK_Jnt_01.bps" "bindPose1.wm[20]";
connectAttr "L_Leg_FK_Jnt_02.bps" "bindPose1.wm[21]";
connectAttr "L_Leg_FK_Jnt_03.bps" "bindPose1.wm[22]";
connectAttr "R_Arm_IK_Basae_CtrlShapeOrig.ws" "skinCluster1.ip[0].ig";
connectAttr "R_Arm_IK_Basae_CtrlShapeOrig.l" "skinCluster1.orggeom[0]";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "ROOT_Jnt.wm" "skinCluster1.ma[0]";
connectAttr "Spine_Jnt_01.wm" "skinCluster1.ma[1]";
connectAttr "Spine_Jnt_02.wm" "skinCluster1.ma[2]";
connectAttr "L_Arm_IK_Jnt_01.wm" "skinCluster1.ma[3]";
connectAttr "L_Arm_IK_Jnt_02.wm" "skinCluster1.ma[4]";
connectAttr "L_Arm_IK_Jnt_03.wm" "skinCluster1.ma[5]";
connectAttr "L_Arm_IK_Jnt_04.wm" "skinCluster1.ma[6]";
connectAttr "R_Arm_IK_Jnt_01.wm" "skinCluster1.ma[7]";
connectAttr "R_Arm_IK_Jnt_02.wm" "skinCluster1.ma[8]";
connectAttr "R_Arm_IK_Jnt_03.wm" "skinCluster1.ma[9]";
connectAttr "R_Arm_IK_Jnt_04.wm" "skinCluster1.ma[10]";
connectAttr "Head_Jnt_01.wm" "skinCluster1.ma[11]";
connectAttr "Head_Jnt_02.wm" "skinCluster1.ma[12]";
connectAttr "Jaw_Jnt_01.wm" "skinCluster1.ma[13]";
connectAttr "Jaw_Jnt_02.wm" "skinCluster1.ma[14]";
connectAttr "Pelvis_Jnt.wm" "skinCluster1.ma[15]";
connectAttr "R_Leg_FK_Jnt_01.wm" "skinCluster1.ma[16]";
connectAttr "R_Leg_FK_Jnt_02.wm" "skinCluster1.ma[17]";
connectAttr "R_Leg_FK_Jnt_03.wm" "skinCluster1.ma[18]";
connectAttr "L_Leg_FK_Jnt_01.wm" "skinCluster1.ma[19]";
connectAttr "L_Leg_FK_Jnt_02.wm" "skinCluster1.ma[20]";
connectAttr "L_Leg_FK_Jnt_03.wm" "skinCluster1.ma[21]";
connectAttr "ROOT_Jnt.liw" "skinCluster1.lw[0]";
connectAttr "Spine_Jnt_01.liw" "skinCluster1.lw[1]";
connectAttr "Spine_Jnt_02.liw" "skinCluster1.lw[2]";
connectAttr "L_Arm_IK_Jnt_01.liw" "skinCluster1.lw[3]";
connectAttr "L_Arm_IK_Jnt_02.liw" "skinCluster1.lw[4]";
connectAttr "L_Arm_IK_Jnt_03.liw" "skinCluster1.lw[5]";
connectAttr "L_Arm_IK_Jnt_04.liw" "skinCluster1.lw[6]";
connectAttr "R_Arm_IK_Jnt_01.liw" "skinCluster1.lw[7]";
connectAttr "R_Arm_IK_Jnt_02.liw" "skinCluster1.lw[8]";
connectAttr "R_Arm_IK_Jnt_03.liw" "skinCluster1.lw[9]";
connectAttr "R_Arm_IK_Jnt_04.liw" "skinCluster1.lw[10]";
connectAttr "Head_Jnt_01.liw" "skinCluster1.lw[11]";
connectAttr "Head_Jnt_02.liw" "skinCluster1.lw[12]";
connectAttr "Jaw_Jnt_01.liw" "skinCluster1.lw[13]";
connectAttr "Jaw_Jnt_02.liw" "skinCluster1.lw[14]";
connectAttr "Pelvis_Jnt.liw" "skinCluster1.lw[15]";
connectAttr "R_Leg_FK_Jnt_01.liw" "skinCluster1.lw[16]";
connectAttr "R_Leg_FK_Jnt_02.liw" "skinCluster1.lw[17]";
connectAttr "R_Leg_FK_Jnt_03.liw" "skinCluster1.lw[18]";
connectAttr "L_Leg_FK_Jnt_01.liw" "skinCluster1.lw[19]";
connectAttr "L_Leg_FK_Jnt_02.liw" "skinCluster1.lw[20]";
connectAttr "L_Leg_FK_Jnt_03.liw" "skinCluster1.lw[21]";
connectAttr "ROOT_Jnt.obcc" "skinCluster1.ifcl[0]";
connectAttr "Spine_Jnt_01.obcc" "skinCluster1.ifcl[1]";
connectAttr "Spine_Jnt_02.obcc" "skinCluster1.ifcl[2]";
connectAttr "L_Arm_IK_Jnt_01.obcc" "skinCluster1.ifcl[3]";
connectAttr "L_Arm_IK_Jnt_02.obcc" "skinCluster1.ifcl[4]";
connectAttr "L_Arm_IK_Jnt_03.obcc" "skinCluster1.ifcl[5]";
connectAttr "L_Arm_IK_Jnt_04.obcc" "skinCluster1.ifcl[6]";
connectAttr "R_Arm_IK_Jnt_01.obcc" "skinCluster1.ifcl[7]";
connectAttr "R_Arm_IK_Jnt_02.obcc" "skinCluster1.ifcl[8]";
connectAttr "R_Arm_IK_Jnt_03.obcc" "skinCluster1.ifcl[9]";
connectAttr "R_Arm_IK_Jnt_04.obcc" "skinCluster1.ifcl[10]";
connectAttr "Head_Jnt_01.obcc" "skinCluster1.ifcl[11]";
connectAttr "Head_Jnt_02.obcc" "skinCluster1.ifcl[12]";
connectAttr "Jaw_Jnt_01.obcc" "skinCluster1.ifcl[13]";
connectAttr "Jaw_Jnt_02.obcc" "skinCluster1.ifcl[14]";
connectAttr "Pelvis_Jnt.obcc" "skinCluster1.ifcl[15]";
connectAttr "R_Leg_FK_Jnt_01.obcc" "skinCluster1.ifcl[16]";
connectAttr "R_Leg_FK_Jnt_02.obcc" "skinCluster1.ifcl[17]";
connectAttr "R_Leg_FK_Jnt_03.obcc" "skinCluster1.ifcl[18]";
connectAttr "L_Leg_FK_Jnt_01.obcc" "skinCluster1.ifcl[19]";
connectAttr "L_Leg_FK_Jnt_02.obcc" "skinCluster1.ifcl[20]";
connectAttr "L_Leg_FK_Jnt_03.obcc" "skinCluster1.ifcl[21]";
connectAttr "layerManager.dli[1]" "Geo_Layer.id";
connectAttr "layerManager.dli[2]" "Armature_Layer.id";
connectAttr "layerManager.dli[3]" "Control_Layer.id";
connectAttr ":defaultColorMgtGlobals.cme" "GolemMainTexture.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "GolemMainTexture.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "GolemMainTexture.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "GolemMainTexture.ws";
connectAttr "GolemMainTexture_frameOffset.o" "GolemMainTexture.io";
connectAttr "rampShader1.oc" "GolemShader.cs[0].t";
connectAttr "GolemMainTexture.oc" "GolemShader.cs[1].c";
connectAttr "GolemShader.oc" "layeredShader1SG.ss";
connectAttr "Golem_MeshShape.iog" "layeredShader1SG.dsm" -na;
connectAttr "layeredShader1SG.msg" "materialInfo3.sg";
connectAttr "GolemShader.msg" "materialInfo3.m";
connectAttr "GolemMainTexture.msg" "materialInfo3.t" -na;
connectAttr "base_color_texture1.oc" "GolemMat2.c";
connectAttr "GolemMat2.oc" "GolemSG1.ss";
connectAttr "GolemSG1.msg" "materialInfo4.sg";
connectAttr "GolemMat2.msg" "materialInfo4.m";
connectAttr "base_color_texture1.msg" "materialInfo4.t" -na;
connectAttr "place2dTexture3.o" "base_color_texture1.uv";
connectAttr "place2dTexture3.ofu" "base_color_texture1.ofu";
connectAttr "place2dTexture3.ofv" "base_color_texture1.ofv";
connectAttr "place2dTexture3.rf" "base_color_texture1.rf";
connectAttr "place2dTexture3.reu" "base_color_texture1.reu";
connectAttr "place2dTexture3.rev" "base_color_texture1.rev";
connectAttr "place2dTexture3.vt1" "base_color_texture1.vt1";
connectAttr "place2dTexture3.vt2" "base_color_texture1.vt2";
connectAttr "place2dTexture3.vt3" "base_color_texture1.vt3";
connectAttr "place2dTexture3.vc1" "base_color_texture1.vc1";
connectAttr "place2dTexture3.ofs" "base_color_texture1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "base_color_texture1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "base_color_texture1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "base_color_texture1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "base_color_texture1.ws";
connectAttr "base_color_texture_ncl1_2.oc" "GolemMat1FBXASC046002.c";
connectAttr "GolemMat1FBXASC046002.oc" "GolemFBXASC046001SG1.ss";
connectAttr "GolemFBXASC046001SG1.msg" "materialInfo5.sg";
connectAttr "GolemMat1FBXASC046002.msg" "materialInfo5.m";
connectAttr "base_color_texture_ncl1_2.msg" "materialInfo5.t" -na;
connectAttr "place2dTexture4.o" "base_color_texture_ncl1_2.uv";
connectAttr "place2dTexture4.ofu" "base_color_texture_ncl1_2.ofu";
connectAttr "place2dTexture4.ofv" "base_color_texture_ncl1_2.ofv";
connectAttr "place2dTexture4.rf" "base_color_texture_ncl1_2.rf";
connectAttr "place2dTexture4.reu" "base_color_texture_ncl1_2.reu";
connectAttr "place2dTexture4.rev" "base_color_texture_ncl1_2.rev";
connectAttr "place2dTexture4.vt1" "base_color_texture_ncl1_2.vt1";
connectAttr "place2dTexture4.vt2" "base_color_texture_ncl1_2.vt2";
connectAttr "place2dTexture4.vt3" "base_color_texture_ncl1_2.vt3";
connectAttr "place2dTexture4.vc1" "base_color_texture_ncl1_2.vc1";
connectAttr "place2dTexture4.ofs" "base_color_texture_ncl1_2.fs";
connectAttr ":defaultColorMgtGlobals.cme" "base_color_texture_ncl1_2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "base_color_texture_ncl1_2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "base_color_texture_ncl1_2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "base_color_texture_ncl1_2.ws";
connectAttr "directionalLightShape1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "GolemMainTexture.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "layeredShader1SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "rampShader1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "GolemShader.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "Head_ctrl_01.FaceNumber" "GolemMainTexture_frameOffset.i";
connectAttr "Golem_MeshShapeOrig.w" "skinCluster2.ip[0].ig";
connectAttr "Golem_MeshShapeOrig.o" "skinCluster2.orggeom[0]";
connectAttr "ROOT_Jnt.wm" "skinCluster2.ma[0]";
connectAttr "Spine_Jnt_01.wm" "skinCluster2.ma[1]";
connectAttr "Spine_Jnt_02.wm" "skinCluster2.ma[2]";
connectAttr "L_Arm_IK_Jnt_01.wm" "skinCluster2.ma[3]";
connectAttr "L_Arm_IK_Jnt_02.wm" "skinCluster2.ma[4]";
connectAttr "L_Arm_IK_Jnt_03.wm" "skinCluster2.ma[5]";
connectAttr "L_Arm_IK_Jnt_04.wm" "skinCluster2.ma[6]";
connectAttr "R_Arm_IK_Jnt_01.wm" "skinCluster2.ma[7]";
connectAttr "R_Arm_IK_Jnt_02.wm" "skinCluster2.ma[8]";
connectAttr "R_Arm_IK_Jnt_03.wm" "skinCluster2.ma[9]";
connectAttr "R_Arm_IK_Jnt_04.wm" "skinCluster2.ma[10]";
connectAttr "Head_Jnt_01.wm" "skinCluster2.ma[11]";
connectAttr "Head_Jnt_02.wm" "skinCluster2.ma[12]";
connectAttr "Jaw_Jnt_01.wm" "skinCluster2.ma[13]";
connectAttr "Jaw_Jnt_02.wm" "skinCluster2.ma[14]";
connectAttr "Pelvis_Jnt.wm" "skinCluster2.ma[15]";
connectAttr "R_Leg_FK_Jnt_01.wm" "skinCluster2.ma[16]";
connectAttr "R_Leg_FK_Jnt_02.wm" "skinCluster2.ma[17]";
connectAttr "R_Leg_FK_Jnt_03.wm" "skinCluster2.ma[18]";
connectAttr "L_Leg_FK_Jnt_01.wm" "skinCluster2.ma[19]";
connectAttr "L_Leg_FK_Jnt_02.wm" "skinCluster2.ma[20]";
connectAttr "L_Leg_FK_Jnt_03.wm" "skinCluster2.ma[21]";
connectAttr "ROOT_Jnt.liw" "skinCluster2.lw[0]";
connectAttr "Spine_Jnt_01.liw" "skinCluster2.lw[1]";
connectAttr "Spine_Jnt_02.liw" "skinCluster2.lw[2]";
connectAttr "L_Arm_IK_Jnt_01.liw" "skinCluster2.lw[3]";
connectAttr "L_Arm_IK_Jnt_02.liw" "skinCluster2.lw[4]";
connectAttr "L_Arm_IK_Jnt_03.liw" "skinCluster2.lw[5]";
connectAttr "L_Arm_IK_Jnt_04.liw" "skinCluster2.lw[6]";
connectAttr "R_Arm_IK_Jnt_01.liw" "skinCluster2.lw[7]";
connectAttr "R_Arm_IK_Jnt_02.liw" "skinCluster2.lw[8]";
connectAttr "R_Arm_IK_Jnt_03.liw" "skinCluster2.lw[9]";
connectAttr "R_Arm_IK_Jnt_04.liw" "skinCluster2.lw[10]";
connectAttr "Head_Jnt_01.liw" "skinCluster2.lw[11]";
connectAttr "Head_Jnt_02.liw" "skinCluster2.lw[12]";
connectAttr "Jaw_Jnt_01.liw" "skinCluster2.lw[13]";
connectAttr "Jaw_Jnt_02.liw" "skinCluster2.lw[14]";
connectAttr "Pelvis_Jnt.liw" "skinCluster2.lw[15]";
connectAttr "R_Leg_FK_Jnt_01.liw" "skinCluster2.lw[16]";
connectAttr "R_Leg_FK_Jnt_02.liw" "skinCluster2.lw[17]";
connectAttr "R_Leg_FK_Jnt_03.liw" "skinCluster2.lw[18]";
connectAttr "L_Leg_FK_Jnt_01.liw" "skinCluster2.lw[19]";
connectAttr "L_Leg_FK_Jnt_02.liw" "skinCluster2.lw[20]";
connectAttr "L_Leg_FK_Jnt_03.liw" "skinCluster2.lw[21]";
connectAttr "ROOT_Jnt.obcc" "skinCluster2.ifcl[0]";
connectAttr "Spine_Jnt_01.obcc" "skinCluster2.ifcl[1]";
connectAttr "Spine_Jnt_02.obcc" "skinCluster2.ifcl[2]";
connectAttr "L_Arm_IK_Jnt_01.obcc" "skinCluster2.ifcl[3]";
connectAttr "L_Arm_IK_Jnt_02.obcc" "skinCluster2.ifcl[4]";
connectAttr "L_Arm_IK_Jnt_03.obcc" "skinCluster2.ifcl[5]";
connectAttr "L_Arm_IK_Jnt_04.obcc" "skinCluster2.ifcl[6]";
connectAttr "R_Arm_IK_Jnt_01.obcc" "skinCluster2.ifcl[7]";
connectAttr "R_Arm_IK_Jnt_02.obcc" "skinCluster2.ifcl[8]";
connectAttr "R_Arm_IK_Jnt_03.obcc" "skinCluster2.ifcl[9]";
connectAttr "R_Arm_IK_Jnt_04.obcc" "skinCluster2.ifcl[10]";
connectAttr "Head_Jnt_01.obcc" "skinCluster2.ifcl[11]";
connectAttr "Head_Jnt_02.obcc" "skinCluster2.ifcl[12]";
connectAttr "Jaw_Jnt_01.obcc" "skinCluster2.ifcl[13]";
connectAttr "Jaw_Jnt_02.obcc" "skinCluster2.ifcl[14]";
connectAttr "Pelvis_Jnt.obcc" "skinCluster2.ifcl[15]";
connectAttr "R_Leg_FK_Jnt_01.obcc" "skinCluster2.ifcl[16]";
connectAttr "R_Leg_FK_Jnt_02.obcc" "skinCluster2.ifcl[17]";
connectAttr "R_Leg_FK_Jnt_03.obcc" "skinCluster2.ifcl[18]";
connectAttr "L_Leg_FK_Jnt_01.obcc" "skinCluster2.ifcl[19]";
connectAttr "L_Leg_FK_Jnt_02.obcc" "skinCluster2.ifcl[20]";
connectAttr "L_Leg_FK_Jnt_03.obcc" "skinCluster2.ifcl[21]";
connectAttr "bindPose1.msg" "skinCluster2.bp";
connectAttr "R_Leg_FK_Jnt_01.msg" "skinCluster2.ptt";
connectAttr "GolemSG.pa" ":renderPartition.st" -na;
connectAttr "GolemFBXASC046001SG.pa" ":renderPartition.st" -na;
connectAttr "layeredShader1SG.pa" ":renderPartition.st" -na;
connectAttr "GolemSG1.pa" ":renderPartition.st" -na;
connectAttr "GolemFBXASC046001SG1.pa" ":renderPartition.st" -na;
connectAttr "GolemMat1.msg" ":defaultShaderList1.s" -na;
connectAttr "GolemMat1FBXASC046001.msg" ":defaultShaderList1.s" -na;
connectAttr "rampShader1.msg" ":defaultShaderList1.s" -na;
connectAttr "GolemShader.msg" ":defaultShaderList1.s" -na;
connectAttr "GolemMat2.msg" ":defaultShaderList1.s" -na;
connectAttr "GolemMat1FBXASC046002.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "directionalLightShape1.ltd" ":lightList1.l" -na;
connectAttr "base_color_texture.msg" ":defaultTextureList1.tx" -na;
connectAttr "base_color_texture_ncl1_1.msg" ":defaultTextureList1.tx" -na;
connectAttr "GolemMainTexture.msg" ":defaultTextureList1.tx" -na;
connectAttr "base_color_texture1.msg" ":defaultTextureList1.tx" -na;
connectAttr "base_color_texture_ncl1_2.msg" ":defaultTextureList1.tx" -na;
connectAttr "directionalLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of GolemRig.ma
