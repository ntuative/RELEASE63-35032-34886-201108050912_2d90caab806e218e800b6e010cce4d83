package com.sulake.core.window.utils
{
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   
   public class PropertyStruct
   {
      
      public static const const_161:String = "hex";
      
      public static const const_36:String = "int";
      
      public static const const_254:String = "uint";
      
      public static const const_140:String = "Number";
      
      public static const const_39:String = "Boolean";
      
      public static const const_52:String = "String";
      
      public static const const_269:String = "Point";
      
      public static const const_278:String = "Rectangle";
      
      public static const const_151:String = "Array";
      
      public static const const_313:String = "Map";
       
      
      private var var_758:String;
      
      private var var_210:Object;
      
      private var _type:String;
      
      private var var_3062:Boolean;
      
      private var var_3127:Boolean;
      
      private var var_3061:Array;
      
      public function PropertyStruct(param1:String, param2:Object, param3:String, param4:Boolean, param5:Array = null)
      {
         super();
         this.var_758 = param1;
         this.var_210 = param2;
         this._type = param3;
         this.var_3062 = param4;
         this.var_3127 = param3 == const_313 || param3 == const_151 || param3 == const_269 || param3 == const_278;
         this.var_3061 = param5;
      }
      
      public function get key() : String
      {
         return this.var_758;
      }
      
      public function get value() : Object
      {
         return this.var_210;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get valid() : Boolean
      {
         return this.var_3062;
      }
      
      public function get range() : Array
      {
         return this.var_3061;
      }
      
      public function toString() : String
      {
         switch(this._type)
         {
            case const_161:
               return "0x" + uint(this.var_210).toString(16);
            case const_39:
               return Boolean(this.var_210) == true ? "true" : "false";
            case const_269:
               return "Point(" + Point(this.var_210).x + ", " + Point(this.var_210).y + ")";
            case const_278:
               return "Rectangle(" + Rectangle(this.var_210).x + ", " + Rectangle(this.var_210).y + ", " + Rectangle(this.var_210).width + ", " + Rectangle(this.var_210).height + ")";
            default:
               return String(this.value);
         }
      }
      
      public function toXMLString() : String
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         switch(this._type)
         {
            case const_313:
               _loc3_ = this.var_210 as Map;
               _loc1_ = "<var key=\"" + this.var_758 + "\">\r<value>\r<" + this._type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc3_.length)
               {
                  _loc1_ += "<var key=\"" + _loc3_.getKey(_loc2_) + "\" value=\"" + _loc3_.getWithIndex(_loc2_) + "\" type=\"" + getQualifiedClassName(_loc3_.getWithIndex(_loc2_)) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_151:
               _loc4_ = this.var_210 as Array;
               _loc1_ = "<var key=\"" + this.var_758 + "\">\r<value>\r<" + this._type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc4_.length)
               {
                  _loc1_ += "<var key=\"" + String(_loc2_) + "\" value=\"" + _loc4_[_loc2_] + "\" type=\"" + getQualifiedClassName(_loc4_[_loc2_]) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_269:
               _loc5_ = this.var_210 as Point;
               _loc1_ = "<var key=\"" + this.var_758 + "\">\r<value>\r<" + this._type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc5_.x + "\" type=\"" + const_36 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc5_.y + "\" type=\"" + const_36 + "\" />\r";
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_278:
               _loc6_ = this.var_210 as Rectangle;
               _loc1_ = "<var key=\"" + this.var_758 + "\">\r<value>\r<" + this._type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc6_.x + "\" type=\"" + const_36 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc6_.y + "\" type=\"" + const_36 + "\" />\r";
               _loc1_ += "<var key=\"width\" value=\"" + _loc6_.width + "\" type=\"" + const_36 + "\" />\r";
               _loc1_ += "<var key=\"height\" value=\"" + _loc6_.height + "\" type=\"" + const_36 + "\" />\r";
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_161:
               _loc1_ = "<var key=\"" + this.var_758 + "\" value=\"" + "0x" + uint(this.var_210).toString(16) + "\" type=\"" + this._type + "\" />";
               break;
            default:
               _loc1_ = "<var key=\"" + this.var_758 + "\" value=\"" + this.var_210 + "\" type=\"" + this._type + "\" />";
         }
         return _loc1_;
      }
   }
}
