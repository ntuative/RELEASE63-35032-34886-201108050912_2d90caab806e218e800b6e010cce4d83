package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_3006:int;
      
      private var var_3009:int;
      
      private var var_921:Boolean;
      
      private var var_3007:int;
      
      private var var_3010:int;
      
      private var var_3008:int;
      
      private var var_3005:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_3006 = param1.readInteger();
         this.var_3009 = param1.readInteger();
         this.var_921 = param1.readBoolean();
         this.var_3007 = param1.readInteger();
         this.var_3010 = param1.readInteger();
         this.var_3008 = param1.readInteger();
         this.var_3005 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_3006;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_3009;
      }
      
      public function get online() : Boolean
      {
         return this.var_921;
      }
      
      public function get cfhCount() : int
      {
         return this.var_3007;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_3010;
      }
      
      public function get cautionCount() : int
      {
         return this.var_3008;
      }
      
      public function get banCount() : int
      {
         return this.var_3005;
      }
   }
}
