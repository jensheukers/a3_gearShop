/*
  Made by:
  Jens Heukers,
  https://www.jensapplications.com.

  DESCRIPTION:
  Update the price shown on LB CurrentSel Change.
*/


_priceDisplay = (findDisplay 8241) displayCtrl 1000;
_shopdisplay = (findDisplay 8241) displayCtrl 1501;

 _index = lbCurSel _shopdisplay;

 _itemData = _shopDisplay lbData _index;
 _itemDataArray = _itemData splitString "&";

_priceData = _itemDataArray select 1;

_priceText = format["Price : %1", _priceData];
_priceDisplay ctrlSetText _priceText;
