package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_610:String = "RWUAM_WHISPER_USER";
      
      public static const const_678:String = "RWUAM_IGNORE_USER";
      
      public static const const_654:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_422:String = "RWUAM_KICK_USER";
      
      public static const const_647:String = "RWUAM_BAN_USER";
      
      public static const const_573:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_540:String = "RWUAM_RESPECT_USER";
      
      public static const const_672:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_510:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_627:String = "RWUAM_START_TRADING";
      
      public static const const_839:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_606:String = "RWUAM_KICK_BOT";
      
      public static const const_541:String = "RWUAM_REPORT";
      
      public static const const_659:String = "RWUAM_PICKUP_PET";
      
      public static const const_1923:String = "RWUAM_TRAIN_PET";
      
      public static const const_523:String = " RWUAM_RESPECT_PET";
      
      public static const const_280:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_571:String = "RWUAM_START_NAME_CHANGE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
