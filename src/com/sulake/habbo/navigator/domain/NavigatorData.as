package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomEntryData;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_2097:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_216:MsgWithRequestId;
      
      private var var_634:RoomEventData;
      
      private var var_2400:Boolean;
      
      private var var_2410:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      private var var_2408:int;
      
      private var var_272:GuestRoomData;
      
      private var var_981:PublicRoomShortData;
      
      private var var_2403:int;
      
      private var var_2404:Boolean;
      
      private var var_2406:int;
      
      private var var_2399:Boolean;
      
      private var var_1781:int;
      
      private var var_2402:Boolean;
      
      private var var_1478:Array;
      
      private var var_1477:Array;
      
      private var var_2409:int;
      
      private var var_1476:int;
      
      private var _favouriteIds:Dictionary;
      
      private var var_1190:Boolean;
      
      private var var_2405:int;
      
      private var var_2401:Boolean;
      
      private var var_2407:int = 0;
      
      private var var_1780:OfficialRoomEntryData;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         this.var_1478 = new Array();
         this.var_1477 = new Array();
         this._favouriteIds = new Dictionary();
         super();
         this._navigator = param1;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return this.var_272 != null && !this._currentRoomOwner;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return this.var_272 != null && this._currentRoomOwner;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         this.var_981 = null;
         this.var_272 = null;
         this._currentRoomOwner = false;
         if(param1.privateRoom)
         {
            this._currentRoomOwner = param1.owner;
         }
         else
         {
            this.var_981 = param1.publicSpace;
            this.var_634 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(this.var_634 != null)
         {
            this.var_634.dispose();
            this.var_634 = null;
         }
         if(this.var_981 != null)
         {
            this.var_981.dispose();
            this.var_981 = null;
         }
         if(this.var_272 != null)
         {
            this.var_272.dispose();
            this.var_272 = null;
         }
         this._currentRoomOwner = false;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(this.var_272 != null)
         {
            this.var_272.dispose();
         }
         this.var_272 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(this.var_634 != null)
         {
            this.var_634.dispose();
         }
         this.var_634 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return this.var_216 != null && this.var_216 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return this.var_216 != null && this.var_216 as GuestRoomSearchResultData != null;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return this.var_216 != null && this.var_216 as OfficialRoomsData != null;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         this.disposeCurrentMsg();
         this.var_216 = param1;
         this.var_1780 = param1.ad;
         this.var_1190 = false;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         this.disposeCurrentMsg();
         this.var_216 = param1;
         this.var_1190 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         this.disposeCurrentMsg();
         this.var_216 = param1;
         this.var_1190 = false;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(this.var_216 == null)
         {
            return;
         }
         this.var_216.dispose();
         this.var_216 = null;
      }
      
      public function set adRoom(param1:OfficialRoomEntryData) : void
      {
         this.var_1780 = param1;
      }
      
      public function get adRoom() : OfficialRoomEntryData
      {
         return this.var_1780;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return this.var_216 as GuestRoomSearchResultData;
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return this.var_216 as PopularRoomTagsData;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return this.var_216 as OfficialRoomsData;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return this.var_634;
      }
      
      public function get avatarId() : int
      {
         return this.var_2408;
      }
      
      public function get eventMod() : Boolean
      {
         return this.var_2400;
      }
      
      public function get roomPicker() : Boolean
      {
         return this.var_2410;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return this._currentRoomOwner;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return this.var_272;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return this.var_981;
      }
      
      public function get hcMember() : Boolean
      {
         return this.var_2404;
      }
      
      public function get createdFlatId() : int
      {
         return this.var_2406;
      }
      
      public function get homeRoomId() : int
      {
         return this.var_1781;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return this.var_2399;
      }
      
      public function get currentRoomRating() : int
      {
         return this.var_2405;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return this.var_2403;
      }
      
      public function get settingsReceived() : Boolean
      {
         return this.var_2402;
      }
      
      public function get adIndex() : int
      {
         return this.var_2407;
      }
      
      public function get currentRoomIsStaffPick() : Boolean
      {
         return this.var_2401;
      }
      
      public function set avatarId(param1:int) : void
      {
         this.var_2408 = param1;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         this.var_2406 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         this.var_2404 = param1;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         this.var_2400 = param1;
      }
      
      public function set roomPicker(param1:Boolean) : void
      {
         this.var_2410 = param1;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         this.var_2399 = param1;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         this.var_1781 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         this.var_2405 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         this.var_2403 = param1;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         this.var_2402 = param1;
      }
      
      public function set adIndex(param1:int) : void
      {
         this.var_2407 = param1;
      }
      
      public function set currentRoomIsStaffPick(param1:Boolean) : void
      {
         this.var_2401 = param1;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         this.var_1478 = param1;
         this.var_1477 = new Array();
         for each(_loc2_ in this.var_1478)
         {
            if(_loc2_.visible)
            {
               this.var_1477.push(_loc2_);
            }
         }
      }
      
      public function get allCategories() : Array
      {
         return this.var_1478;
      }
      
      public function get visibleCategories() : Array
      {
         return this.var_1477;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2409 = param1.limit;
         this.var_1476 = param1.favouriteRoomIds.length;
         this._favouriteIds = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this._favouriteIds[_loc2_] = "yes";
         }
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         this._favouriteIds[param1] = !!param2 ? "yes" : null;
         this.var_1476 += !!param2 ? 1 : -1;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = this.var_272.flatId;
         return this._favouriteIds[_loc1_] != null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(this.var_272 == null)
         {
            return false;
         }
         var _loc1_:int = this.var_272.flatId;
         return this.var_1781 == _loc1_;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return this._favouriteIds[param1] != null;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return this.var_1476 >= this.var_2409;
      }
      
      public function startLoading() : void
      {
         this.var_1190 = true;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_1190;
      }
   }
}
