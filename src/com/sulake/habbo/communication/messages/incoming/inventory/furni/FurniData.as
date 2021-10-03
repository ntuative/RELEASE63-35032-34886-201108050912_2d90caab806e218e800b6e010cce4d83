package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2578:int;
      
      private var var_1690:String;
      
      private var _objId:int;
      
      private var var_2100:int;
      
      private var _category:int;
      
      private var var_2277:String;
      
      private var var_2577:Boolean;
      
      private var var_2580:Boolean;
      
      private var var_2581:Boolean;
      
      private var var_2576:Boolean;
      
      private var var_2579:int;
      
      private var var_1914:int;
      
      private var var_1760:String = "";
      
      private var var_1685:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2578 = param1;
         this.var_1690 = param2;
         this._objId = param3;
         this.var_2100 = param4;
         this._category = param5;
         this.var_2277 = param6;
         this.var_2577 = param7;
         this.var_2580 = param8;
         this.var_2581 = param9;
         this.var_2576 = param10;
         this.var_2579 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1760 = param1;
         this.var_1914 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2578;
      }
      
      public function get itemType() : String
      {
         return this.var_1690;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_2100;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2277;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2577;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2580;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2581;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2576;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2579;
      }
      
      public function get slotId() : String
      {
         return this.var_1760;
      }
      
      public function get songId() : int
      {
         return this.var_1685;
      }
      
      public function get extra() : int
      {
         return this.var_1914;
      }
   }
}
