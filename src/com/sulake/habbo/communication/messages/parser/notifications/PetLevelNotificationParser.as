package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1775:int;
      
      private var var_2373:String;
      
      private var var_1325:int;
      
      private var var_1321:int;
      
      private var var_1811:int;
      
      private var _color:String;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1775 = param1.readInteger();
         this.var_2373 = param1.readString();
         this.var_1325 = param1.readInteger();
         this.var_1321 = param1.readInteger();
         this.var_1811 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1775;
      }
      
      public function get petName() : String
      {
         return this.var_2373;
      }
      
      public function get level() : int
      {
         return this.var_1325;
      }
      
      public function get petType() : int
      {
         return this.var_1321;
      }
      
      public function get breed() : int
      {
         return this.var_1811;
      }
      
      public function get color() : String
      {
         return this._color;
      }
   }
}
