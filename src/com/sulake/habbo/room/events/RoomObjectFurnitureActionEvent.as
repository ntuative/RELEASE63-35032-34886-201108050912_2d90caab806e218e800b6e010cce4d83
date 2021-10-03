package com.sulake.habbo.room.events
{
   import com.sulake.room.events.RoomObjectEvent;
   
   public class RoomObjectFurnitureActionEvent extends RoomObjectEvent
   {
      
      public static const const_507:String = "ROFCAE_DICE_OFF";
      
      public static const const_549:String = "ROFCAE_DICE_ACTIVATE";
      
      public static const const_547:String = "ROFCAE_USE_HABBOWHEEL";
      
      public static const const_554:String = "ROFCAE_STICKIE";
      
      public static const const_531:String = "ROFCAE_VIRAL_GIFT";
      
      public static const const_500:String = "ROFCAE_ENTER_ONEWAYDOOR";
      
      public static const const_513:String = "ROFCAE_QUEST_VENDING";
      
      public static const const_518:String = "ROFCAE_SOUND_MACHINE_INIT";
      
      public static const const_628:String = "ROFCAE_SOUND_MACHINE_START";
      
      public static const const_587:String = "ROFCAE_SOUND_MACHINE_STOP";
      
      public static const const_578:String = "ROFCAE_SOUND_MACHINE_DISPOSE";
      
      public static const const_633:String = "ROFCAE_JUKEBOX_INIT";
      
      public static const const_560:String = "ROFCAE_JUKEBOX_START";
      
      public static const const_677:String = "ROFCAE_JUKEBOX_MACHINE_STOP";
      
      public static const const_644:String = "ROFCAE_JUKEBOX_DISPOSE";
      
      public static const const_252:String = "ROFCAE_MOUSE_BUTTON";
      
      public static const const_326:String = "ROFCAE_MOUSE_ARROW";
       
      
      public function RoomObjectFurnitureActionEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param2,param3,param4,param5);
      }
   }
}
