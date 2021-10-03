package com.sulake.habbo.sound.music
{
   import flash.utils.getTimer;
   
   public class SongStartRequestData
   {
       
      
      private var var_1685:int;
      
      private var var_2102:Number;
      
      private var var_2898:Number;
      
      private var var_2896:int;
      
      private var var_2899:Number;
      
      private var var_2897:Number;
      
      public function SongStartRequestData(param1:int, param2:Number, param3:Number, param4:Number = 2.0, param5:Number = 1.0)
      {
         super();
         this.var_1685 = param1;
         this.var_2102 = param2;
         this.var_2898 = param3;
         this.var_2899 = param4;
         this.var_2897 = param5;
         this.var_2896 = getTimer();
      }
      
      public function get songId() : int
      {
         return this.var_1685;
      }
      
      public function get startPos() : Number
      {
         if(this.var_2102 < 0)
         {
            return 0;
         }
         return this.var_2102 + (getTimer() - this.var_2896) / 1000;
      }
      
      public function get playLength() : Number
      {
         return this.var_2898;
      }
      
      public function get fadeInSeconds() : Number
      {
         return this.var_2899;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return this.var_2897;
      }
   }
}
