package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetStickieSendUpdateMessage extends RoomWidgetMessage
   {
      
      public static const const_616:String = "RWSUM_STICKIE_SEND_UPDATE";
      
      public static const const_777:String = "RWSUM_STICKIE_SEND_DELETE";
       
      
      private var var_237:int;
      
      private var _text:String;
      
      private var var_364:String;
      
      public function RoomWidgetStickieSendUpdateMessage(param1:String, param2:int, param3:String = "", param4:String = "")
      {
         super(param1);
         this.var_237 = param2;
         this._text = param3;
         this.var_364 = param4;
      }
      
      public function get objectId() : int
      {
         return this.var_237;
      }
      
      public function get text() : String
      {
         return this._text;
      }
      
      public function get colorHex() : String
      {
         return this.var_364;
      }
   }
}
