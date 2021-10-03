package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var _type:int = 0;
      
      private var var_1007:String = "";
      
      private var var_631:String = "";
      
      private var var_2343:String = "";
      
      private var var_2344:int;
      
      private var var_2346:int = 0;
      
      private var var_2345:String = "";
      
      private var var_2340:int = 0;
      
      private var var_2341:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2344;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2344 = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         this._type = param1;
      }
      
      public function get sex() : String
      {
         return this.var_1007;
      }
      
      public function set sex(param1:String) : void
      {
         this.var_1007 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_631;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_631 = param1;
      }
      
      public function get custom() : String
      {
         return this.var_2343;
      }
      
      public function set custom(param1:String) : void
      {
         this.var_2343 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2346;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2346 = param1;
      }
      
      public function get groupID() : String
      {
         return this.var_2345;
      }
      
      public function set groupID(param1:String) : void
      {
         this.var_2345 = param1;
      }
      
      public function get groupStatus() : int
      {
         return this.var_2340;
      }
      
      public function set groupStatus(param1:int) : void
      {
         this.var_2340 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2341;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2341 = param1;
      }
   }
}
