package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1336:int;
      
      private var var_2893:String;
      
      private var var_2894:int;
      
      private var var_2626:String;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1336 = param1.readInteger();
         this.var_2893 = param1.readString();
         this.var_2626 = param1.readString();
         this.var_2894 = this.var_1336;
      }
      
      public function get requestId() : int
      {
         return this.var_1336;
      }
      
      public function get requesterName() : String
      {
         return this.var_2893;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2894;
      }
      
      public function get figureString() : String
      {
         return this.var_2626;
      }
   }
}
