package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MessengerErrorMessageParser implements IMessageParser
   {
       
      
      private var var_3041:int;
      
      private var var_1820:int;
      
      public function MessengerErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_3041 = param1.readInteger();
         this.var_1820 = param1.readInteger();
         return true;
      }
      
      public function get clientMessageId() : int
      {
         return this.var_3041;
      }
      
      public function get errorCode() : int
      {
         return this.var_1820;
      }
   }
}