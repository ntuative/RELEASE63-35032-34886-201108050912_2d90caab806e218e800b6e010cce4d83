package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_2555:Number = 0.0;
      
      private var var_2554:Number = 0.0;
      
      private var var_2557:Number = 0.0;
      
      private var var_2556:Number = 0.0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2555 = param1;
         this.var_2554 = param2;
         this.var_2557 = param3;
         this.var_2556 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2555;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2554;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2557;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2556;
      }
   }
}
