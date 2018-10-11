class Jens_GearDialog
{
  idd = 8241;
  class controls
  {
    class RscListbox_1500: RscListbox
    {
    	idc = 1500;
    	x = 0.494844 * safezoneW + safezoneX;
    	y = 0.379 * safezoneH + safezoneY;
    	w = 0.0928125 * safezoneW;
    	h = 0.242 * safezoneH;
      onLBSelChanged = [] call client_fnc_gearShopLBChange;
    };
    class RscListbox_1501: RscListbox
    {
    	idc = 1501;
    	x = 0.402031 * safezoneW + safezoneX;
    	y = 0.379 * safezoneH + safezoneY;
    	w = 0.0928125 * safezoneW;
    	h = 0.242 * safezoneH;
      onLBSelChanged = [] call client_fnc_gearShopPriceChange;
    };
    class RscButton_1600: RscButton
    {
    	idc = 1600;
    	text = "Close"; //--- ToDo: Localize;
    	x = 0.546406 * safezoneW + safezoneX;
    	y = 0.621 * safezoneH + safezoneY;
    	w = 0.04125 * safezoneW;
    	h = 0.044 * safezoneH;
	action = closeDialog 0;
    };
    class RscButton_1601: RscButton
    {
    	idc = 1601;
    	text = "Buy"; //--- ToDo: Localize;
    	x = 0.505156 * safezoneW + safezoneX;
    	y = 0.621 * safezoneH + safezoneY;
    	w = 0.04125 * safezoneW;
    	h = 0.044 * safezoneH;
      action = [] call client_fnc_gearShopBuy;
    };
    class RscText_1000: RscText
    {
    	idc = 1000;
    	text = "Price :  UNKNW"; //--- ToDo: Localize;
    	x = 0.402031 * safezoneW + safezoneX;
    	y = 0.621 * safezoneH + safezoneY;
    	w = 0.103125 * safezoneW;
    	h = 0.044 * safezoneH;
    };
  };
};
