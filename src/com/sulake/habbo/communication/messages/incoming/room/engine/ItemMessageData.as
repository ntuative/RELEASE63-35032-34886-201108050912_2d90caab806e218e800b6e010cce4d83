package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var _id:int = 0;
      
      private var var_2921:Boolean = false;
      
      private var var_2919:int = 0;
      
      private var var_2920:int = 0;
      
      private var var_2722:int = 0;
      
      private var var_2721:int = 0;
      
      private var var_174:Number = 0;
      
      private var var_173:Number = 0;
      
      private var var_466:String = "";
      
      private var _type:int = 0;
      
      private var var_3147:String = "";
      
      private var var_1914:int = 0;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_192:Boolean = false;
      
      private var var_2817:Boolean;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         this._id = param1;
         this._type = param2;
         this.var_2921 = param3;
      }
      
      public function setReadOnly() : void
      {
         this.var_192 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get isOldFormat() : Boolean
      {
         return this.var_2921;
      }
      
      public function get wallX() : Number
      {
         return this.var_2919;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!this.var_192)
         {
            this.var_2919 = param1;
         }
      }
      
      public function get wallY() : Number
      {
         return this.var_2920;
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!this.var_192)
         {
            this.var_2920 = param1;
         }
      }
      
      public function get localX() : Number
      {
         return this.var_2722;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!this.var_192)
         {
            this.var_2722 = param1;
         }
      }
      
      public function get localY() : Number
      {
         return this.var_2721;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!this.var_192)
         {
            this.var_2721 = param1;
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
      
      public function get dir() : String
      {
         return this.var_466;
      }
      
      public function set dir(param1:String) : void
      {
         if(!this.var_192)
         {
            this.var_466 = param1;
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
      
      public function get knownAsUsable() : Boolean
      {
         return this.var_2817;
      }
      
      public function set knownAsUsable(param1:Boolean) : void
      {
         if(!this.var_192)
         {
            this.var_2817 = param1;
         }
      }
   }
}
