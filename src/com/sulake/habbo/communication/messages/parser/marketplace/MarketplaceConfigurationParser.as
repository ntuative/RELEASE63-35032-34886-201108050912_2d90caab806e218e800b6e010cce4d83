package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1465:Boolean;
      
      private var var_2550:int;
      
      private var var_2046:int;
      
      private var var_2047:int;
      
      private var var_2549:int;
      
      private var var_2552:int;
      
      private var var_2553:int;
      
      private var var_2551:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1465;
      }
      
      public function get commission() : int
      {
         return this.var_2550;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_2046;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_2047;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2552;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2549;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2553;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2551;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1465 = param1.readBoolean();
         this.var_2550 = param1.readInteger();
         this.var_2046 = param1.readInteger();
         this.var_2047 = param1.readInteger();
         this.var_2552 = param1.readInteger();
         this.var_2549 = param1.readInteger();
         this.var_2553 = param1.readInteger();
         this.var_2551 = param1.readInteger();
         return true;
      }
   }
}
