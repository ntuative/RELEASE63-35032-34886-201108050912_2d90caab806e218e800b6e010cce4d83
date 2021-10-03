package com.sulake.habbo.communication.messages.incoming.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementLevelUpData
   {
       
      
      private var _type:int;
      
      private var var_1325:int;
      
      private var var_2168:int;
      
      private var var_2736:int;
      
      private var var_2734:int;
      
      private var var_2540:int;
      
      private var var_1923:int;
      
      private var var_2849:String = "";
      
      private var var_2850:String = "";
      
      private var var_2848:int;
      
      private var _category:String;
      
      public function AchievementLevelUpData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1325 = param1.readInteger();
         this.var_1923 = param1.readInteger();
         this.var_2849 = param1.readString();
         this.var_2168 = param1.readInteger();
         this.var_2736 = param1.readInteger();
         this.var_2734 = param1.readInteger();
         this.var_2540 = param1.readInteger();
         this.var_2848 = param1.readInteger();
         this.var_2850 = param1.readString();
         this._category = param1.readString();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1325;
      }
      
      public function get points() : int
      {
         return this.var_2168;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2736;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_2734;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_2540;
      }
      
      public function get badgeId() : int
      {
         return this.var_1923;
      }
      
      public function get badgeCode() : String
      {
         return this.var_2849;
      }
      
      public function get removedBadgeCode() : String
      {
         return this.var_2850;
      }
      
      public function get achievementID() : int
      {
         return this.var_2848;
      }
      
      public function get category() : String
      {
         return this._category;
      }
   }
}
