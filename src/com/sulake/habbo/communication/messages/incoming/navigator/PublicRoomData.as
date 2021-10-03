package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2598:String;
      
      private var var_2390:int;
      
      private var var_2515:int;
      
      private var var_2389:String;
      
      private var var_2985:int;
      
      private var var_1845:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2598 = param1.readString();
         this.var_2390 = param1.readInteger();
         this.var_2515 = param1.readInteger();
         this.var_2389 = param1.readString();
         this.var_2985 = param1.readInteger();
         this.var_1845 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2598;
      }
      
      public function get unitPort() : int
      {
         return this.var_2390;
      }
      
      public function get worldId() : int
      {
         return this.var_2515;
      }
      
      public function get castLibs() : String
      {
         return this.var_2389;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2985;
      }
      
      public function get nodeId() : int
      {
         return this.var_1845;
      }
   }
}
