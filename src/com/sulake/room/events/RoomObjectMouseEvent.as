package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_168:String = "ROE_MOUSE_CLICK";
      
      public static const const_186:String = "ROE_MOUSE_ENTER";
      
      public static const const_645:String = "ROE_MOUSE_MOVE";
      
      public static const const_189:String = "ROE_MOUSE_LEAVE";
      
      public static const const_2193:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_617:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1882:String = "";
      
      private var var_2717:Boolean;
      
      private var var_2720:Boolean;
      
      private var var_2718:Boolean;
      
      private var var_2719:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1882 = param2;
         this.var_2717 = param5;
         this.var_2720 = param6;
         this.var_2718 = param7;
         this.var_2719 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1882;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2717;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2720;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2718;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2719;
      }
   }
}
