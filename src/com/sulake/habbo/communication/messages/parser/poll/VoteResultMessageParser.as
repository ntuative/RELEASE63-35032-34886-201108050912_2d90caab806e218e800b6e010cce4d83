package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1280:String;
      
      private var var_1456:Array;
      
      private var var_1341:Array;
      
      private var var_1746:int;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get question() : String
      {
         return this.var_1280;
      }
      
      public function get choices() : Array
      {
         return this.var_1456.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1341.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1746;
      }
      
      public function flush() : Boolean
      {
         this.var_1280 = "";
         this.var_1456 = [];
         this.var_1341 = [];
         this.var_1746 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1280 = param1.readString();
         this.var_1456 = [];
         this.var_1341 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            this.var_1456.push(param1.readString());
            this.var_1341.push(param1.readInteger());
            _loc3_++;
         }
         this.var_1746 = param1.readInteger();
         return true;
      }
   }
}
