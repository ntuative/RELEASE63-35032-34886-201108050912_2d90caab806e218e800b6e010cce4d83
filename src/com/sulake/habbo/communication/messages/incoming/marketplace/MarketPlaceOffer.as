package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1274:int;
      
      private var _furniId:int;
      
      private var var_2662:int;
      
      private var var_2277:String;
      
      private var var_1956:int;
      
      private var var_440:int;
      
      private var var_2661:int = -1;
      
      private var var_2588:int;
      
      private var var_1955:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this.var_1274 = param1;
         this._furniId = param2;
         this.var_2662 = param3;
         this.var_2277 = param4;
         this.var_1956 = param5;
         this.var_440 = param6;
         this.var_2661 = param7;
         this.var_2588 = param8;
         this.var_1955 = param9;
      }
      
      public function get offerId() : int
      {
         return this.var_1274;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2662;
      }
      
      public function get stuffData() : String
      {
         return this.var_2277;
      }
      
      public function get price() : int
      {
         return this.var_1956;
      }
      
      public function get status() : int
      {
         return this.var_440;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2661;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2588;
      }
      
      public function get offerCount() : int
      {
         return this.var_1955;
      }
   }
}
