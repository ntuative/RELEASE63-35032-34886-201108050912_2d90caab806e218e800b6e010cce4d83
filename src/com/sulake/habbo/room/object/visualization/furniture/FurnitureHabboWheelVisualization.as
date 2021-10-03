package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1056:int = 10;
      
      private static const const_710:int = 20;
      
      private static const const_1497:int = 31;
      
      private static const const_1498:int = 32;
       
      
      private var var_344:Array;
      
      private var var_798:Boolean = false;
      
      public function FurnitureHabboWheelVisualization()
      {
         this.var_344 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_798)
            {
               this.var_798 = true;
               this.var_344 = new Array();
               this.var_344.push(const_1497);
               this.var_344.push(const_1498);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_1056)
         {
            if(this.var_798)
            {
               this.var_798 = false;
               this.var_344 = new Array();
               this.var_344.push(const_1056 + param1);
               this.var_344.push(const_710 + param1);
               this.var_344.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
         {
            if(this.var_344.length > 0)
            {
               super.setAnimation(this.var_344.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
