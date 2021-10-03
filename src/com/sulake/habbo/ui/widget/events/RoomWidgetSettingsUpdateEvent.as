package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetSettingsUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_445:String = "RWSUE_SETTINGS";
       
      
      private var var_998:Number;
      
      public function RoomWidgetSettingsUpdateEvent(param1:String, param2:Number, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.var_998 = param2;
      }
      
      public function get volume() : Number
      {
         return this.var_998;
      }
   }
}
