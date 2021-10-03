package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1775:int;
      
      private var var_1325:int;
      
      private var var_2398:int;
      
      private var var_2382:int;
      
      private var var_2397:int;
      
      private var _energy:int;
      
      private var var_2396:int;
      
      private var _nutrition:int;
      
      private var var_2395:int;
      
      private var var_2317:int;
      
      private var _ownerName:String;
      
      private var var_2383:int;
      
      private var var_593:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1775;
      }
      
      public function get level() : int
      {
         return this.var_1325;
      }
      
      public function get levelMax() : int
      {
         return this.var_2398;
      }
      
      public function get experience() : int
      {
         return this.var_2382;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2397;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2396;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2395;
      }
      
      public function get ownerId() : int
      {
         return this.var_2317;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2383;
      }
      
      public function get age() : int
      {
         return this.var_593;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_1775 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1325 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_2398 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_2382 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_2397 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_2396 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_2395 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_2317 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2383 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_593 = param1;
      }
   }
}
