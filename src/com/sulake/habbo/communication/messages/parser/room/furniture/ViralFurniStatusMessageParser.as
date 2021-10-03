package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ViralFurniStatusMessageParser implements IMessageParser
   {
       
      
      private var var_204:String;
      
      private var var_237:int;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_1650:int = 0;
      
      private var var_440:int;
      
      private var _shareId:String;
      
      private var var_2357:String;
      
      public function ViralFurniStatusMessageParser()
      {
         super();
      }
      
      public function get campaignID() : String
      {
         return this.var_204;
      }
      
      public function get objectId() : int
      {
         return this.var_237;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get itemCategory() : int
      {
         return this.var_1650;
      }
      
      public function get shareId() : String
      {
         return this._shareId;
      }
      
      public function get status() : int
      {
         return this.var_440;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2357;
      }
      
      public function flush() : Boolean
      {
         this._roomId = 0;
         this._roomCategory = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_204 = param1.readString();
         this.var_237 = param1.readInteger();
         this.var_440 = param1.readInteger();
         this._shareId = param1.readString();
         this.var_2357 = param1.readString();
         this.var_1650 = param1.readInteger();
         return true;
      }
   }
}
