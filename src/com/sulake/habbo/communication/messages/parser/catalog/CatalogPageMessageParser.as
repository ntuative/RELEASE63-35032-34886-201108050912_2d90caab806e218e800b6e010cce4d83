package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogLocalizationData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   
   public class CatalogPageMessageParser implements IMessageParser
   {
       
      
      private var var_1555:int;
      
      private var var_1286:String;
      
      private var _localization:CatalogLocalizationData;
      
      private var _offers:Array;
      
      private var var_1274:int;
      
      public function CatalogPageMessageParser()
      {
         super();
      }
      
      public function get pageId() : int
      {
         return this.var_1555;
      }
      
      public function get layoutCode() : String
      {
         return this.var_1286;
      }
      
      public function get localization() : CatalogLocalizationData
      {
         return this._localization;
      }
      
      public function get offers() : Array
      {
         return this._offers;
      }
      
      public function get offerId() : int
      {
         return this.var_1274;
      }
      
      public function flush() : Boolean
      {
         this.var_1555 = -1;
         this.var_1286 = "";
         this._localization = null;
         this._offers = [];
         this.var_1274 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1555 = param1.readInteger();
         this.var_1286 = param1.readString();
         this._localization = new CatalogLocalizationData(param1);
         this._offers = new Array();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._offers.push(new CatalogPageMessageOfferData(param1));
            _loc3_++;
         }
         this.var_1274 = param1.readInteger();
         return true;
      }
   }
}
