package com.sulake.habbo.ui.widget.roomqueue
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.ui.IRoomWidgetHandler;
   import com.sulake.habbo.ui.widget.RoomWidgetBase;
   import com.sulake.habbo.ui.widget.events.RoomWidgetRoomQueueUpdateEvent;
   import com.sulake.habbo.ui.widget.messages.RoomWidgetRoomQueueMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.events.IEventDispatcher;
   
   public class RoomQueueWidget extends RoomWidgetBase
   {
       
      
      private var _window:IFrameWindow;
      
      private var _config:IHabboConfigurationManager;
      
      private var var_1306:int;
      
      private var var_2731:Boolean;
      
      private var var_2004:String;
      
      private var var_1590:Boolean;
      
      private var var_2003:Boolean;
      
      public function RoomQueueWidget(param1:IRoomWidgetHandler, param2:IHabboWindowManager, param3:IAssetLibrary, param4:IHabboLocalizationManager, param5:IHabboConfigurationManager)
      {
         super(param1,param2,param3,param4);
         this._config = param5;
      }
      
      override public function dispose() : void
      {
         this.removeWindow();
         this._config = null;
         super.dispose();
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetRoomQueueUpdateEvent.const_396,this.onQueueStatus);
         param1.addEventListener(RoomWidgetRoomQueueUpdateEvent.const_527,this.onQueueStatus);
         super.registerUpdateEvents(param1);
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetRoomQueueUpdateEvent.const_396,this.onQueueStatus);
         param1.removeEventListener(RoomWidgetRoomQueueUpdateEvent.const_527,this.onQueueStatus);
      }
      
      private function removeWindow() : void
      {
         if(this._window != null)
         {
            this._window.dispose();
            this._window = null;
         }
      }
      
      private function onQueueStatus(param1:RoomWidgetRoomQueueUpdateEvent) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(param1.isActive)
         {
            this.var_2004 = param1.type;
            this.var_1590 = false;
            this.var_1306 = param1.position;
         }
         else
         {
            this.var_1590 = true;
         }
         this.var_2731 = param1.hasHabboClub;
         this.var_2003 = param1.isClubQueue;
         localizations.registerParameter("room.queue.position","position",this.var_1306.toString());
         localizations.registerParameter("room.queue.position.hc","position",this.var_1306.toString());
         localizations.registerParameter("room.queue.spectator.position","position",this.var_1306.toString());
         localizations.registerParameter("room.queue.spectator.position.hc","position",this.var_1306.toString());
         this.showInterface();
      }
      
      private function createWindow() : Boolean
      {
         if(this._window != null)
         {
            return true;
         }
         var _loc1_:XmlAsset = assets.getAssetByName("room_queue") as XmlAsset;
         this._window = windowManager.buildFromXML(_loc1_.content as XML) as IFrameWindow;
         if(this._window == null)
         {
            return false;
         }
         this._window.visible = false;
         var _loc2_:IWindow = this._window.findChildByTag("close");
         if(_loc2_ != null)
         {
            _loc2_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.exitQueue);
         }
         _loc2_ = this._window.findChildByName("cancel_button");
         if(_loc2_ != null)
         {
            _loc2_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.exitQueue);
         }
         _loc2_ = this._window.findChildByName("link_text");
         if(_loc2_ != null)
         {
            _loc2_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.openLink);
         }
         _loc2_ = this._window.findChildByName("change_button");
         if(_loc2_ != null)
         {
            _loc2_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.changeQueue);
         }
         this._window.center();
         return true;
      }
      
      private function showInterface() : void
      {
         if(!this.createWindow())
         {
            return;
         }
         var _loc1_:ITextWindow = this._window.findChildByName("info_text") as ITextWindow;
         var _loc2_:IButtonWindow = this._window.findChildByName("change_button") as IButtonWindow;
         var _loc3_:IWindow = this._window.findChildByName("spectator_info");
         if(_loc1_ != null && _loc2_ != null && _loc3_ != null)
         {
            switch(this.var_2004)
            {
               case RoomWidgetRoomQueueUpdateEvent.const_396:
                  _loc1_.caption = !!this.var_2003 ? "${room.queue.position.hc}" : "${room.queue.position}";
                  _loc2_.caption = "${room.queue.spectatormode}";
                  _loc3_.visible = this.var_1590;
                  break;
               case RoomWidgetRoomQueueUpdateEvent.const_527:
                  _loc1_.caption = !!this.var_2003 ? "${room.queue.spectator.position.hc}" : "${room.queue.spectator.position}";
                  _loc2_.caption = "${room.queue.back}";
                  _loc3_.visible = false;
            }
            _loc2_.visible = this.var_1590;
         }
         var _loc4_:IWindowContainer = this._window.findChildByName("club_container") as IWindowContainer;
         if(_loc4_ != null)
         {
            _loc4_.visible = !this.var_2731;
         }
         this._window.visible = true;
      }
      
      private function exitQueue(param1:WindowMouseEvent) : void
      {
         if(messageListener == null)
         {
            return;
         }
         var _loc2_:RoomWidgetRoomQueueMessage = new RoomWidgetRoomQueueMessage(RoomWidgetRoomQueueMessage.const_813);
         messageListener.processWidgetMessage(_loc2_);
         this.removeWindow();
      }
      
      private function openLink(param1:WindowMouseEvent) : void
      {
         messageListener.processWidgetMessage(new RoomWidgetRoomQueueMessage(RoomWidgetRoomQueueMessage.const_930));
      }
      
      private function changeQueue(param1:WindowMouseEvent) : void
      {
         var _loc2_:* = null;
         if(messageListener == null)
         {
            return;
         }
         if(this.var_2004 == RoomWidgetRoomQueueUpdateEvent.const_396)
         {
            _loc2_ = new RoomWidgetRoomQueueMessage(RoomWidgetRoomQueueMessage.CHANGE_TO_SPECTATOR_QUEUE);
         }
         else
         {
            _loc2_ = new RoomWidgetRoomQueueMessage(RoomWidgetRoomQueueMessage.const_835);
         }
         messageListener.processWidgetMessage(_loc2_);
         this.removeWindow();
      }
   }
}
