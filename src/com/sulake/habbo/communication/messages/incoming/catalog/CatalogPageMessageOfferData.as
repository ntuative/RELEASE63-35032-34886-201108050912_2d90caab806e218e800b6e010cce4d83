package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_1274:int;
      
      private var var_1877:String;
      
      private var var_1249:int;
      
      private var var_1247:int;
      
      private var var_1878:int;
      
      private var _clubLevel:int;
      
      private var var_1417:Array;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1274 = param1.readInteger();
         this.var_1877 = param1.readString();
         this.var_1249 = param1.readInteger();
         this.var_1247 = param1.readInteger();
         this.var_1878 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_1417 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_1417.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
         this._clubLevel = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this.var_1274;
      }
      
      public function get localizationId() : String
      {
         return this.var_1877;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1249;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1247;
      }
      
      public function get products() : Array
      {
         return this.var_1417;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1878;
      }
      
      public function get clubLevel() : int
      {
         return this._clubLevel;
      }
   }
}
