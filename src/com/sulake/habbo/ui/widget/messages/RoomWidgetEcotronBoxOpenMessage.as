package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetEcotronBoxOpenMessage extends RoomWidgetMessage
   {
      
      public static const const_831:String = "RWEBOM_OPEN_ECOTRONBOX";
       
      
      private var var_237:int;
      
      public function RoomWidgetEcotronBoxOpenMessage(param1:String, param2:int)
      {
         super(param1);
         this.var_237 = param2;
      }
      
      public function get objectId() : int
      {
         return this.var_237;
      }
   }
}
