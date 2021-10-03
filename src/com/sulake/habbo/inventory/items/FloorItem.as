package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var _category:int;
      
      protected var _type:int;
      
      protected var var_2277:String;
      
      protected var var_1914:Number;
      
      protected var var_3073:Boolean;
      
      protected var var_3072:Boolean;
      
      protected var var_2608:Boolean;
      
      protected var var_2453:Boolean;
      
      protected var var_3071:int;
      
      protected var var_2603:int;
      
      protected var var_2607:int;
      
      protected var var_2601:int;
      
      protected var var_1760:String;
      
      protected var var_1685:int;
      
      protected var var_1134:Boolean;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         this._id = param1;
         this._type = param2;
         this._ref = param3;
         this._category = param4;
         this.var_2608 = param5;
         this.var_3072 = param6;
         this.var_3073 = param7;
         this.var_2453 = param8;
         this.var_2277 = param9;
         this.var_1914 = param10;
         this.var_3071 = param11;
         this.var_2603 = param12;
         this.var_2607 = param13;
         this.var_2601 = param14;
         this.var_1760 = param15;
         this.var_1685 = param16;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get ref() : int
      {
         return this._ref;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get stuffData() : String
      {
         return this.var_2277;
      }
      
      public function get extra() : Number
      {
         return this.var_1914;
      }
      
      public function get recyclable() : Boolean
      {
         return this.var_3073;
      }
      
      public function get tradeable() : Boolean
      {
         return this.var_3072;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2608;
      }
      
      public function get sellable() : Boolean
      {
         return this.var_2453;
      }
      
      public function get expires() : int
      {
         return this.var_3071;
      }
      
      public function get creationDay() : int
      {
         return this.var_2603;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2607;
      }
      
      public function get creationYear() : int
      {
         return this.var_2601;
      }
      
      public function get slotId() : String
      {
         return this.var_1760;
      }
      
      public function get songId() : int
      {
         return this.var_1685;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this.var_1134 = param1;
      }
      
      public function get locked() : Boolean
      {
         return this.var_1134;
      }
   }
}
