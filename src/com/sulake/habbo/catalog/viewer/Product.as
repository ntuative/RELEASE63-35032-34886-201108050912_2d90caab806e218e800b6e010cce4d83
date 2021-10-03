package com.sulake.habbo.catalog.viewer
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.enum.ProductTypeEnum;
   import com.sulake.habbo.room.IGetImageListener;
   import com.sulake.habbo.room.IRoomEngine;
   import com.sulake.habbo.room.ImageResult;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   import flash.display.BitmapData;
   
   public class Product extends ProductGridItem implements IProduct, IGetImageListener
   {
       
      
      private var var_1706:String;
      
      private var var_1943:int;
      
      private var var_1138:String;
      
      private var var_1707:int;
      
      private var var_2189:int;
      
      private var var_2190:IProductData;
      
      private var _furnitureData:IFurnitureData;
      
      public function Product(param1:String, param2:int, param3:String, param4:int, param5:int, param6:IProductData, param7:IFurnitureData)
      {
         super();
         this.var_1706 = param1;
         this.var_1943 = param2;
         this.var_1138 = param3;
         this.var_1707 = param4;
         this.var_2189 = param5;
         this.var_2190 = param6;
         this._furnitureData = param7;
      }
      
      public function get productType() : String
      {
         return this.var_1706;
      }
      
      public function get productClassId() : int
      {
         return this.var_1943;
      }
      
      public function set extraParam(param1:String) : void
      {
         this.var_1138 = param1;
      }
      
      public function get extraParam() : String
      {
         return this.var_1138;
      }
      
      public function get productCount() : int
      {
         return this.var_1707;
      }
      
      public function get expiration() : int
      {
         return this.var_2189;
      }
      
      public function get productData() : IProductData
      {
         return this.var_2190;
      }
      
      public function get furnitureData() : IFurnitureData
      {
         return this._furnitureData;
      }
      
      override public function dispose() : void
      {
         if(disposed)
         {
            return;
         }
         this.var_1706 = "";
         this.var_1943 = 0;
         this.var_1138 = "";
         this.var_1707 = 0;
         this.var_2189 = 0;
         this.var_2190 = null;
         super.dispose();
      }
      
      public function initIcon(param1:IProductContainer, param2:IGetImageListener = null, param3:IPurchasableOffer = null, param4:IBitmapWrapperWindow = null, param5:Function = null) : BitmapData
      {
         var _loc9_:* = null;
         var _loc10_:* = null;
         if(disposed)
         {
            return null;
         }
         var _loc6_:* = null;
         if(param2 == null)
         {
            param2 = {};
         }
         var _loc7_:IRoomEngine = (param1 as ProductContainer).offer.page.viewer.roomEngine;
         var _loc8_:HabboCatalog = (param1 as ProductContainer).offer.page.viewer.catalog as HabboCatalog;
         switch(this.var_1706)
         {
            case ProductTypeEnum.const_71:
               _loc9_ = _loc7_.getFurnitureIcon(this.productClassId,param2);
               break;
            case ProductTypeEnum.const_63:
               if(param3)
               {
                  _loc10_ = "";
                  switch(this._furnitureData.name)
                  {
                     case "floor":
                        _loc10_ = ["th",this._furnitureData.name,param3.productContainer.firstProduct.extraParam].join("_");
                        break;
                     case "wallpaper":
                        _loc10_ = ["th","wall",param3.productContainer.firstProduct.extraParam].join("_");
                        break;
                     case "landscape":
                        _loc10_ = ["th",this._furnitureData.name,param3.productContainer.firstProduct.extraParam.replace(".","_"),"001"].join("_");
                        break;
                     default:
                        _loc9_ = _loc7_.getWallItemIcon(this.productClassId,param2,this.var_1138);
                  }
                  _loc8_.setImageFromAsset(param4,_loc10_,param5);
               }
               else
               {
                  _loc9_ = _loc7_.getWallItemIcon(this.productClassId,param2,this.var_1138);
               }
               break;
            case ProductTypeEnum.const_198:
               _loc6_ = _loc8_.getPixelEffectIcon(this.productClassId);
               if(param2 == this)
               {
                  this.setIconImage(_loc6_,true);
               }
               break;
            case ProductTypeEnum.const_338:
               _loc6_ = _loc8_.getSubscriptionProductIcon(this.productClassId);
               break;
            default:
               Logger.log("[Product] Can not yet handle this type of product: " + this.productType);
         }
         if(_loc9_ != null)
         {
            _loc6_ = _loc9_.data;
            if(param2 == this)
            {
               this.setIconImage(_loc6_,true);
            }
         }
         return _loc6_;
      }
      
      public function imageReady(param1:int, param2:BitmapData) : void
      {
         Logger.log("[Product] Bundle Icon Image Ready!" + param1);
         setIconImage(param2,true);
      }
      
      override public function set view(param1:IWindowContainer) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(!param1)
         {
            return;
         }
         super.view = param1;
         if(this.var_1707 > 1)
         {
            _loc2_ = _view.findChildByName("multiContainer");
            if(_loc2_)
            {
               _loc2_.visible = true;
            }
            _loc3_ = _view.findChildByName("multiCounter") as ITextWindow;
            if(_loc3_)
            {
               _loc3_.text = "x" + this.productCount;
            }
         }
      }
   }
}
