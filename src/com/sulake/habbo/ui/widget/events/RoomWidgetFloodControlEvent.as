package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetFloodControlEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_1029:String = "RWFCE_FLOOD_CONTROL";
       
      
      private var var_1792:int = 0;
      
      public function RoomWidgetFloodControlEvent(param1:int)
      {
         super(const_1029,false,false);
         this.var_1792 = param1;
      }
      
      public function get seconds() : int
      {
         return this.var_1792;
      }
   }
}
