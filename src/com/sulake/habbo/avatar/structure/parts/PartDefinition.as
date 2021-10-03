package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var var_2332:String;
      
      private var var_1753:String;
      
      private var var_2333:String;
      
      private var var_1754:Boolean;
      
      private var var_1752:int = -1;
      
      public function PartDefinition(param1:XML)
      {
         super();
         this.var_2332 = String(param1["set-type"]);
         this.var_1753 = String(param1["flipped-set-type"]);
         this.var_2333 = String(param1["remove-set-type"]);
         this.var_1754 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return this.var_1752 >= 0;
      }
      
      public function get staticId() : int
      {
         return this.var_1752;
      }
      
      public function set staticId(param1:int) : void
      {
         this.var_1752 = param1;
      }
      
      public function get setType() : String
      {
         return this.var_2332;
      }
      
      public function get flippedSetType() : String
      {
         return this.var_1753;
      }
      
      public function get removeSetType() : String
      {
         return this.var_2333;
      }
      
      public function get appendToFigure() : Boolean
      {
         return this.var_1754;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         this.var_1754 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         this.var_1753 = param1;
      }
   }
}
