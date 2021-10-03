package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarEffectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_117:int;
      
      private var var_2635:int;
      
      public function RoomObjectAvatarEffectUpdateMessage(param1:int = 0, param2:int = 0)
      {
         super();
         this.var_117 = param1;
         this.var_2635 = param2;
      }
      
      public function get effect() : int
      {
         return this.var_117;
      }
      
      public function get delayMilliSeconds() : int
      {
         return this.var_2635;
      }
   }
}
