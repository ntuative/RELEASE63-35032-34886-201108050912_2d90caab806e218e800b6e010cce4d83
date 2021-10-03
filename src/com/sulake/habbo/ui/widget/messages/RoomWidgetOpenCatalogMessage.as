package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_1033:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1181:String = "RWOCM_CLUB_MAIN";
      
      public static const const_2298:String = "RWOCM_PIXELS";
      
      public static const const_2256:String = "RWOCM_CREDITS";
      
      public static const const_2275:String = "RWOCM_SHELLS";
       
      
      private var var_2793:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_1033);
         this.var_2793 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2793;
      }
   }
}
