package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class QuestMessageData
   {
       
      
      private var var_2229:String;
      
      private var var_2227:int;
      
      private var var_2225:int;
      
      private var var_1878:int;
      
      private var _id:int;
      
      private var var_2228:Boolean;
      
      private var _type:String;
      
      private var var_3065:String;
      
      private var var_3064:int;
      
      private var var_2230:String;
      
      private var var_3063:int;
      
      private var var_3066:int;
      
      private var var_1720:int;
      
      private var var_2226:Date;
      
      public function QuestMessageData(param1:IMessageDataWrapper)
      {
         this.var_2226 = new Date();
         super();
         this.var_2229 = param1.readString();
         this.var_2227 = param1.readInteger();
         this.var_2225 = param1.readInteger();
         this.var_1878 = param1.readInteger();
         this._id = param1.readInteger();
         this.var_2228 = param1.readBoolean();
         this._type = param1.readString();
         this.var_3065 = param1.readString();
         this.var_3064 = param1.readInteger();
         this.var_2230 = param1.readString();
         this.var_3063 = param1.readInteger();
         this.var_3066 = param1.readInteger();
         this.var_1720 = param1.readInteger();
      }
      
      public function get campaignCode() : String
      {
         return this.var_2229;
      }
      
      public function get localizationCode() : String
      {
         return this.var_2230;
      }
      
      public function get completedQuestsInCampaign() : int
      {
         return this.var_2227;
      }
      
      public function get questCountInCampaign() : int
      {
         return this.var_2225;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1878;
      }
      
      public function get accepted() : Boolean
      {
         return this.var_2228;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get imageVersion() : String
      {
         return this.var_3065;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this.var_3064;
      }
      
      public function get completedSteps() : int
      {
         return this.var_3063;
      }
      
      public function get totalSteps() : int
      {
         return this.var_3066;
      }
      
      public function get waitPeriodSeconds() : int
      {
         if(this.var_1720 < 1)
         {
            return 0;
         }
         var _loc1_:Date = new Date();
         var _loc2_:int = _loc1_.getTime() - this.var_2226.getTime();
         return int(Math.max(0,this.var_1720 - Math.floor(_loc2_ / 1000)));
      }
      
      public function getCampaignLocalizationKey() : String
      {
         return "quests." + this.var_2229;
      }
      
      public function getQuestLocalizationKey() : String
      {
         return this.getCampaignLocalizationKey() + "." + this.var_2230;
      }
      
      public function get completedCampaign() : Boolean
      {
         return this._id < 1;
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function set accepted(param1:Boolean) : void
      {
         this.var_2228 = param1;
      }
      
      public function get lastQuestInCampaign() : Boolean
      {
         return this.var_2227 >= this.var_2225;
      }
      
      public function get receiveTime() : Date
      {
         return this.var_2226;
      }
      
      public function set waitPeriodSeconds(param1:int) : void
      {
         this.var_1720 = param1;
      }
   }
}
