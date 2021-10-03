package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_631:String;
      
      private var var_2925:String;
      
      private var _gender:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         this.var_631 = param1;
         this._gender = param2;
         this.var_2925 = param3;
      }
      
      public function get figure() : String
      {
         return this.var_631;
      }
      
      public function get race() : String
      {
         return this.var_2925;
      }
      
      public function get gender() : String
      {
         return this._gender;
      }
   }
}
