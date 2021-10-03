package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1353:Boolean;
      
      private var var_1354:Boolean;
      
      private var var_1632:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1353;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_1354;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1632;
      }
      
      public function flush() : Boolean
      {
         this.var_1353 = false;
         this.var_1354 = false;
         this.var_1632 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1353 = param1.readBoolean();
         this.var_1354 = param1.readBoolean();
         this.var_1632 = param1.readBoolean();
         return true;
      }
   }
}
