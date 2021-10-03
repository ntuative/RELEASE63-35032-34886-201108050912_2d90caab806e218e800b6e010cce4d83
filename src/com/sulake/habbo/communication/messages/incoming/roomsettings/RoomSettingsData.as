package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_620:int = 0;
      
      public static const const_231:int = 1;
      
      public static const const_125:int = 2;
      
      public static const const_925:Array = ["open","closed","password"];
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1869:String;
      
      private var var_2634:int;
      
      private var var_1558:int;
      
      private var var_2693:int;
      
      private var var_2948:int;
      
      private var var_950:Array;
      
      private var var_2696:Array;
      
      private var var_2947:int;
      
      private var var_2628:Boolean;
      
      private var var_2694:Boolean;
      
      private var var_2692:Boolean;
      
      private var _hideWalls:Boolean;
      
      private var var_2695:int;
      
      private var var_2697:int;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2628;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2628 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2694;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2694 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2692;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2692 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this._hideWalls;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this._hideWalls = param1;
      }
      
      public function get wallThickness() : int
      {
         return this.var_2695;
      }
      
      public function set wallThickness(param1:int) : void
      {
         this.var_2695 = param1;
      }
      
      public function get floorThickness() : int
      {
         return this.var_2697;
      }
      
      public function set floorThickness(param1:int) : void
      {
         this.var_2697 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1869;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1869 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2634;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2634 = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1558;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1558 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2693;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2693 = param1;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return this.var_2948;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         this.var_2948 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_950;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_950 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2696;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2696 = param1;
      }
      
      public function get controllerCount() : int
      {
         return this.var_2947;
      }
      
      public function set controllerCount(param1:int) : void
      {
         this.var_2947 = param1;
      }
   }
}
