/*
  Made by:
  Jens Heukers,
  https://www.jensapplications.com.

  DESCRIPTION:
  Handles the LBChange event of the gearshop.. nothing to do here, unless you want to add sections....
*/

_control = (findDisplay 8241) displayCtrl 1500;
_shopdisplay = (findDisplay 8241) displayCtrl 1501;
lbClear _shopdisplay;

_index = lbCurSel _control;
_sectionData = _control lbData _index;

_tempArray = [];
switch (gearShopSide) do {
    case "cop": {
        switch (_sectionData) do {
            case "headgear": {
              _tempArray = cop_headgear;
            };
            case "gear": {
              _tempArray = cop_gear;
            };
            case "vests": {
              _tempArray = cop_vests;
            };
            case "backpacks": {
              _tempArray = cop_backpack;
            };
            case "items": {
              _tempArray = cop_items;
            };
            case "guns": {
              _tempArray = cop_guns;
            };
            case "magazines": {
              _tempArray = cop_magazines;
            };
            case "attachements": {
              _tempArray = cop_attachements;
            };
        };
    };
    case "ems": {
        switch (_sectionData) do {
          case "headgear": {
            _tempArray = ems_headgear;
          };
          case "gear": {
            _tempArray = ems_gear;
          };
          case "vests": {
            _tempArray = ems_vests;
          };
          case "backpacks": {
            _tempArray = ems_backpack;
          };
          case "items": {
            _tempArray = ems_items;
          };
          case "guns": {
            _tempArray = ems_guns;
          };
          case "magazines": {
            _tempArray = ems_magazines;
          };
          case "attachements": {
            _tempArray = ems_attachements;
          };
        };
    };

    case "civ": {
        switch (_sectionData) do {
          case "headgear": {
            _tempArray = default_headgear;
          };
          case "gear": {
            _tempArray = default_gear;
          };
          case "vests": {
            _tempArray = default_vests;
          };
          case "backpacks": {
            _tempArray = default_backpack;
          };
          case "items": {
            _tempArray = default_items;
          };
          case "guns": {
            _tempArray = default_guns;
          };
          case "magazines": {
            _tempArray = default_magazines;
          };
          case "attachements": {
            _tempArray = default_attachements;
          };
        };
    };

    case "rebel": {
      switch (_sectionData) do {
        case "headgear": {
          _tempArray = rebel_headgear;
        };
        case "gear": {
          _tempArray = rebel_gear;
        };
        case "vests": {
          _tempArray = rebel_vests;
        };
        case "backpacks": {
          _tempArray = rebel_backpack;
        };
        case "items": {
          _tempArray = rebel_items;
        };
        case "guns": {
          _tempArray = rebel_guns;
        };
        case "magazines": {
          _tempArray = rebel_magazines;
        };
        case "attachements": {
          _tempArray = rebel_attachements;
        };
      };
    };
};

_index = 0;
{
    //Set classes & Price
    _currentItemName = _x select 0;
    _shopdisplay lbAdd _currentItemName;
    _data = format["%1&%2",_x select 1, _x select 2];
    lbSetData[1501, _index, _data];
    _index = _index + 1;
}forEach _tempArray;
