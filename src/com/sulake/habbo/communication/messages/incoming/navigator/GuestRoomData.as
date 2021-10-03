package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_376:int;
      
      private var var_833:Boolean;
      
      private var var_1083:String;
      
      private var _ownerName:String;
      
      private var var_2634:int;
      
      private var var_2318:int;
      
      private var var_2629:int;
      
      private var var_1869:String;
      
      private var var_2633:int;
      
      private var var_2632:Boolean;
      
      private var var_887:int;
      
      private var var_1558:int;
      
      private var var_2627:String;
      
      private var var_950:Array;
      
      private var var_2631:RoomThumbnailData;
      
      private var var_2628:Boolean;
      
      private var var_2630:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_950 = new Array();
         super();
         this.var_376 = param1.readInteger();
         this.var_833 = param1.readBoolean();
         this.var_1083 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2634 = param1.readInteger();
         this.var_2318 = param1.readInteger();
         this.var_2629 = param1.readInteger();
         this.var_1869 = param1.readString();
         this.var_2633 = param1.readInteger();
         this.var_2632 = param1.readBoolean();
         this.var_887 = param1.readInteger();
         this.var_1558 = param1.readInteger();
         this.var_2627 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_950.push(_loc4_);
            _loc3_++;
         }
         this.var_2631 = new RoomThumbnailData(param1);
         this.var_2628 = param1.readBoolean();
         this.var_2630 = param1.readBoolean();
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
      
      public function get flatId() : int
      {
         return this.var_376;
      }
      
      public function get event() : Boolean
      {
         return this.var_833;
      }
      
      public function get roomName() : String
      {
         return this.var_1083;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2634;
      }
      
      public function get userCount() : int
      {
         return this.var_2318;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2629;
      }
      
      public function get description() : String
      {
         return this.var_1869;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2633;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2632;
      }
      
      public function get score() : int
      {
         return this.var_887;
      }
      
      public function get categoryId() : int
      {
         return this.var_1558;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2627;
      }
      
      public function get tags() : Array
      {
         return this.var_950;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2631;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2628;
      }
      
      public function get displayRoomEntryAd() : Boolean
      {
         return this.var_2630;
      }
   }
}
