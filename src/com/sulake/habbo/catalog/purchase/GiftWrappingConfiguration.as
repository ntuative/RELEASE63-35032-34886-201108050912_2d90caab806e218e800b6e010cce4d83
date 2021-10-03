package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1465:Boolean = false;
      
      private var var_1956:int;
      
      private var var_1920:Array;
      
      private var var_851:Array;
      
      private var var_850:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1465 = _loc2_.isWrappingEnabled;
         this.var_1956 = _loc2_.wrappingPrice;
         this.var_1920 = _loc2_.stuffTypes;
         this.var_851 = _loc2_.boxTypes;
         this.var_850 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1465;
      }
      
      public function get price() : int
      {
         return this.var_1956;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1920;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_851;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_850;
      }
   }
}
