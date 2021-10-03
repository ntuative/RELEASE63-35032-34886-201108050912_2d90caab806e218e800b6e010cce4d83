package com.sulake.habbo.avatar.structure.figure
{
   import flash.geom.ColorTransform;
   
   public class PartColor implements IPartColor
   {
       
      
      private var _id:int;
      
      private var _index:int;
      
      private var _clubLevel:int;
      
      private var var_2428:Boolean = false;
      
      private var _rgb:uint;
      
      private var var_1819:uint;
      
      private var var_1818:uint;
      
      private var _b:uint;
      
      private var var_1858:Number;
      
      private var var_1857:Number;
      
      private var var_1859:Number;
      
      private var var_901:ColorTransform;
      
      public function PartColor(param1:XML)
      {
         super();
         this._id = parseInt(param1.@id);
         this._index = parseInt(param1.@index);
         this._clubLevel = parseInt(param1.@club);
         this.var_2428 = Boolean(parseInt(param1.@selectable));
         var _loc2_:String = param1.text();
         this._rgb = parseInt(_loc2_,16);
         this.var_1819 = this._rgb >> 16 & 255;
         this.var_1818 = this._rgb >> 8 & 255;
         this._b = this._rgb >> 0 & 255;
         this.var_1858 = this.var_1819 / 255 * 1;
         this.var_1857 = this.var_1818 / 255 * 1;
         this.var_1859 = this._b / 255 * 1;
         this.var_901 = new ColorTransform(this.var_1858,this.var_1857,this.var_1859);
      }
      
      public function get colorTransform() : ColorTransform
      {
         return this.var_901;
      }
      
      public function get redMultiplier() : Number
      {
         return this.var_1858;
      }
      
      public function get greenMultiplier() : Number
      {
         return this.var_1857;
      }
      
      public function get blueMultiplier() : Number
      {
         return this.var_1859;
      }
      
      public function get rgb() : uint
      {
         return this._rgb;
      }
      
      public function get r() : uint
      {
         return this.var_1819;
      }
      
      public function get g() : uint
      {
         return this.var_1818;
      }
      
      public function get b() : uint
      {
         return this._b;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get clubLevel() : int
      {
         return this._clubLevel;
      }
      
      public function get isSelectable() : Boolean
      {
         return this.var_2428;
      }
   }
}
