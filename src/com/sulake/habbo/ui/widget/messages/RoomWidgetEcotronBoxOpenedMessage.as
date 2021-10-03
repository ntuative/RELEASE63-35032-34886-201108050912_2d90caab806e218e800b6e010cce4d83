package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetEcotronBoxOpenedMessage extends RoomWidgetMessage
   {
      
      public static const const_1979:String = "RWEBOM_ECOTRONBOX_OPENED";
       
      
      private var var_1690:String;
      
      private var var_2100:int;
      
      public function RoomWidgetEcotronBoxOpenedMessage(param1:String, param2:String, param3:int)
      {
         super(param1);
         this.var_1690 = param2;
         this.var_2100 = param3;
      }
      
      public function get itemType() : String
      {
         return this.var_1690;
      }
      
      public function get classId() : int
      {
         return this.var_2100;
      }
   }
}
