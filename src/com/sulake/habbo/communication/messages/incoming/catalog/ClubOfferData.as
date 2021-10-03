package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var var_1274:int;
      
      private var var_2028:String;
      
      private var var_1956:int;
      
      private var _upgrade:Boolean;
      
      private var var_2668:Boolean;
      
      private var var_2667:int;
      
      private var var_2669:int;
      
      private var var_2671:int;
      
      private var var_2670:int;
      
      private var var_2672:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1274 = param1.readInteger();
         this.var_2028 = param1.readString();
         this.var_1956 = param1.readInteger();
         this._upgrade = param1.readBoolean();
         this.var_2668 = param1.readBoolean();
         this.var_2667 = param1.readInteger();
         this.var_2669 = param1.readInteger();
         this.var_2671 = param1.readInteger();
         this.var_2670 = param1.readInteger();
         this.var_2672 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this.var_1274;
      }
      
      public function get productCode() : String
      {
         return this.var_2028;
      }
      
      public function get price() : int
      {
         return this.var_1956;
      }
      
      public function get upgrade() : Boolean
      {
         return this._upgrade;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2668;
      }
      
      public function get periods() : int
      {
         return this.var_2667;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2669;
      }
      
      public function get year() : int
      {
         return this.var_2671;
      }
      
      public function get month() : int
      {
         return this.var_2670;
      }
      
      public function get day() : int
      {
         return this.var_2672;
      }
   }
}
