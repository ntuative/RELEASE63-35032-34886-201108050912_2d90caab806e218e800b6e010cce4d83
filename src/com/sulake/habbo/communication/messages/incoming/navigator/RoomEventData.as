package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_2150:Boolean;
      
      private var var_2995:int;
      
      private var var_2996:String;
      
      private var var_376:int;
      
      private var var_2994:int;
      
      private var var_2160:String;
      
      private var var_2997:String;
      
      private var var_2998:String;
      
      private var var_950:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_950 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_2150 = false;
            return;
         }
         this.var_2150 = true;
         this.var_2995 = int(_loc2_);
         this.var_2996 = param1.readString();
         this.var_376 = int(param1.readString());
         this.var_2994 = param1.readInteger();
         this.var_2160 = param1.readString();
         this.var_2997 = param1.readString();
         this.var_2998 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_950.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_950 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get ownerAvatarId() : int
      {
         return this.var_2995;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2996;
      }
      
      public function get flatId() : int
      {
         return this.var_376;
      }
      
      public function get eventType() : int
      {
         return this.var_2994;
      }
      
      public function get eventName() : String
      {
         return this.var_2160;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2997;
      }
      
      public function get creationTime() : String
      {
         return this.var_2998;
      }
      
      public function get tags() : Array
      {
         return this.var_950;
      }
      
      public function get exists() : Boolean
      {
         return this.var_2150;
      }
   }
}
