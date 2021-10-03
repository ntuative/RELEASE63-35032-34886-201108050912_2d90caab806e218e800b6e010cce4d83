package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1325:int;
      
      private var var_1923:String;
      
      private var var_2008:int;
      
      private var var_2736:int;
      
      private var var_2734:int;
      
      private var var_2010:int;
      
      private var var_2009:Boolean;
      
      private var _category:String;
      
      private var var_2735:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1325 = param1.readInteger();
         this.var_1923 = param1.readString();
         this.var_2008 = Math.max(1,param1.readInteger());
         this.var_2736 = param1.readInteger();
         this.var_2734 = param1.readInteger();
         this.var_2010 = param1.readInteger();
         this.var_2009 = param1.readBoolean();
         this._category = param1.readString();
         this.var_2735 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_1923;
      }
      
      public function get level() : int
      {
         return this.var_1325;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2008;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2736;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_2734;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2010;
      }
      
      public function get finalLevel() : Boolean
      {
         return this.var_2009;
      }
      
      public function get category() : String
      {
         return this._category;
      }
      
      public function get levelCount() : int
      {
         return this.var_2735;
      }
      
      public function get firstLevelAchieved() : Boolean
      {
         return this.var_1325 > 1 || this.var_2009;
      }
      
      public function setMaxProgress() : void
      {
         this.var_2010 = this.var_2008;
      }
   }
}
