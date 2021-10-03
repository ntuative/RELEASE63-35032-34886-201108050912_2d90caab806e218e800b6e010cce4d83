package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_871:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_649:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_871);
         this.var_649 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_649;
      }
   }
}
