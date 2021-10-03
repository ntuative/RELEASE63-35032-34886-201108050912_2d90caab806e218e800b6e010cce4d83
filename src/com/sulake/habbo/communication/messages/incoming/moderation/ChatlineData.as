package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2413:int;
      
      private var var_2412:int;
      
      private var var_2414:int;
      
      private var var_2415:String;
      
      private var var_2042:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2413 = param1.readInteger();
         this.var_2412 = param1.readInteger();
         this.var_2414 = param1.readInteger();
         this.var_2415 = param1.readString();
         this.var_2042 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2413;
      }
      
      public function get minute() : int
      {
         return this.var_2412;
      }
      
      public function get chatterId() : int
      {
         return this.var_2414;
      }
      
      public function get chatterName() : String
      {
         return this.var_2415;
      }
      
      public function get msg() : String
      {
         return this.var_2042;
      }
   }
}
