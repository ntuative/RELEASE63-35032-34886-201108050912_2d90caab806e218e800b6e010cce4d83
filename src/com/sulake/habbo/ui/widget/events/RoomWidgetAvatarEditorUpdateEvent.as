package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetAvatarEditorUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_1185:String = "RWUE_HIDE_AVATAR_EDITOR";
      
      public static const const_1364:String = "RWUE_AVATAR_EDITOR_CLOSED";
       
      
      public function RoomWidgetAvatarEditorUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
   }
}
