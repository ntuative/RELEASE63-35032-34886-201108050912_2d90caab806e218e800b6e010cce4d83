package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_816:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2701:int;
      
      private var var_2699:int;
      
      private var _color:uint;
      
      private var var_1406:int;
      
      private var var_2700:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_816);
         this.var_2701 = param1;
         this.var_2699 = param2;
         this._color = param3;
         this.var_1406 = param4;
         this.var_2700 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2701;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2699;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1406;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2700;
      }
   }
}
