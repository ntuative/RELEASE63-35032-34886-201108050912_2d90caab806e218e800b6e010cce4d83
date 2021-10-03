package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1820:int;
      
      private var var_1822:int;
      
      private var var_1823:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1822 = param1.readInteger();
         this.var_1820 = param1.readInteger();
         this.var_1823 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_1820 = 0;
         this.var_1822 = 0;
         this.var_1823 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return this.var_1820;
      }
      
      public function get messageId() : int
      {
         return this.var_1822;
      }
      
      public function get timestamp() : String
      {
         return this.var_1823;
      }
   }
}
