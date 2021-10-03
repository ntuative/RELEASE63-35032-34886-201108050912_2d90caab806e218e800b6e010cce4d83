package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_1023:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1836:String = "inventory_effects";
      
      public static const const_1329:String = "inventory_badges";
      
      public static const const_1907:String = "inventory_clothes";
      
      public static const const_1919:String = "inventory_furniture";
       
      
      private var var_3032:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_1023);
         this.var_3032 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_3032;
      }
   }
}
