package com.sulake.habbo.ui.widget.avatarinfo
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.enum.AvatarEditorInstanceId;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.inventory.events.HabboInventoryEffectsEvent;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.room.events.RoomEngineObjectEvent;
   import com.sulake.habbo.room.object.RoomObjectCategoryEnum;
   import com.sulake.habbo.room.object.RoomObjectTypeEnum;
   import com.sulake.habbo.session.HabboClubLevelEnum;
   import com.sulake.habbo.session.IUserData;
   import com.sulake.habbo.ui.IRoomWidgetHandler;
   import com.sulake.habbo.ui.handler.AvatarInfoWidgetHandler;
   import com.sulake.habbo.ui.widget.RoomWidgetBase;
   import com.sulake.habbo.ui.widget.events.RoomWidgetAvatarInfoEvent;
   import com.sulake.habbo.ui.widget.events.RoomWidgetFurniInfoUpdateEvent;
   import com.sulake.habbo.ui.widget.events.RoomWidgetPetInfoUpdateEvent;
   import com.sulake.habbo.ui.widget.events.RoomWidgetRoomEngineUpdateEvent;
   import com.sulake.habbo.ui.widget.events.RoomWidgetRoomObjectNameEvent;
   import com.sulake.habbo.ui.widget.events.RoomWidgetRoomObjectUpdateEvent;
   import com.sulake.habbo.ui.widget.events.RoomWidgetUpdateEvent;
   import com.sulake.habbo.ui.widget.events.RoomWidgetUserDataUpdateEvent;
   import com.sulake.habbo.ui.widget.events.RoomWidgetUserInfoUpdateEvent;
   import com.sulake.habbo.ui.widget.events.RoomWidgetUserLocationUpdateEvent;
   import com.sulake.habbo.ui.widget.memenu.IWidgetAvatarEffect;
   import com.sulake.habbo.ui.widget.messages.RoomWidgetGetUserLocationMessage;
   import com.sulake.habbo.ui.widget.messages.RoomWidgetRoomObjectMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.events.IEventDispatcher;
   
   public class AvatarInfoWidget extends RoomWidgetBase implements IUpdateReceiver
   {
      
      private static const const_1125:String = "use_minimized_own_avatar_menu";
       
      
      private var var_22:Component;
      
      private var _configuration:IHabboConfigurationManager;
      
      private var _view:AvatarInfoView;
      
      private var _isInitialized:Boolean = false;
      
      private var var_1928:Boolean = false;
      
      private var var_258:AvatarInfoData;
      
      private var var_2882:Boolean;
      
      private var var_2097:Boolean;
      
      private var var_2095:int = -1;
      
      private var var_3117:Boolean;
      
      private var var_895:AvatarInfoView;
      
      private var var_893:OwnAvatarMenuView;
      
      private var var_894:AvatarMenuView;
      
      private var var_408:Map;
      
      private var var_2622:Boolean = false;
      
      private var var_2096:Boolean = true;
      
      public function AvatarInfoWidget(param1:IRoomWidgetHandler, param2:IHabboWindowManager, param3:IAssetLibrary, param4:IHabboConfigurationManager, param5:IHabboLocalizationManager, param6:Component)
      {
         super(param1,param2,param3,param5);
         this.var_22 = param6;
         this._configuration = param4;
         this.var_258 = new AvatarInfoData();
         this.var_2882 = Boolean(this._configuration.getBoolean("menu.avatar.enabled",false));
         this.var_2097 = this._configuration.getBoolean("menu.own_avatar.enabled",false);
         this.var_408 = new Map();
         this.handler.roomEngine.events.addEventListener(RoomEngineObjectEvent.const_191,this.onRoomObjectAdded);
         this.handler.roomEngine.events.addEventListener(RoomEngineObjectEvent.const_446,this.onRoomObjectRemoved);
         this.handler.container.inventory.events.addEventListener(HabboInventoryEffectsEvent.const_304,this.onEffectsChanged);
         this.handler.widget = this;
      }
      
      public function get handler() : AvatarInfoWidgetHandler
      {
         return var_951 as AvatarInfoWidgetHandler;
      }
      
      public function get configuration() : IHabboConfigurationManager
      {
         return this._configuration;
      }
      
      public function set handlePetInfo(param1:Boolean) : void
      {
         this.var_2096 = param1;
      }
      
      private function onRoomObjectAdded(param1:RoomEngineObjectEvent) : void
      {
         var _loc2_:* = null;
         if(param1.category == RoomObjectCategoryEnum.OBJECT_CATEGORY_USER)
         {
            _loc2_ = this.handler.roomSession.userDataManager.getUserDataByIndex(param1.objectId);
            if(_loc2_)
            {
               if(this.handler.friendList.getFriendNames().indexOf(_loc2_.name) > -1)
               {
                  this.showFriendName(_loc2_,param1.objectId);
               }
            }
         }
      }
      
      private function onRoomObjectRemoved(param1:RoomEngineObjectEvent) : void
      {
         var _loc2_:* = null;
         if(param1.category == RoomObjectCategoryEnum.OBJECT_CATEGORY_USER)
         {
            for each(_loc2_ in this.var_408)
            {
               if(_loc2_.objectId == param1.objectId)
               {
                  this.removeView(_loc2_,false);
               }
            }
         }
      }
      
      private function onEffectsChanged(param1:HabboInventoryEffectsEvent) : void
      {
         if(this._view is OwnAvatarMenuView)
         {
            (this._view as OwnAvatarMenuView).updateButtons();
         }
      }
      
      private function getOwnCharacterInfo() : void
      {
         messageListener.processWidgetMessage(new RoomWidgetRoomObjectMessage(RoomWidgetRoomObjectMessage.const_883,0,0));
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(disposed)
         {
            return;
         }
         for each(_loc1_ in this.var_408)
         {
            _loc1_.dispose();
         }
         this.var_408 = null;
         if(this.var_22)
         {
            this.var_22.removeUpdateReceiver(this);
            this.var_22 = null;
         }
         if(this.var_895)
         {
            this.var_895.dispose();
            this.var_895 = null;
         }
         if(this.var_894)
         {
            this.var_894.dispose();
            this.var_894 = null;
         }
         if(this.var_893)
         {
            this.var_893.dispose();
            this.var_893 = null;
         }
         if(this._view)
         {
            if(!this._view.disposed)
            {
               this._view.dispose();
               this._view = null;
            }
         }
         this.handler.roomEngine.events.removeEventListener(RoomEngineObjectEvent.const_191,this.onRoomObjectAdded);
         this.handler.roomEngine.events.removeEventListener(RoomEngineObjectEvent.const_446,this.onRoomObjectRemoved);
         this.handler.container.inventory.events.removeEventListener(HabboInventoryEffectsEvent.const_304,this.onEffectsChanged);
         this._view = null;
         this._configuration = null;
         super.dispose();
      }
      
      public function close() : void
      {
         this.removeView(this._view,false);
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(!param1)
         {
            return;
         }
         param1.addEventListener(RoomWidgetAvatarInfoEvent.const_137,this.updateEventHandler);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_108,this.updateEventHandler);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_162,this.updateEventHandler);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_355,this.updateEventHandler);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_148,this.updateEventHandler);
         param1.addEventListener(RoomWidgetFurniInfoUpdateEvent.const_349,this.updateEventHandler);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.BOT,this.updateEventHandler);
         param1.addEventListener(RoomWidgetPetInfoUpdateEvent.const_115,this.updateEventHandler);
         param1.addEventListener(RoomWidgetUserDataUpdateEvent.const_131,this.updateEventHandler);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_201,this.updateEventHandler);
         param1.addEventListener(RoomWidgetRoomEngineUpdateEvent.const_95,this.updateEventHandler);
         param1.addEventListener(RoomWidgetRoomEngineUpdateEvent.const_414,this.updateEventHandler);
         param1.addEventListener(RoomWidgetRoomObjectNameEvent.const_634,this.updateEventHandler);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_1005,this.updateEventHandler);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_427,this.updateEventHandler);
         super.registerUpdateEvents(param1);
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetAvatarInfoEvent.const_137,this.updateEventHandler);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_108,this.updateEventHandler);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_162,this.updateEventHandler);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_355,this.updateEventHandler);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_148,this.updateEventHandler);
         param1.removeEventListener(RoomWidgetFurniInfoUpdateEvent.const_349,this.updateEventHandler);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.BOT,this.updateEventHandler);
         param1.removeEventListener(RoomWidgetPetInfoUpdateEvent.const_115,this.updateEventHandler);
         param1.removeEventListener(RoomWidgetUserDataUpdateEvent.const_131,this.updateEventHandler);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_201,this.updateEventHandler);
         param1.removeEventListener(RoomWidgetRoomEngineUpdateEvent.const_95,this.updateEventHandler);
         param1.removeEventListener(RoomWidgetRoomEngineUpdateEvent.const_414,this.updateEventHandler);
         param1.removeEventListener(RoomWidgetRoomObjectNameEvent.const_634,this.updateEventHandler);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_427,this.updateEventHandler);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_427,this.updateEventHandler);
      }
      
      private function updateEventHandler(param1:RoomWidgetUpdateEvent) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         switch(param1.type)
         {
            case RoomWidgetAvatarInfoEvent.const_137:
               _loc2_ = param1 as RoomWidgetAvatarInfoEvent;
               if(this.var_2097 && _loc2_.allowNameChange)
               {
                  this.useMinimizedOwnAvatarMenu = true;
                  this.selectOwnAvatar();
               }
               else
               {
                  this.updateView(_loc2_.userId,_loc2_.userName,_loc2_.roomIndex,RoomObjectTypeEnum.const_128,_loc2_.allowNameChange,null);
               }
               this._isInitialized = true;
               break;
            case RoomWidgetRoomObjectNameEvent.const_634:
               if(RoomWidgetRoomObjectNameEvent(param1).category == RoomObjectCategoryEnum.OBJECT_CATEGORY_USER)
               {
                  this.updateView(RoomWidgetRoomObjectNameEvent(param1).userId,RoomWidgetRoomObjectNameEvent(param1).userName,RoomWidgetRoomObjectNameEvent(param1).roomIndex,RoomObjectTypeEnum.const_128,false,null);
               }
               break;
            case RoomWidgetRoomObjectUpdateEvent.const_355:
               this.var_2096 = true;
               break;
            case RoomWidgetRoomObjectUpdateEvent.const_148:
            case RoomWidgetFurniInfoUpdateEvent.const_349:
               if(this._view)
               {
                  this.removeView(this._view,false);
               }
               break;
            case RoomWidgetRoomObjectUpdateEvent.const_1005:
               if(!(this._view is AvatarMenuView || this._view is OwnAvatarMenuView))
               {
                  this.var_2095 = RoomWidgetRoomObjectUpdateEvent(param1).id;
                  messageListener.processWidgetMessage(new RoomWidgetRoomObjectMessage(RoomWidgetRoomObjectMessage.const_984,RoomWidgetRoomObjectUpdateEvent(param1).id,RoomWidgetRoomObjectUpdateEvent(param1).category));
               }
               break;
            case RoomWidgetRoomObjectUpdateEvent.const_427:
               if(!(this._view is AvatarMenuView || this._view is OwnAvatarMenuView))
               {
                  if(RoomWidgetRoomObjectUpdateEvent(param1).id == this.var_2095)
                  {
                     if(this._view && !this._view.allowNameChange)
                     {
                        this.removeView(this._view,false);
                        this.var_2095 = -1;
                     }
                  }
               }
               break;
            case RoomWidgetUserInfoUpdateEvent.const_108:
            case RoomWidgetUserInfoUpdateEvent.const_162:
               _loc3_ = param1 as RoomWidgetUserInfoUpdateEvent;
               this.storeUserInfo(_loc3_);
               this.updateView(_loc3_.webID,_loc3_.name,_loc3_.userRoomId,RoomObjectTypeEnum.const_128,false,!!_loc3_.isSpectatorMode ? null : this.var_258);
               break;
            case RoomWidgetUserInfoUpdateEvent.BOT:
               _loc4_ = param1 as RoomWidgetUserInfoUpdateEvent;
               this.updateView(_loc4_.webID,_loc4_.name,_loc4_.userRoomId,RoomObjectTypeEnum.const_591,false,null);
               break;
            case RoomWidgetPetInfoUpdateEvent.const_115:
               if(this.var_2096)
               {
                  _loc6_ = param1 as RoomWidgetPetInfoUpdateEvent;
                  this.updateView(_loc6_.id,_loc6_.name,_loc6_.roomIndex,RoomObjectTypeEnum.const_221,false,null);
               }
               break;
            case RoomWidgetUserDataUpdateEvent.const_131:
               if(!this._isInitialized)
               {
                  this.getOwnCharacterInfo();
               }
               break;
            case RoomWidgetRoomObjectUpdateEvent.const_201:
               _loc5_ = param1 as RoomWidgetRoomObjectUpdateEvent;
               if(this._view && this._view.roomIndex == _loc5_.id)
               {
                  this.removeView(this._view,false);
               }
               for each(_loc7_ in this.var_408)
               {
                  if(_loc7_.objectId == _loc5_.id)
                  {
                     this.removeView(_loc7_,false);
                     break;
                  }
               }
               break;
            case RoomWidgetRoomEngineUpdateEvent.const_95:
               this.var_1928 = false;
               break;
            case RoomWidgetRoomEngineUpdateEvent.const_414:
               this.var_1928 = true;
         }
         this.checkUpdateNeed();
      }
      
      public function selectOwnAvatar() : void
      {
         var _loc3_:* = null;
         if(!this.handler || !this.handler.container || !this.handler.roomSession)
         {
            return;
         }
         var _loc1_:int = this.handler.container.sessionDataManager.userId;
         var _loc2_:IUserData = this.handler.roomSession.userDataManager.getUserData(_loc1_);
         if(!_loc2_)
         {
            return;
         }
         _loc3_ = new RoomWidgetRoomObjectMessage(RoomWidgetRoomObjectMessage.const_363,_loc2_.id,RoomObjectCategoryEnum.OBJECT_CATEGORY_USER);
         this.handler.container.processWidgetMessage(_loc3_);
      }
      
      private function storeUserInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         this.var_258.amIAnyRoomController = param1.amIAnyRoomController;
         this.var_258.amIController = param1.amIController;
         this.var_258.amIOwner = param1.amIOwner;
         this.var_258.canBeAskedAsFriend = param1.canBeAskedAsFriend;
         this.var_258.canBeKicked = param1.canBeKicked;
         this.var_258.canTrade = param1.canTrade;
         this.var_258.canTradeReason = param1.canTradeReason;
         this.var_258.hasFlatControl = param1.hasFlatControl;
         this.var_258.isIgnored = param1.isIgnored;
         this.var_258.respectLeft = param1.respectLeft;
         this.var_258.isOwnUser = param1.type == RoomWidgetUserInfoUpdateEvent.const_108;
         this.var_258.allowNameChange = param1.allowNameChange;
      }
      
      private function updateView(param1:int, param2:String, param3:int, param4:int, param5:Boolean, param6:AvatarInfoData) : void
      {
         var _loc8_:* = null;
         var _loc7_:Boolean = false;
         if(param6)
         {
            _loc7_ = !!param6.isOwnUser ? Boolean(this.var_2097) : Boolean(this.var_2882);
         }
         if(_loc7_ && this._view && !(this._view is AvatarMenuView || this._view is OwnAvatarMenuView))
         {
            this.removeView(this._view,false);
         }
         if(this._view == null || this._view.userId != param1 || this._view.userName != param2 || this._view.roomIndex != param3 || this._view.userType != param4 || param5)
         {
            if(this._view)
            {
               this.removeView(this._view,false);
            }
            if(!this.var_1928)
            {
               if(_loc7_)
               {
                  if(param6.isOwnUser)
                  {
                     if(!this.var_893)
                     {
                        this.var_893 = new OwnAvatarMenuView(this);
                     }
                     this._view = this.var_893;
                     OwnAvatarMenuView.setup(this._view as OwnAvatarMenuView,param1,param2,param3,param4,param6);
                  }
                  else
                  {
                     if(!this.var_894)
                     {
                        this.var_894 = new AvatarMenuView(this);
                     }
                     this._view = this.var_894;
                     AvatarMenuView.setup(this._view as AvatarMenuView,param1,param2,param3,param4,param6);
                     for each(_loc8_ in this.var_408)
                     {
                        if(_loc8_.userId == param1)
                        {
                           this.removeView(_loc8_,false);
                           break;
                        }
                     }
                  }
               }
               else
               {
                  if(!this.var_895)
                  {
                     this.var_895 = new AvatarInfoView(this);
                  }
                  this._view = this.var_895;
                  AvatarInfoView.setup(this._view,param1,param2,param3,param4,param5);
               }
            }
         }
         else if(this._view is AvatarMenuView || this._view is OwnAvatarMenuView)
         {
            if(this._view.userName == param2)
            {
               this.removeView(this._view,false);
            }
         }
      }
      
      public function removeView(param1:AvatarInfoView, param2:Boolean) : void
      {
         if(param1)
         {
            if(this.var_3117)
            {
               param1.hide(param2);
            }
            else
            {
               param1.dispose();
               this.var_895 = null;
               this.var_894 = null;
               this.var_893 = null;
            }
            if(param1 == this._view)
            {
               this._view = null;
            }
            if(param1 is FriendNameView)
            {
               this.var_408.remove(param1.userName);
               param1.dispose();
               this.checkUpdateNeed();
            }
         }
      }
      
      private function showFriendName(param1:IUserData, param2:int) : void
      {
         var _loc3_:* = null;
         if(this.var_408[param1.name] == null)
         {
            _loc3_ = new FriendNameView(this);
            FriendNameView.setup(_loc3_,param1.webID,param1.name,-1,RoomObjectTypeEnum.const_128,param2);
            this.var_408[param1.name] = _loc3_;
            this.checkUpdateNeed();
         }
      }
      
      public function checkUpdateNeed() : void
      {
         if(!this.var_22)
         {
            return;
         }
         if(this._view || this.var_408.length > 0)
         {
            this.var_22.registerUpdateReceiver(this,10);
         }
         else
         {
            this.var_22.removeUpdateReceiver(this);
         }
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(this._view)
         {
            _loc2_ = messageListener.processWidgetMessage(new RoomWidgetGetUserLocationMessage(this._view.userId,this._view.userType)) as RoomWidgetUserLocationUpdateEvent;
            if(!_loc2_)
            {
               return;
            }
            this._view.update(_loc2_.rectangle,_loc2_.screenLocation,param1);
         }
         for each(_loc3_ in this.var_408)
         {
            _loc2_ = messageListener.processWidgetMessage(new RoomWidgetGetUserLocationMessage(_loc3_.userId,_loc3_.userType)) as RoomWidgetUserLocationUpdateEvent;
            if(_loc2_)
            {
               _loc3_.update(_loc2_.rectangle,_loc2_.screenLocation,param1);
            }
         }
      }
      
      public function openAvatarEditor() : void
      {
         this.handler.container.avatarEditor.openEditor(AvatarEditorInstanceId.const_235,null,null,true);
         this.handler.container.avatarEditor.loadOwnAvatarInEditor(AvatarEditorInstanceId.const_235);
      }
      
      public function get hasClub() : Boolean
      {
         return this.handler.container.sessionDataManager.hasUserRight(null,HabboClubLevelEnum.const_33);
      }
      
      public function get hasEffectOn() : Boolean
      {
         var _loc2_:* = null;
         var _loc1_:Array = this.handler.container.inventory.getActivatedAvatarEffects();
         for each(_loc2_ in _loc1_)
         {
            if(_loc2_.isInUse)
            {
               return true;
            }
         }
         return false;
      }
      
      public function set isDancing(param1:Boolean) : void
      {
         this.var_2622 = param1;
      }
      
      public function get isDancing() : Boolean
      {
         return this.var_2622;
      }
      
      public function get useMinimizedOwnAvatarMenu() : Boolean
      {
         return this.handler.container.config.getBoolean(const_1125,true);
      }
      
      public function set useMinimizedOwnAvatarMenu(param1:Boolean) : void
      {
         this.handler.container.config.setKey(const_1125,!!param1 ? "1" : "0");
      }
   }
}
