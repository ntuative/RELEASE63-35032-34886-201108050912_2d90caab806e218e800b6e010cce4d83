package com.sulake.habbo.friendbar.events
{
   import com.sulake.habbo.friendbar.data.FriendNotification;
   import flash.events.Event;
   
   public class NotificationEvent extends Event
   {
      
      public static const const_850:String = "FBE_NOTIFICATION_EVENT";
       
      
      public var friendId:int;
      
      public var notification:FriendNotification;
      
      public function NotificationEvent(param1:int, param2:FriendNotification)
      {
         super(const_850);
         this.friendId = param1;
         this.notification = param2;
      }
   }
}
