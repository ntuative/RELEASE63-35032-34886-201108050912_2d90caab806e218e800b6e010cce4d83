package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2907:String;
      
      private var var_2908:Class;
      
      private var var_2909:Class;
      
      private var var_2104:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2907 = param1;
         this.var_2908 = param2;
         this.var_2909 = param3;
         if(rest == null)
         {
            this.var_2104 = new Array();
         }
         else
         {
            this.var_2104 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2907;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2908;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2909;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_2104;
      }
   }
}
