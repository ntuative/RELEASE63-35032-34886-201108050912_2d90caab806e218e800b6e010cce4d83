package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_1003:String = "";
      
      public static const const_461:int = 0;
      
      public static const const_565:int = 255;
      
      public static const const_980:Boolean = false;
      
      public static const const_546:int = 0;
      
      public static const const_493:int = 0;
      
      public static const const_424:int = 0;
      
      public static const const_1354:int = 1;
      
      public static const const_1220:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2532:String = "";
      
      private var var_2092:int = 0;
      
      private var var_2749:int = 255;
      
      private var var_2978:Boolean = false;
      
      private var var_2979:int = 0;
      
      private var var_2977:int = 0;
      
      private var var_2976:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2532 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2532;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_2092 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_2092;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2749 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2749;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2978 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2978;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2979 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2979;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2977 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2977;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2976 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2976;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
