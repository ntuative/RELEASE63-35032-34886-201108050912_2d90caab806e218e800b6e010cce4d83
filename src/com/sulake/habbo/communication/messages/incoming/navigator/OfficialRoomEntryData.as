package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1183:int = 1;
      
      public static const const_964:int = 2;
      
      public static const const_917:int = 3;
      
      public static const const_1955:int = 4;
       
      
      private var _index:int;
      
      private var var_2530:String;
      
      private var var_2533:String;
      
      private var var_2529:Boolean;
      
      private var var_2531:String;
      
      private var var_1105:String;
      
      private var var_2528:int;
      
      private var var_2318:int;
      
      private var _type:int;
      
      private var var_2532:String;
      
      private var var_1015:GuestRoomData;
      
      private var var_1014:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2530 = param1.readString();
         this.var_2533 = param1.readString();
         this.var_2529 = param1.readInteger() == 1;
         this.var_2531 = param1.readString();
         this.var_1105 = param1.readString();
         this.var_2528 = param1.readInteger();
         this.var_2318 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1183)
         {
            this.var_2532 = param1.readString();
         }
         else if(this._type == const_917)
         {
            this.var_1014 = new PublicRoomData(param1);
         }
         else if(this._type == const_964)
         {
            this.var_1015 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_1015 != null)
         {
            this.var_1015.dispose();
            this.var_1015 = null;
         }
         if(this.var_1014 != null)
         {
            this.var_1014.dispose();
            this.var_1014 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2530;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2533;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2529;
      }
      
      public function get picText() : String
      {
         return this.var_2531;
      }
      
      public function get picRef() : String
      {
         return this.var_1105;
      }
      
      public function get folderId() : int
      {
         return this.var_2528;
      }
      
      public function get tag() : String
      {
         return this.var_2532;
      }
      
      public function get userCount() : int
      {
         return this.var_2318;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_1015;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_1014;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1183)
         {
            return 0;
         }
         if(this.type == const_964)
         {
            return this.var_1015.maxUserCount;
         }
         if(this.type == const_917)
         {
            return this.var_1014.maxUsers;
         }
         return 0;
      }
   }
}
