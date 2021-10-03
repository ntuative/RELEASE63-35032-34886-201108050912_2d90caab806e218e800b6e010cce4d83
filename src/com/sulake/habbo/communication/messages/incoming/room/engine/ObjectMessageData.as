package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_174:Number = 0;
      
      private var var_173:Number = 0;
      
      private var var_466:int = 0;
      
      private var var_561:int = 0;
      
      private var var_680:int = 0;
      
      private var _type:int = 0;
      
      private var var_3147:String = "";
      
      private var var_1914:int = -1;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_2579:int = 0;
      
      private var var_2817:Boolean;
      
      private var var_2970:String = null;
      
      private var var_192:Boolean = false;
      
      public function ObjectMessageData(param1:int)
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
      
      public function get sizeX() : int
      {
         return this.var_561;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!this.var_192)
         {
            this.var_561 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return this.var_680;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!this.var_192)
         {
            this.var_680 = param1;
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         if(!this.var_192)
         {
            this._type = param1;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         if(!this.var_192)
         {
            this._state = param1;
         }
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function set data(param1:String) : void
      {
         if(!this.var_192)
         {
            this._data = param1;
         }
      }
      
      public function get staticClass() : String
      {
         return this.var_2970;
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!this.var_192)
         {
            this.var_2970 = param1;
         }
      }
      
      public function get extra() : int
      {
         return this.var_1914;
      }
      
      public function set extra(param1:int) : void
      {
         if(!this.var_192)
         {
            this.var_1914 = param1;
         }
      }
      
      public function get expiryTime() : int
      {
         return this.var_2579;
      }
      
      public function set expiryTime(param1:int) : void
      {
         if(!this.var_192)
         {
            this.var_2579 = param1;
         }
      }
      
      public function get knownAsUsable() : Boolean
      {
         return this.var_2817;
      }
      
      public function set knownAsUsable(param1:Boolean) : void
      {
         this.var_2817 = param1;
      }
   }
}
