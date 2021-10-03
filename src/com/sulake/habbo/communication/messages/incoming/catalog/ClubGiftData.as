package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_1274:int;
      
      private var var_2681:Boolean;
      
      private var var_2428:Boolean;
      
      private var var_2680:int;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1274 = param1.readInteger();
         this.var_2681 = param1.readBoolean();
         this.var_2680 = param1.readInteger();
         this.var_2428 = param1.readBoolean();
      }
      
      public function get offerId() : int
      {
         return this.var_1274;
      }
      
      public function get isVip() : Boolean
      {
         return this.var_2681;
      }
      
      public function get isSelectable() : Boolean
      {
         return this.var_2428;
      }
      
      public function get daysRequired() : int
      {
         return this.var_2680;
      }
   }
}
