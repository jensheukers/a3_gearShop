/*
  Made by:
  Jens Heukers,
  https://www.jensapplications.com.
  
  VERSION: 
  0.8.0
  
  DESCRIPTION:
  Loads the gear shop...

  params:
    0. player side: cop ems ect & Type of shop.
	AVAILABLE TYPES ARE: cop, ems, default, rebel.
	
	Type = Either GEAR or WEAPONS or COMBINE
	COMBINE = GEAR AND WEAPONS TOGHETER 
	
	I.E:
	[civ_GEAR] spawn TAGNAME_fnc_gearShop;
*/
params["_sideAndType"];

_gearDialog = createDialog "Jens_GearDialog";

_sideTypeArray = _sideAndType splitString "_";

gearShopSide = _sideTypeArray select 0;
_shoptype = _sideTypeArray select 1;

//Set lb : 1500 data and text
_control = (findDisplay 8241) displayCtrl 1500;

if(_shoptype == "GEAR") then {
  _control lbAdd "Headgear";
  _control lbAdd "Gear";
  _control lbAdd "Vests";
  _control lbAdd "Backpacks";
  _control lbadd "Items";


  lbSetData[1500, 0, "headgear"];
  lbSetData[1500, 1, "gear"];
  lbSetData[1500, 2, "vests"];
  lbSetData[1500, 3, "backpacks"];
  lbSetData[1500, 4, "items"];
};

if(_shoptype == "WEAPONS") then {
  _control lbAdd "Guns";
  _control lbAdd "Magazines";
  _control lbAdd "Attachements";

  lbSetData[1500, 0, "guns"];
  lbSetData[1500, 1, "magazines"];
  lbSetData[1500, 2, "attachements"];
};

if(_shoptype == "COMBINE") then {
  _control lbAdd "Headgear";
  _control lbAdd "Gear";
  _control lbAdd "Vests";
  _control lbAdd "Backpacks";
  _control lbadd "Items";
  _control lbAdd "Guns";
  _control lbAdd "Magazines";
  _control lbAdd "Attachements";

  lbSetData[1500, 0, "headgear"];
  lbSetData[1500, 1, "gear"];
  lbSetData[1500, 2, "vests"];
  lbSetData[1500, 3, "backpacks"];
  lbSetData[1500, 4, "items"];
  lbSetData[1500, 5, "guns"];
  lbSetData[1500, 6, "magazines"];
  lbSetData[1500, 7, "attachements"];
};
