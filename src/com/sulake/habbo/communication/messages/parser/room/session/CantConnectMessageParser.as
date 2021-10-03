package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1793:int = 1;
      
      public static const const_2297:int = 2;
      
      public static const const_1761:int = 3;
      
      public static const const_2004:int = 4;
       
      
      private var var_1672:int = 0;
      
      private var var_1671:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_1672 = 0;
         this.var_1671 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1672 = param1.readInteger();
         if(this.var_1672 == 3)
         {
            this.var_1671 = param1.readString();
         }
         else
         {
            this.var_1671 = "";
         }
         return true;
      }
      
      public function get reason() : int
      {
         return this.var_1672;
      }
      
      public function get parameter() : String
      {
         return this.var_1671;
      }
   }
}
