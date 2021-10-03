package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetRoomQueueUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_396:String = "RWRQUE_VISITOR_QUEUE_STATUS";
      
      public static const const_527:String = "RWRQUE_SPECTATOR_QUEUE_STATUS";
       
      
      private var var_1381:int;
      
      private var var_2918:Boolean;
      
      private var var_560:Boolean;
      
      private var var_2003:Boolean;
      
      public function RoomWidgetRoomQueueUpdateEvent(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1381 = param2;
         this.var_2918 = param3;
         this.var_560 = param4;
         this.var_2003 = param5;
      }
      
      public function get position() : int
      {
         return this.var_1381;
      }
      
      public function get hasHabboClub() : Boolean
      {
         return this.var_2918;
      }
      
      public function get isActive() : Boolean
      {
         return this.var_560;
      }
      
      public function get isClubQueue() : Boolean
      {
         return this.var_2003;
      }
   }
}
