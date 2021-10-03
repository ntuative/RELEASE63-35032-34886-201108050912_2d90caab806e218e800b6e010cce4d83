package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_631:String;
      
      private var var_1007:String;
      
      private var var_2887:String;
      
      private var var_1909:String;
      
      private var var_2885:int;
      
      private var var_2359:int;
      
      private var var_1356:int;
      
      private var var_892:int;
      
      private var var_2886:Boolean;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_631 = param1.readString();
         this.var_1007 = param1.readString();
         this.var_2887 = param1.readString();
         this.var_1909 = param1.readString();
         this.var_2885 = param1.readInteger();
         this.var_2359 = param1.readInteger();
         this.var_1356 = param1.readInteger();
         this.var_892 = param1.readInteger();
         this.var_2886 = param1.readBoolean();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_631;
      }
      
      public function get sex() : String
      {
         return this.var_1007;
      }
      
      public function get customData() : String
      {
         return this.var_2887;
      }
      
      public function get realName() : String
      {
         return this.var_1909;
      }
      
      public function get directMail() : int
      {
         return this.var_2885;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2359;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1356;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_892;
      }
      
      public function get streamPublishingAllowed() : Boolean
      {
         return this.var_2886;
      }
   }
}
