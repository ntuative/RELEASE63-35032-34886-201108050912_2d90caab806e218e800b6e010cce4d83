package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_2200:int = 0;
      
      private var var_2201:int = 0;
      
      private var var_3038:int = 0;
      
      private var var_3036:Boolean = false;
      
      private var var_2369:Boolean = false;
      
      private var var_3037:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_2200 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_2201 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_3038 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_3036 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2369 = param1;
      }
      
      public function set clubIsExpiring(param1:Boolean) : void
      {
         this.var_3037 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_2200;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_2201;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_3038;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_3036;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2369;
      }
      
      public function get clubIsExpiring() : Boolean
      {
         return this.var_3037;
      }
   }
}
