package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1411:String = "M";
      
      public static const const_2031:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_174:Number = 0;
      
      private var var_173:Number = 0;
      
      private var var_466:int = 0;
      
      private var _name:String = "";
      
      private var var_1732:int = 0;
      
      private var var_1007:String = "";
      
      private var var_631:String = "";
      
      private var var_2343:String = "";
      
      private var var_2344:int;
      
      private var var_2346:int = 0;
      
      private var var_2345:String = "";
      
      private var var_2340:int = 0;
      
      private var var_2341:int = 0;
      
      private var var_2342:String = "";
      
      private var var_192:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_192 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_192)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_174;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_192)
         {
            this.var_174 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_173;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_192)
         {
            this.var_173 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_466;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_192)
         {
            this.var_466 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_192)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this.var_1732;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_192)
         {
            this.var_1732 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_1007;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_192)
         {
            this.var_1007 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_631;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_192)
         {
            this.var_631 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2343;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_192)
         {
            this.var_2343 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2344;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_192)
         {
            this.var_2344 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2346;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_192)
         {
            this.var_2346 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2345;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_192)
         {
            this.var_2345 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2340;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_192)
         {
            this.var_2340 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2341;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_192)
         {
            this.var_2341 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2342;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_192)
         {
            this.var_2342 = param1;
         }
      }
   }
}
