package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2759:int;
      
      private var var_2953:int;
      
      private var var_1249:int;
      
      private var var_1247:int;
      
      private var var_1878:int;
      
      private var var_2954:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2759 = param1.readInteger();
         this.var_2953 = param1.readInteger();
         this.var_1249 = param1.readInteger();
         this.var_1247 = param1.readInteger();
         this.var_1878 = param1.readInteger();
         this.var_2954 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2759;
      }
      
      public function get charges() : int
      {
         return this.var_2953;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1249;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1247;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2954;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1878;
      }
   }
}
