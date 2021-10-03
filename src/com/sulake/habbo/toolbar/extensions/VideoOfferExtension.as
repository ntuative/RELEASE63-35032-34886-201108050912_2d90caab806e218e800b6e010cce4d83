package com.sulake.habbo.toolbar.extensions
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IIconWindow;
   import com.sulake.core.window.components.IRegionWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.IHabboCatalog;
   import com.sulake.habbo.communication.messages.outgoing.tracking.EventLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.inventory.IHabboInventory;
   import com.sulake.habbo.inventory.events.HabboInventoryHabboClubEvent;
   import com.sulake.habbo.session.HabboClubLevelEnum;
   import com.sulake.habbo.toolbar.ExtensionFixedSlotsEnum;
   import com.sulake.habbo.toolbar.HabboToolbar;
   import com.sulake.habbo.toolbar.IExtensionView;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.events.IEventDispatcher;
   import flash.external.ExternalInterface;
   
   public class VideoOfferExtension
   {
      
      private static const const_692:String = "video_offer";
      
      private static const const_1083:String = "supersaveradsOnCampaignsReady";
      
      private static const const_1084:String = "supersaveradsOnOfferComplete";
      
      private static const const_1588:String = "supersaveradsLoad";
      
      private static const const_1591:String = "supersaverAdsCamapaignEngage";
      
      private static const const_1592:uint = 16777215;
      
      private static const const_1590:uint = 12247545;
      
      private static const const_1589:uint = 6710886;
      
      private static const const_1587:uint = 13421772;
       
      
      private var _windowManager:IHabboWindowManager;
      
      private var _assets:IAssetLibrary;
      
      private var _events:IEventDispatcher;
      
      private var _config:IHabboConfigurationManager;
      
      private var _localization:ICoreLocalizationManager;
      
      private var var_12:IHabboInventory;
      
      private var _catalog:IHabboCatalog;
      
      private var _connection:IConnection;
      
      private var var_710:IExtensionView;
      
      private var _view:IWindowContainer;
      
      private var _disposed:Boolean = false;
      
      private var var_470:IRegionWindow;
      
      private var var_253:IIconWindow;
      
      private var var_1926:Boolean = false;
      
      private var var_1277:int = 0;
      
      private var var_1925:int = 0;
      
      public function VideoOfferExtension(param1:HabboToolbar, param2:IHabboWindowManager, param3:IAssetLibrary, param4:IEventDispatcher, param5:IHabboConfigurationManager, param6:ICoreLocalizationManager, param7:IHabboInventory, param8:IHabboCatalog, param9:IConnection)
      {
         super();
         this._windowManager = param2;
         this._assets = param3;
         this._events = param4;
         this._config = param5;
         this._localization = param6;
         this.var_12 = param7;
         this._catalog = param8;
         this._connection = param9;
         this.var_710 = param1.extensionView;
         if(this.var_12)
         {
            this.var_12.events.addEventListener(HabboInventoryHabboClubEvent.const_219,this.onClubChanged);
         }
      }
      
      private function onClubChanged(param1:HabboInventoryHabboClubEvent) : void
      {
         if(this.var_12.clubIsExpiring && !this._view && this.isClubExtensionEnabled())
         {
            this.var_710.detachExtension(const_692);
            this.destroyWindow();
            return;
         }
         if(false && !this.var_1926 && !this._view)
         {
            ExternalInterface.addCallback(const_1083,this.onCampaignsReady);
            ExternalInterface.addCallback(const_1084,this.onOfferComplete);
            ExternalInterface.call(const_1588);
         }
      }
      
      private function isClubExtensionEnabled() : Boolean
      {
         if(this.var_12.clubLevel == HabboClubLevelEnum.const_35 && this._config.getBoolean("club.membership.extend.vip.promotion.enabled",false))
         {
            return true;
         }
         return this.var_12.clubLevel == HabboClubLevelEnum.const_33 && this._config.getBoolean("club.membership.extend.basic.promotion.enabled",false);
      }
      
      private function onCampaignsReady(param1:String) : void
      {
         this.var_1277 = parseInt(param1);
         if(isNaN(this.var_1277))
         {
            this.var_1277 = 0;
         }
         if(this.var_1277 <= 0 || this.var_1926 || this.var_12.clubIsExpiring && this.isClubExtensionEnabled())
         {
            if(this._view)
            {
               this.destroyWindow();
            }
            return;
         }
         if(!this._view)
         {
            this._view = this.createWindow(this._assets,this._windowManager);
            if(this._view)
            {
               this.var_710.attachExtension(const_692,this._view,ExtensionFixedSlotsEnum.const_1248);
            }
         }
         if(this._connection)
         {
            this._connection.send(new EventLogMessageComposer("SuperSaverAds","client_action","supersaverads.video.promo.campaigns_ready"));
         }
      }
      
      private function onOfferComplete() : void
      {
         this.var_1925 += 1;
         if(this.var_1277 == this.var_1925)
         {
            this.destroyWindow();
         }
         if(this._connection)
         {
            this._connection.send(new EventLogMessageComposer("SuperSaverAds","client_action","supersaverads.video.promo.complete"));
         }
      }
      
      private function createWindow(param1:IAssetLibrary, param2:IHabboWindowManager) : IWindowContainer
      {
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc3_:* = null;
         var _loc4_:XmlAsset = param1.getAssetByName("video_offer_promotion_xml") as XmlAsset;
         if(_loc4_)
         {
            _loc3_ = param2.buildFromXML(_loc4_.content as XML,1) as IWindowContainer;
            if(_loc3_)
            {
               _loc5_ = this._localization.getKey("supersaverads.video.promo.offer","Watch a video and earn a credit!");
               _loc6_ = _loc3_.findChildByName("promo_text") as ITextWindow;
               _loc7_ = _loc3_.findChildByName("promo_text_shadow") as ITextWindow;
               if(_loc6_)
               {
                  _loc6_.text = _loc5_;
               }
               if(_loc7_)
               {
                  _loc7_.text = _loc5_;
               }
               this.var_470 = _loc3_.findChildByName("text_region") as IRegionWindow;
               if(this.var_470)
               {
                  this.var_470.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onTextRegionClicked);
                  this.var_470.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,this.onTextRegionMouseOver);
                  this.var_470.addEventListener(WindowMouseEvent.const_25,this.onTextRegionMouseOut);
               }
               this.var_253 = _loc3_.findChildByName("promo_close_icon") as IIconWindow;
               if(this.var_253)
               {
                  this.var_253.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onCloseClicked);
                  this.var_253.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,this.onCloseMouseOver);
                  this.var_253.addEventListener(WindowMouseEvent.const_25,this.onCloseMouseOut);
               }
            }
         }
         return _loc3_;
      }
      
      private function destroyWindow() : void
      {
         if(this._view)
         {
            if(this.var_470)
            {
               this.var_470.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onTextRegionClicked);
               this.var_470.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,this.onTextRegionMouseOver);
               this.var_470.removeEventListener(WindowMouseEvent.const_25,this.onTextRegionMouseOut);
               this.var_470 = null;
            }
            if(this.var_253)
            {
               this.var_253.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onCloseClicked);
               this.var_253.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,this.onCloseMouseOver);
               this.var_253.removeEventListener(WindowMouseEvent.const_25,this.onCloseMouseOut);
               this.var_253 = null;
            }
            this._view.dispose();
            this._view = null;
         }
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            if(this.var_710)
            {
               this.var_710.detachExtension(const_692);
               this.var_710 = null;
            }
            this.destroyWindow();
            if(false)
            {
               ExternalInterface.addCallback(const_1083,null);
               ExternalInterface.addCallback(const_1084,null);
            }
            if(this.var_12)
            {
               this.var_12.events.removeEventListener(HabboInventoryHabboClubEvent.const_219,this.onClubChanged);
               this.var_12 = null;
            }
            this.var_12 = null;
            this._catalog = null;
            this._localization = null;
            this._config = null;
            this._assets = null;
            this._events = null;
            this._disposed = true;
         }
      }
      
      private function onCloseClicked(param1:WindowMouseEvent) : void
      {
         this.var_1926 = true;
         this.destroyWindow();
         if(this._connection)
         {
            this._connection.send(new EventLogMessageComposer("SuperSaverAds","client_action","supersaverads.video.promo.close_clicked"));
         }
      }
      
      private function onCloseMouseOver(param1:WindowMouseEvent) : void
      {
         if(this.var_253)
         {
            this.var_253.color = const_1587;
         }
      }
      
      private function onCloseMouseOut(param1:WindowMouseEvent) : void
      {
         if(this.var_253)
         {
            this.var_253.color = const_1589;
         }
      }
      
      private function onTextRegionClicked(param1:WindowMouseEvent) : void
      {
         if(false)
         {
            ExternalInterface.call(const_1591);
            if(this._connection)
            {
               this._connection.send(new EventLogMessageComposer("SuperSaverAds","client_action","supersaverads.video.promo.launched"));
            }
         }
      }
      
      private function onTextRegionMouseOver(param1:WindowMouseEvent) : void
      {
         var _loc2_:* = null;
         if(this._view)
         {
            _loc2_ = this._view.findChildByName("promo_text") as ITextWindow;
            _loc2_.textColor = const_1590;
         }
      }
      
      private function onTextRegionMouseOut(param1:WindowMouseEvent) : void
      {
         var _loc2_:* = null;
         if(this._view)
         {
            _loc2_ = this._view.findChildByName("promo_text") as ITextWindow;
            _loc2_.textColor = const_1592;
         }
      }
   }
}
