package com.sulake.core.assets
{
   import flash.display.DisplayObject;
   
   public class DisplayAsset implements IAsset
   {
       
      
      protected var var_1161:String;
      
      protected var var_199:DisplayObject;
      
      protected var _disposed:Boolean = false;
      
      protected var var_949:AssetTypeDeclaration;
      
      public function DisplayAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         this.var_949 = param1;
         this.var_1161 = param2;
      }
      
      public function get url() : String
      {
         return this.var_1161;
      }
      
      public function get content() : Object
      {
         return this.var_199;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return this.var_949;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            if(this.var_199.loaderInfo != null)
            {
               if(this.var_199.loaderInfo.loader != null)
               {
                  this.var_199.loaderInfo.loader.unload();
               }
            }
            this.var_199 = null;
            this.var_949 = null;
            this._disposed = true;
            this.var_1161 = null;
         }
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         if(param1 is DisplayObject)
         {
            this.var_199 = param1 as DisplayObject;
            if(this.var_199 != null)
            {
               return;
            }
            throw new Error("Failed to convert DisplayObject to DisplayAsset!");
         }
         if(param1 is DisplayAsset)
         {
            this.var_199 = DisplayAsset(param1).var_199;
            this.var_949 = DisplayAsset(param1).var_949;
            if(this.var_199 == null)
            {
               throw new Error("Failed to read content from DisplayAsset!");
            }
         }
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         if(param1 is DisplayAsset)
         {
            this.var_199 = DisplayAsset(param1).var_199;
            this.var_949 = DisplayAsset(param1).var_949;
            return;
         }
         throw new Error("Provided asset should be of type DisplayAsset!");
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
   }
}
