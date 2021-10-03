package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_894;
         param1["badge"] = const_968;
         param1["bitmap"] = const_435;
         param1["border"] = const_932;
         param1["border_notify"] = const_1925;
         param1["bubble"] = const_807;
         param1["bubble_pointer_up"] = const_1410;
         param1["bubble_pointer_right"] = const_1303;
         param1["bubble_pointer_down"] = const_1272;
         param1["bubble_pointer_left"] = const_1425;
         param1["button"] = const_594;
         param1["button_thick"] = const_1000;
         param1["button_icon"] = const_1887;
         param1["button_group_left"] = const_985;
         param1["button_group_center"] = const_987;
         param1["button_group_right"] = const_937;
         param1["canvas"] = const_792;
         param1["checkbox"] = const_966;
         param1["closebutton"] = const_1365;
         param1["container"] = const_400;
         param1["container_button"] = const_798;
         param1["display_object_wrapper"] = const_1028;
         param1["dropmenu"] = const_640;
         param1["dropmenu_item"] = const_674;
         param1["frame"] = const_417;
         param1["frame_notify"] = const_1814;
         param1["header"] = const_900;
         param1["html"] = const_1214;
         param1["icon"] = const_1204;
         param1["itemgrid"] = const_1369;
         param1["itemgrid_horizontal"] = const_646;
         param1["itemgrid_vertical"] = const_759;
         param1["itemlist"] = WINDOW_TYPE_ITEMLIST;
         param1["itemlist_horizontal"] = const_449;
         param1["itemlist_vertical"] = const_402;
         param1["label"] = const_997;
         param1["maximizebox"] = const_1952;
         param1["menu"] = const_1823;
         param1["menu_item"] = const_1902;
         param1["submenu"] = const_1262;
         param1["minimizebox"] = const_1948;
         param1["notify"] = const_2065;
         param1["null"] = const_751;
         param1["password"] = const_944;
         param1["radiobutton"] = const_1004;
         param1["region"] = const_333;
         param1["restorebox"] = const_1998;
         param1["scaler"] = const_592;
         param1["scaler_horizontal"] = const_1849;
         param1["scaler_vertical"] = const_1976;
         param1["scrollbar_horizontal"] = const_519;
         param1["scrollbar_vertical"] = const_769;
         param1["scrollbar_slider_button_up"] = const_1240;
         param1["scrollbar_slider_button_down"] = const_1210;
         param1["scrollbar_slider_button_left"] = const_1342;
         param1["scrollbar_slider_button_right"] = const_1198;
         param1["scrollbar_slider_bar_horizontal"] = const_1201;
         param1["scrollbar_slider_bar_vertical"] = const_1228;
         param1["scrollbar_slider_track_horizontal"] = const_1205;
         param1["scrollbar_slider_track_vertical"] = const_1402;
         param1["scrollable_itemlist"] = const_1774;
         param1["scrollable_itemlist_vertical"] = const_651;
         param1["scrollable_itemlist_horizontal"] = const_1279;
         param1["selector"] = const_815;
         param1["selector_list"] = const_954;
         param1["submenu"] = const_1262;
         param1["tab_button"] = const_888;
         param1["tab_container_button"] = const_1339;
         param1["tab_context"] = const_442;
         param1["tab_content"] = const_1208;
         param1["tab_selector"] = const_943;
         param1["text"] = const_749;
         param1["input"] = const_772;
         param1["toolbar"] = const_1831;
         param1["tooltip"] = const_429;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
