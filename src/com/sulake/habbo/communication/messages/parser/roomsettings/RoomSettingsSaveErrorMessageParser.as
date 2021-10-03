package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_2332:int = 1;
      
      public static const const_2160:int = 2;
      
      public static const const_2348:int = 3;
      
      public static const const_2283:int = 4;
      
      public static const const_2016:int = 5;
      
      public static const const_2184:int = 6;
      
      public static const const_1845:int = 7;
      
      public static const const_1799:int = 8;
      
      public static const const_2185:int = 9;
      
      public static const const_1848:int = 10;
      
      public static const const_2022:int = 11;
      
      public static const const_1832:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1820:int;
      
      private var var_662:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1820 = param1.readInteger();
         this.var_662 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1820;
      }
      
      public function get info() : String
      {
         return this.var_662;
      }
   }
}
