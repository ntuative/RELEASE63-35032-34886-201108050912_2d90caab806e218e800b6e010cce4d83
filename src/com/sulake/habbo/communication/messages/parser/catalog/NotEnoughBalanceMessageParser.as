package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_1964:int = 0;
      
      private var var_1963:int = 0;
      
      private var var_1878:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_1964;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_1963;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1878;
      }
      
      public function flush() : Boolean
      {
         this.var_1964 = 0;
         this.var_1963 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1964 = param1.readInteger();
         this.var_1963 = param1.readInteger();
         this.var_1878 = param1.readInteger();
         return true;
      }
   }
}
