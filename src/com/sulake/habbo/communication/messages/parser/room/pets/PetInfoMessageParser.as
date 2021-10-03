package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1775:int;
      
      private var _name:String;
      
      private var var_1325:int;
      
      private var var_2384:int;
      
      private var var_2382:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_631:String;
      
      private var var_2385:int;
      
      private var var_2386:int;
      
      private var var_2387:int;
      
      private var var_2383:int;
      
      private var var_2317:int;
      
      private var _ownerName:String;
      
      private var var_593:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1775;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1325;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2384;
      }
      
      public function get experience() : int
      {
         return this.var_2382;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_631;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2385;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2386;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2387;
      }
      
      public function get respect() : int
      {
         return this.var_2383;
      }
      
      public function get ownerId() : int
      {
         return this.var_2317;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_593;
      }
      
      public function flush() : Boolean
      {
         this.var_1775 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1775 = param1.readInteger();
         this._name = param1.readString();
         this.var_1325 = param1.readInteger();
         this.var_2384 = param1.readInteger();
         this.var_2382 = param1.readInteger();
         this.var_2385 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2386 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2387 = param1.readInteger();
         this.var_631 = param1.readString();
         this.var_2383 = param1.readInteger();
         this.var_2317 = param1.readInteger();
         this.var_593 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
