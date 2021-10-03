package com.sulake.room.object.visualization.utils
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAsset;
   import flash.display.BitmapData;
   
   public class GraphicAsset implements IGraphicAsset
   {
       
      
      private var var_2683:String;
      
      private var var_2951:String;
      
      private var var_480:BitmapDataAsset;
      
      private var var_1666:Boolean;
      
      private var var_1665:Boolean;
      
      private var var_2952:Boolean;
      
      private var _offsetX:int;
      
      private var var_1383:int;
      
      private var var_225:int;
      
      private var _height:int;
      
      private var var_857:Boolean;
      
      public function GraphicAsset(param1:String, param2:String, param3:IAsset, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:Boolean = false)
      {
         super();
         this.var_2683 = param1;
         this.var_2951 = param2;
         var _loc9_:BitmapDataAsset = param3 as BitmapDataAsset;
         if(_loc9_ != null)
         {
            this.var_480 = _loc9_;
            this.var_857 = false;
         }
         else
         {
            this.var_480 = null;
            this.var_857 = true;
         }
         this.var_1666 = param4;
         this.var_1665 = param5;
         this._offsetX = param6;
         this.var_1383 = param7;
         this.var_2952 = param8;
      }
      
      public function dispose() : void
      {
         this.var_480 = null;
      }
      
      private function initialize() : void
      {
         var _loc1_:* = null;
         if(!this.var_857 && this.var_480 != null)
         {
            _loc1_ = this.var_480.content as BitmapData;
            if(_loc1_ != null)
            {
               this.var_225 = _loc1_.width;
               this._height = _loc1_.height;
            }
            this.var_857 = true;
         }
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1665;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1666;
      }
      
      public function get width() : int
      {
         this.initialize();
         return this.var_225;
      }
      
      public function get height() : int
      {
         this.initialize();
         return this._height;
      }
      
      public function get assetName() : String
      {
         return this.var_2683;
      }
      
      public function get libraryAssetName() : String
      {
         return this.var_2951;
      }
      
      public function get asset() : IAsset
      {
         return this.var_480;
      }
      
      public function get usesPalette() : Boolean
      {
         return this.var_2952;
      }
      
      public function get offsetX() : int
      {
         if(!this.var_1666)
         {
            return this._offsetX;
         }
         return -(this.width + this._offsetX);
      }
      
      public function get offsetY() : int
      {
         if(!this.var_1665)
         {
            return this.var_1383;
         }
         return -(this.height + this.var_1383);
      }
      
      public function get originalOffsetX() : int
      {
         return this._offsetX;
      }
      
      public function get originalOffsetY() : int
      {
         return this.var_1383;
      }
   }
}
