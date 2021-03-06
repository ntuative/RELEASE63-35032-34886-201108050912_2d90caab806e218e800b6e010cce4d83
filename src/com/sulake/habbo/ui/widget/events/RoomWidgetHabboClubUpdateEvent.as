package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_272:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2972:int = 0;
      
      private var var_2974:int = 0;
      
      private var var_2971:int = 0;
      
      private var var_2973:Boolean = false;
      
      private var _clubLevel:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_272,param6,param7);
         this.var_2972 = param1;
         this.var_2974 = param2;
         this.var_2971 = param3;
         this.var_2973 = param4;
         this._clubLevel = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2972;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2974;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2971;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2973;
      }
      
      public function get clubLevel() : int
      {
         return this._clubLevel;
      }
   }
}
