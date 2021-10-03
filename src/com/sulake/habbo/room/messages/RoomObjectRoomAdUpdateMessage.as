package com.sulake.habbo.room.messages
{
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import flash.display.BitmapData;
   
   public class RoomObjectRoomAdUpdateMessage extends RoomObjectUpdateMessage
   {
      
      public static const const_1378:String = "RORUM_ROOM_AD_ACTIVATE";
      
      public static const const_1196:String = "RORUM_ROOM_BILLBOARD_IMAGE_LOADED";
      
      public static const const_1310:String = "RORUM_ROOM_BILLBOARD_IMAGE_LOADING_FAILED";
       
      
      private var _type:String;
      
      private var var_480:String;
      
      private var var_1423:String;
      
      private var var_237:int;
      
      private var _bitmapData:BitmapData;
      
      public function RoomObjectRoomAdUpdateMessage(param1:String, param2:String, param3:String, param4:int = -1, param5:BitmapData = null)
      {
         super(null,null);
         this._type = param1;
         this.var_480 = param2;
         this.var_1423 = param3;
         this.var_237 = param4;
         this._bitmapData = param5;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get asset() : String
      {
         return this.var_480;
      }
      
      public function get clickUrl() : String
      {
         return this.var_1423;
      }
      
      public function get objectId() : int
      {
         return this.var_237;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this._bitmapData;
      }
   }
}
