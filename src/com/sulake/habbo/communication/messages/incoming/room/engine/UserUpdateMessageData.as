package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_174:Number = 0;
      
      private var var_173:Number = 0;
      
      private var var_2912:Number = 0;
      
      private var var_2910:Number = 0;
      
      private var var_2913:Number = 0;
      
      private var var_2914:Number = 0;
      
      private var var_466:int = 0;
      
      private var var_2689:int = 0;
      
      private var var_363:Array;
      
      private var var_2911:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_363 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_174 = param3;
         this.var_173 = param4;
         this.var_2912 = param5;
         this.var_466 = param6;
         this.var_2689 = param7;
         this.var_2910 = param8;
         this.var_2913 = param9;
         this.var_2914 = param10;
         this.var_2911 = param11;
         this.var_363 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_174;
      }
      
      public function get z() : Number
      {
         return this.var_173;
      }
      
      public function get localZ() : Number
      {
         return this.var_2912;
      }
      
      public function get targetX() : Number
      {
         return this.var_2910;
      }
      
      public function get targetY() : Number
      {
         return this.var_2913;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2914;
      }
      
      public function get dir() : int
      {
         return this.var_466;
      }
      
      public function get dirHead() : int
      {
         return this.var_2689;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2911;
      }
      
      public function get actions() : Array
      {
         return this.var_363.slice();
      }
   }
}
