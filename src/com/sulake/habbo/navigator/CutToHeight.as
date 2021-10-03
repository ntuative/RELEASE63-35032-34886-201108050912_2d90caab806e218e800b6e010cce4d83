package com.sulake.habbo.navigator
{
   import com.sulake.core.window.components.ITextWindow;
   
   public class CutToHeight implements BinarySearchTest
   {
       
      
      private var var_210:String;
      
      private var _text:ITextWindow;
      
      private var var_354:int;
      
      public function CutToHeight()
      {
         super();
      }
      
      public function test(param1:int) : Boolean
      {
         this._text.text = this.var_210.substring(0,param1) + "...";
         return this._text.textHeight > this.var_354;
      }
      
      public function method_7(param1:String, param2:ITextWindow, param3:int) : void
      {
         this.var_210 = param1;
         this._text = param2;
         this.var_354 = param3;
      }
   }
}
