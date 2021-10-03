package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_2045:String = "pricing_model_unknown";
      
      public static const const_397:String = "pricing_model_single";
      
      public static const const_458:String = "pricing_model_multi";
      
      public static const const_498:String = "pricing_model_bundle";
      
      public static const const_1966:String = "price_type_none";
      
      public static const const_765:String = "price_type_credits";
      
      public static const const_1282:String = "price_type_activitypoints";
      
      public static const const_1330:String = "price_type_credits_and_activitypoints";
       
      
      private var var_837:String;
      
      private var var_1248:String;
      
      private var var_1274:int;
      
      private var var_1877:String;
      
      private var var_1249:int;
      
      private var var_1247:int;
      
      private var var_1878:int;
      
      private var var_266:ICatalogPage;
      
      private var var_661:IProductContainer;
      
      private var _disposed:Boolean = false;
      
      private var _clubLevel:int = 0;
      
      private var var_2558:int;
      
      public function Offer(param1:int, param2:String, param3:int, param4:int, param5:int, param6:int, param7:Array, param8:ICatalogPage)
      {
         super();
         this.var_1274 = param1;
         this.var_1877 = param2;
         this.var_1249 = param3;
         this.var_1247 = param4;
         this.var_1878 = param5;
         this.var_266 = param8;
         this._clubLevel = param6;
         this.analyzePricingModel(param7);
         this.analyzePriceType();
         this.createProductContainer(param7);
      }
      
      public function get clubLevel() : int
      {
         return this._clubLevel;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_266;
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
      
      public function get activityPointType() : int
      {
         return this.var_1878;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_661;
      }
      
      public function get pricingModel() : String
      {
         return this.var_837;
      }
      
      public function get priceType() : String
      {
         return this.var_1248;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2558;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2558 = param1;
      }
      
      public function dispose() : void
      {
         if(this.disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_1274 = 0;
         this.var_1877 = "";
         this.var_1249 = 0;
         this.var_1247 = 0;
         this.var_1878 = 0;
         this.var_266 = null;
         if(this.var_661 != null)
         {
            this.var_661.dispose();
            this.var_661 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_837)
         {
            case const_397:
               this.var_661 = new SingleProductContainer(this,param1);
               break;
            case const_458:
               this.var_661 = new MultiProductContainer(this,param1);
               break;
            case const_498:
               this.var_661 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_837);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_837 = const_397;
            }
            else
            {
               this.var_837 = const_458;
            }
         }
         else if(param1.length > 1)
         {
            this.var_837 = const_498;
         }
         else
         {
            this.var_837 = const_2045;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1249 > 0 && this.var_1247 > 0)
         {
            this.var_1248 = const_1330;
         }
         else if(this.var_1249 > 0)
         {
            this.var_1248 = const_765;
         }
         else if(this.var_1247 > 0)
         {
            this.var_1248 = const_1282;
         }
         else
         {
            this.var_1248 = const_1966;
         }
      }
      
      public function clone() : Offer
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:Array = new Array();
         var _loc2_:IProductData = this.var_266.viewer.catalog.getProductData(this.localizationId);
         for each(_loc3_ in this.var_661.products)
         {
            _loc4_ = this.var_266.viewer.catalog.getFurnitureData(_loc3_.productClassId,_loc3_.productType);
            _loc5_ = new Product(_loc3_.productType,_loc3_.productClassId,_loc3_.extraParam,_loc3_.productCount,_loc3_.expiration,_loc2_,_loc4_);
            _loc1_.push(_loc5_);
         }
         return new Offer(this.offerId,this.localizationId,this.priceInCredits,this.priceInActivityPoints,this.activityPointType,this.clubLevel,_loc1_,this.page);
      }
   }
}
