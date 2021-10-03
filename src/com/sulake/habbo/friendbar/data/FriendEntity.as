package com.sulake.habbo.friendbar.data
{
   public class FriendEntity implements IFriendEntity
   {
      
      private static var var_1415:int = 0;
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var _gender:int;
      
      private var var_921:Boolean;
      
      private var _allowFollow:Boolean;
      
      private var var_631:String;
      
      private var var_1558:int;
      
      private var var_1911:String;
      
      private var var_1910:String;
      
      private var var_1909:String;
      
      private var var_1099:Vector.<FriendNotification>;
      
      private var var_3042:int = -1;
      
      public function FriendEntity(param1:int, param2:String, param3:String, param4:String, param5:int, param6:Boolean, param7:Boolean, param8:String, param9:int, param10:String)
      {
         super();
         this._id = param1;
         this._name = param2;
         this.var_1909 = param3;
         this.var_1911 = param4;
         this._gender = param5;
         this.var_921 = param6;
         this._allowFollow = param7;
         this.var_631 = param8;
         this.var_1558 = param9;
         this.var_1910 = param10;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this._gender;
      }
      
      public function get online() : Boolean
      {
         return this.var_921;
      }
      
      public function get allowFollow() : Boolean
      {
         return this._allowFollow;
      }
      
      public function get figure() : String
      {
         return this.var_631;
      }
      
      public function get categoryId() : int
      {
         return this.var_1558;
      }
      
      public function get motto() : String
      {
         return this.var_1911;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1910;
      }
      
      public function get realName() : String
      {
         return this.var_1909;
      }
      
      public function get logEventId() : int
      {
         return this.var_3042;
      }
      
      public function get notifications() : Vector.<FriendNotification>
      {
         if(!this.var_1099)
         {
            this.var_1099 = new Vector.<FriendNotification>();
         }
         return this.var_1099;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function set gender(param1:int) : void
      {
         this._gender = param1;
      }
      
      public function set online(param1:Boolean) : void
      {
         this.var_921 = param1;
      }
      
      public function set allowFollow(param1:Boolean) : void
      {
         this._allowFollow = param1;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_631 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1558 = param1;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1911 = param1;
      }
      
      public function set lastAccess(param1:String) : void
      {
         this.var_1910 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1909 = param1;
      }
      
      public function set logEventId(param1:int) : void
      {
         this.var_3042 = param1;
      }
      
      public function getNextLogEventId() : int
      {
         return ++var_1415;
      }
   }
}
