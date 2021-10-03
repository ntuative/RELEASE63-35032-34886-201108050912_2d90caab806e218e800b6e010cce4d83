package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_2588:int;
      
      private var var_2587:int;
      
      private var var_2590:int;
      
      private var _dayOffsets:Array;
      
      private var var_2142:Array;
      
      private var var_2141:Array;
      
      private var var_2589:int;
      
      private var var_2591:int;
      
      public function MarketplaceItemStatsParser()
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
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2588 = param1.readInteger();
         this.var_2587 = param1.readInteger();
         this.var_2590 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_2142 = [];
         this.var_2141 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_2142.push(param1.readInteger());
            this.var_2141.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2591 = param1.readInteger();
         this.var_2589 = param1.readInteger();
         return true;
      }
   }
}
