package com.sulake.habbo.room.events
{
   public class RoomEngineObjectEvent extends RoomEngineEvent
   {
      
      public static const const_1022:String = "REOE_OBJECT_SELECTED";
      
      public static const const_582:String = "REOE_OBJECT_DESELECTED";
      
      public static const const_191:String = "REOB_OBJECT_ADDED";
      
      public static const const_446:String = "REOE_OBJECT_REMOVED";
      
      public static const const_182:String = "REOB_OBJECT_PLACED";
      
      public static const const_977:String = "REOB_OBJECT_CONTENT_UPDATED";
      
      public static const const_886:String = "REOB_OBJECT_REQUEST_MOVE";
      
      public static const const_186:String = "REOB_OBJECT_MOUSE_ENTER";
      
      public static const const_189:String = "REOB_OBJECT_MOUSE_LEAVE";
      
      public static const const_167:String = "REOE_WIDGET_REQUEST_PLACEHOLDER";
      
      public static const ROOM_OBJECT_WIDGET_REQUEST_CREDITFURNI:String = "REOE_WIDGET_REQUEST_CREDITFURNI";
      
      public static const const_154:String = "REOE_WIDGET_REQUEST_STICKIE";
      
      public static const const_166:String = "REOE_WIDGET_REQUEST_PRESENT";
      
      public static const const_159:String = "REOE_WIDGET_REQUEST_TROPHY";
      
      public static const const_147:String = "REOE_WIDGET_REQUEST_TEASER";
      
      public static const const_177:String = "REOE_WIDGET_REQUEST_ECOTRONBOX";
      
      public static const const_160:String = "REOE_WIDGET_REQUEST_DIMMER";
      
      public static const const_114:String = "REOR_REMOVE_DIMMER";
      
      public static const const_178:String = "REOR_REQUEST_CLOTHING_CHANGE";
      
      public static const const_149:String = "REOR_WIDGET_REQUEST_PLAYLIST_EDITOR";
      
      public static const const_663:String = "REOE_ROOM_AD_FURNI_CLICK";
      
      public static const const_577:String = "REOE_ROOM_AD_FURNI_DOUBLE_CLICK";
      
      public static const const_580:String = "REOE_ROOM_AD_TOOLTIP_SHOW";
      
      public static const const_662:String = "REOE_ROOM_AD_TOOLTIP_HIDE";
       
      
      private var var_237:int;
      
      private var _category:int;
      
      public function RoomEngineObjectEvent(param1:String, param2:int, param3:int, param4:int, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param2,param3,param6,param7);
         this.var_237 = param4;
         this._category = param5;
      }
      
      public function get objectId() : int
      {
         return this.var_237;
      }
      
      public function get category() : int
      {
         return this._category;
      }
   }
}
