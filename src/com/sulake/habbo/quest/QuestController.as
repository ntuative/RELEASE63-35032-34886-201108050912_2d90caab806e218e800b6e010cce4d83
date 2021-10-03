package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   
   public class QuestController implements IDisposable, IUpdateReceiver
   {
       
      
      private var var_50:HabboQuestEngine;
      
      private var var_599:QuestsList;
      
      private var var_490:QuestDetails;
      
      private var _questCompleted:QuestCompleted;
      
      private var var_414:QuestTracker;
      
      private var var_731:NextQuestTimer;
      
      public function QuestController(param1:HabboQuestEngine)
      {
         super();
         this.var_50 = param1;
         this.var_414 = new QuestTracker(this.var_50);
         this.var_599 = new QuestsList(this.var_50);
         this.var_490 = new QuestDetails(this.var_50);
         this._questCompleted = new QuestCompleted(this.var_50);
         this.var_731 = new NextQuestTimer(this.var_50);
      }
      
      public function onToolbarClick() : void
      {
         this.var_599.onToolbarClick();
      }
      
      public function onQuests(param1:Array, param2:Boolean) : void
      {
         this.var_599.onQuests(param1,param2);
      }
      
      public function onQuest(param1:QuestMessageData) : void
      {
         this.var_414.onQuest(param1);
         this.var_490.onQuest(param1);
         this._questCompleted.onQuest(param1);
         this.var_731.onQuest(param1);
      }
      
      public function onQuestCompleted(param1:QuestMessageData) : void
      {
         this.var_414.onQuestCompleted(param1);
         this.var_490.onQuestCompleted(param1);
         this._questCompleted.onQuestCompleted(param1);
      }
      
      public function onQuestCancelled() : void
      {
         this.var_414.onQuestCancelled();
         this.var_490.onQuestCancelled();
         this._questCompleted.onQuestCancelled();
         this.var_731.onQuestCancelled();
      }
      
      public function onRoomEnter() : void
      {
         this.var_414.onRoomEnter();
      }
      
      public function onRoomExit() : void
      {
         this.var_599.onRoomExit();
         this.var_414.onRoomExit();
         this.var_490.onRoomExit();
         this.var_731.onRoomExit();
      }
      
      public function update(param1:uint) : void
      {
         this._questCompleted.update(param1);
         this.var_414.update(param1);
         this.var_731.update(param1);
         this.var_599.update(param1);
         this.var_490.update(param1);
      }
      
      public function dispose() : void
      {
         this.var_50 = null;
         if(this.var_599)
         {
            this.var_599.dispose();
            this.var_599 = null;
         }
         if(this.var_414)
         {
            this.var_414.dispose();
            this.var_414 = null;
         }
         if(this.var_490)
         {
            this.var_490.dispose();
            this.var_490 = null;
         }
         if(this._questCompleted)
         {
            this._questCompleted.dispose();
            this._questCompleted = null;
         }
         if(this.var_731)
         {
            this.var_731.dispose();
            this.var_731 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this.var_50 == null;
      }
      
      public function get questsList() : QuestsList
      {
         return this.var_599;
      }
      
      public function get questDetails() : QuestDetails
      {
         return this.var_490;
      }
      
      public function get questTracker() : QuestTracker
      {
         return this.var_414;
      }
   }
}
