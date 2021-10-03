package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetFurniInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_349:String = "RWFIUE_FURNI";
       
      
      private var _id:int = 0;
      
      private var _category:int = 0;
      
      private var _name:String = "";
      
      private var var_1869:String = "";
      
      private var var_48:BitmapData = null;
      
      private var var_2570:Boolean = false;
      
      private var var_2568:Boolean = false;
      
      private var var_1849:Boolean = false;
      
      private var var_1850:Boolean = false;
      
      private var var_2569:Boolean = false;
      
      private var var_2189:int = -1;
      
      private var var_2571:int = -1;
      
      private var var_1274:int = -1;
      
      private var var_1138:String = "";
      
      public function RoomWidgetFurniInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function set category(param1:int) : void
      {
         this._category = param1;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1869 = param1;
      }
      
      public function get description() : String
      {
         return this.var_1869;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_48 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_48;
      }
      
      public function set isWallItem(param1:Boolean) : void
      {
         this.var_2570 = param1;
      }
      
      public function get isWallItem() : Boolean
      {
         return this.var_2570;
      }
      
      public function set isStickie(param1:Boolean) : void
      {
         this.var_2568 = param1;
      }
      
      public function get isStickie() : Boolean
      {
         return this.var_2568;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1849 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1849;
      }
      
      public function set isRoomController(param1:Boolean) : void
      {
         this.var_1850 = param1;
      }
      
      public function get isRoomController() : Boolean
      {
         return this.var_1850;
      }
      
      public function set isAnyRoomController(param1:Boolean) : void
      {
         this.var_2569 = param1;
      }
      
      public function get isAnyRoomController() : Boolean
      {
         return this.var_2569;
      }
      
      public function set expiration(param1:int) : void
      {
         this.var_2189 = param1;
      }
      
      public function get expiration() : int
      {
         return this.var_2189;
      }
      
      public function set catalogPageId(param1:int) : void
      {
         this.var_2571 = param1;
      }
      
      public function get catalogPageId() : int
      {
         return this.var_2571;
      }
      
      public function set offerId(param1:int) : void
      {
         this.var_1274 = param1;
      }
      
      public function get offerId() : int
      {
         return this.var_1274;
      }
      
      public function set extraParam(param1:String) : void
      {
         this.var_1138 = param1;
      }
      
      public function get extraParam() : String
      {
         return this.var_1138;
      }
   }
}
