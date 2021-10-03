package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.habbo.room.object.visualization.room.mask.PlaneMaskManager;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.IPlaneRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.animated.LandscapeRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.FloorRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallAdRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallRasterizer;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
   
   public class RoomVisualizationData implements IRoomObjectVisualizationData
   {
       
      
      private var var_543:WallRasterizer;
      
      private var var_542:FloorRasterizer;
      
      private var var_822:WallAdRasterizer;
      
      private var var_544:LandscapeRasterizer;
      
      private var var_823:PlaneMaskManager;
      
      private var var_857:Boolean = false;
      
      public function RoomVisualizationData()
      {
         super();
         this.var_543 = new WallRasterizer();
         this.var_542 = new FloorRasterizer();
         this.var_822 = new WallAdRasterizer();
         this.var_544 = new LandscapeRasterizer();
         this.var_823 = new PlaneMaskManager();
      }
      
      public function get initialized() : Boolean
      {
         return this.var_857;
      }
      
      public function get floorRasterizer() : IPlaneRasterizer
      {
         return this.var_542;
      }
      
      public function get wallRasterizer() : IPlaneRasterizer
      {
         return this.var_543;
      }
      
      public function get wallAdRasterizr() : WallAdRasterizer
      {
         return this.var_822;
      }
      
      public function get landscapeRasterizer() : IPlaneRasterizer
      {
         return this.var_544;
      }
      
      public function get maskManager() : PlaneMaskManager
      {
         return this.var_823;
      }
      
      public function dispose() : void
      {
         if(this.var_543 != null)
         {
            this.var_543.dispose();
            this.var_543 = null;
         }
         if(this.var_542 != null)
         {
            this.var_542.dispose();
            this.var_542 = null;
         }
         if(this.var_822 != null)
         {
            this.var_822.dispose();
            this.var_822 = null;
         }
         if(this.var_544 != null)
         {
            this.var_544.dispose();
            this.var_544 = null;
         }
         if(this.var_823 != null)
         {
            this.var_823.dispose();
            this.var_823 = null;
         }
      }
      
      public function clearCache() : void
      {
         if(this.var_543 != null)
         {
            this.var_543.clearCache();
         }
         if(this.var_542 != null)
         {
            this.var_542.clearCache();
         }
         if(this.var_544 != null)
         {
            this.var_544.clearCache();
         }
      }
      
      public function initialize(param1:XML) : Boolean
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         this.reset();
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:XMLList = param1.wallData;
         if(_loc2_.length() > 0)
         {
            _loc7_ = _loc2_[0];
            this.var_543.initialize(_loc7_);
         }
         var _loc3_:XMLList = param1.floorData;
         if(_loc3_.length() > 0)
         {
            _loc8_ = _loc3_[0];
            this.var_542.initialize(_loc8_);
         }
         var _loc4_:XMLList = param1.wallAdData;
         if(_loc4_.length() > 0)
         {
            _loc9_ = _loc4_[0];
            this.var_822.initialize(_loc9_);
         }
         var _loc5_:XMLList = param1.landscapeData;
         if(_loc5_.length() > 0)
         {
            _loc10_ = _loc5_[0];
            this.var_544.initialize(_loc10_);
         }
         var _loc6_:XMLList = param1.maskData;
         if(_loc6_.length() > 0)
         {
            _loc11_ = _loc6_[0];
            this.var_823.initialize(_loc11_);
         }
         return true;
      }
      
      public function initializeAssetCollection(param1:IGraphicAssetCollection) : void
      {
         if(this.var_857)
         {
            return;
         }
         this.var_543.initializeAssetCollection(param1);
         this.var_542.initializeAssetCollection(param1);
         this.var_822.initializeAssetCollection(param1);
         this.var_544.initializeAssetCollection(param1);
         this.var_823.initializeAssetCollection(param1);
         this.var_857 = true;
      }
      
      protected function reset() : void
      {
      }
   }
}
