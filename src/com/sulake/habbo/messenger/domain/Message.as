package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_907:int = 1;
      
      public static const const_753:int = 2;
      
      public static const const_906:int = 3;
      
      public static const const_1317:int = 4;
      
      public static const const_812:int = 5;
      
      public static const const_1397:int = 6;
       
      
      private var _type:int;
      
      private var var_1238:int;
      
      private var var_2711:String;
      
      private var var_2757:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1238 = param2;
         this.var_2711 = param3;
         this.var_2757 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2711;
      }
      
      public function get time() : String
      {
         return this.var_2757;
      }
      
      public function get senderId() : int
      {
         return this.var_1238;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
