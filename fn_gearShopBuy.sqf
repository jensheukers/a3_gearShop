/*
  Made by:
  Jens Heukers,
  https://www.jensapplications.com.

  DESCRIPTION:
  Buys the selected Item
*/

_typeDisplay = (findDisplay 8241) displayCtrl 1500;
_curSelType = lbCurSel _typeDisplay;
_shopDisplay = (findDisplay 8241) displayCtrl 1501;
_curSelShop = lbCurSel _shopDisplay;

_curType = _typeDisplay lbText _curSelType;
_itemData = _shopDisplay lbData _curSelShop;

_itemDataArray = _itemData splitString "&";

_itemName = _itemDataArray select 0;
_itemPrice = _itemDataArray select 1;
_moneyTake = parseNumber _itemPrice;
//Check if player has enough money

//Nopixel money variable
//_cash = player getVariable "wallet";

//Altis life money variable
_cash = life_cash;

if(_cash < _moneyTake) exitWith {
  ["You dont have enough money"] spawn client_fnc_notify;
};

//Check what sort of item it is
switch (_curType) do {
    case "Headgear": {
      removeHeadgear player;
      player addHeadgear _itemName;
    };
    case "Gear": {
      removeUniform player;
      player addUniform _itemName;
    };
    case "Vests": {
      removeVest player;
      player addVest _itemName;
    };
    case "Backpacks": {
      removeBackpack player;
      player addBackpack _itemName;
    };
    case "Items": {
      player addItem _itemName;
    };
    case "Guns": {
      player addWeapon _itemName;
    };
    case "Magazines": {
      player addMagazine _itemName;
    };
    case "Attachements": {
      player addItem _itemName;
    }
};

[format["You bought a: %1",_itemName]] spawn client_fnc_notify;


//Remove the money from player bank account....

//NOPIXEL BASED:
//[_moneyTake] call Client_fnc_removeCash;

//Altis Life BASED:
life_cash -= _moneyTake;
