package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_1405:String = "select_outfit";
       
      
      private var var_2437:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_1405);
         this.var_2437 = param1;
      }
      
      public function get outfitId() : int
      {
         return this.var_2437;
      }
   }
}
