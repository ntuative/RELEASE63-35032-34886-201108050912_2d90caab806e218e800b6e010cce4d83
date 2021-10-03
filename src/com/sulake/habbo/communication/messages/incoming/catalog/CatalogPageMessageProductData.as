package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_63:String = "i";
      
      public static const const_71:String = "s";
      
      public static const const_198:String = "e";
       
      
      private var var_1706:String;
      
      private var var_2986:int;
      
      private var var_1138:String;
      
      private var var_1707:int;
      
      private var var_2189:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1706 = param1.readString();
         this.var_2986 = param1.readInteger();
         this.var_1138 = param1.readString();
         this.var_1707 = param1.readInteger();
         this.var_2189 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1706;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2986;
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
   }
}
