package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var _gender:int;
      
      private var var_921:Boolean;
      
      private var var_1908:Boolean;
      
      private var var_631:String;
      
      private var var_1558:int;
      
      private var var_1911:String;
      
      private var var_1910:String;
      
      private var var_1909:String;
      
      private var var_2492:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this._gender = param1.readInteger();
         this.var_921 = param1.readBoolean();
         this.var_1908 = param1.readBoolean();
         this.var_631 = param1.readString();
         this.var_1558 = param1.readInteger();
         this.var_1911 = param1.readString();
         this.var_1910 = param1.readString();
         this.var_1909 = param1.readString();
         this.var_2492 = param1.readString();
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
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1908;
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
      
      public function get facebookId() : String
      {
         return this.var_2492;
      }
   }
}
