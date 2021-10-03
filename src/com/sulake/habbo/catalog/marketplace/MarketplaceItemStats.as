package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2588:int;
      
      private var var_2587:int;
      
      private var var_2590:int;
      
      private var _dayOffsets:Array;
      
      private var var_2142:Array;
      
      private var var_2141:Array;
      
      private var var_2589:int;
      
      private var var_2591:int;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2588;
      }
      
      public function get offerCount() : int
      {
         return this.var_2587;
      }
      
      public function get historyLength() : int
      {
         return this.var_2590;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_2142;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_2141;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2589;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2591;
      }
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2588 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2587 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2590 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_2142 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_2141 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2589 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2591 = param1;
      }
   }
}
