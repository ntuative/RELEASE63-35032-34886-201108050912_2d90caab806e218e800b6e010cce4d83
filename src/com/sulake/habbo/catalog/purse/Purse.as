package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
       
      
      private var var_2064:int = 0;
      
      private var var_1710:Dictionary;
      
      private var var_2200:int = 0;
      
      private var var_2201:int = 0;
      
      private var var_2369:Boolean = false;
      
      private var var_2370:int = 0;
      
      private var var_2367:int = 0;
      
      private var var_3037:Boolean = false;
      
      public function Purse()
      {
         this.var_1710 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_2064;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_2064 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_2200;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_2200 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_2201;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_2201 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_2200 > 0 || this.var_2201 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2369;
      }
      
      public function get isExpiring() : Boolean
      {
         return this.var_3037;
      }
      
      public function set isExpiring(param1:Boolean) : void
      {
         this.var_3037 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2369 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2370;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2370 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2367;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2367 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1710;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1710 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1710[param1];
      }
   }
}
