package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1498:int = 3;
      
      private static const const_1522:int = 2;
      
      private static const const_1521:int = 1;
      
      private static const const_1523:int = 15;
       
      
      private var var_344:Array;
      
      private var var_1215:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_344 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1522)
         {
            this.var_344 = new Array();
            this.var_344.push(const_1521);
            this.var_1215 = const_1523;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(this.var_1215 > 0)
         {
            --this.var_1215;
         }
         if(this.var_1215 == 0)
         {
            if(this.var_344.length > 0)
            {
               super.setAnimation(this.var_344.shift());
            }
         }
         return super.updateAnimation(param1);
      }
      
      override protected function usesAnimationResetting() : Boolean
      {
         return true;
      }
   }
}
