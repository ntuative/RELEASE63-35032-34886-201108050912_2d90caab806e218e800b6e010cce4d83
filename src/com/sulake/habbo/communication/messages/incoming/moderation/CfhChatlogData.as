package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_2081:int;
      
      private var var_2839:int;
      
      private var var_1565:int;
      
      private var var_2510:int;
      
      private var var_138:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2081 = param1.readInteger();
         this.var_2839 = param1.readInteger();
         this.var_1565 = param1.readInteger();
         this.var_2510 = param1.readInteger();
         this.var_138 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_2081);
      }
      
      public function get callId() : int
      {
         return this.var_2081;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2839;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1565;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2510;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_138;
      }
   }
}
