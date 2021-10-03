package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetPresentDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_69:String = "RWPDUE_PACKAGEINFO";
      
      public static const const_99:String = "RWPDUE_CONTENTS";
      
      public static const const_605:String = "RWPDUE_CONTENTS_CLUB";
      
      public static const const_632:String = "RWPDUE_CONTENTS_FLOOR";
      
      public static const const_536:String = "RWPDUE_CONTENTS_LANDSCAPE";
      
      public static const const_583:String = "RWPDUE_CONTENTS_WALLPAPER";
       
      
      private var var_237:int = -1;
      
      private var _text:String;
      
      private var var_27:Boolean;
      
      private var var_2411:BitmapData;
      
      public function RoomWidgetPresentDataUpdateEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:BitmapData = null, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_237 = param2;
         this._text = param3;
         this.var_27 = param4;
         this.var_2411 = param5;
      }
      
      public function get objectId() : int
      {
         return this.var_237;
      }
      
      public function get text() : String
      {
         return this._text;
      }
      
      public function get controller() : Boolean
      {
         return this.var_27;
      }
      
      public function get iconBitmapData() : BitmapData
      {
         return this.var_2411;
      }
   }
}
