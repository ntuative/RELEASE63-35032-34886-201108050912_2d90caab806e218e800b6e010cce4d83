package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.enum.CatalogPageName;
   import com.sulake.habbo.catalog.purse.ActivityPointTypeEnum;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.catalog.viewer.widgets.events.CatalogWidgetInitPurchaseEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.CatalogWidgetPurchaseOverrideEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.SelectProductEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.SetExtraPurchaseParameterEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.WidgetEvent;
   import com.sulake.habbo.session.HabboClubLevelEnum;
   import com.sulake.habbo.session.ISessionDataManager;
   import com.sulake.habbo.tracking.HabboTracking;
   
   public class PurchaseCatalogWidget extends CatalogWidget implements ICatalogWidget
   {
       
      
      private var var_2805:XML;
      
      private var var_2809:XML;
      
      private var var_2807:XML;
      
      private var var_2806:XML;
      
      private var var_2808:XML;
      
      private var var_2804:XML;
      
      private var var_1075:IWindowContainer;
      
      private var var_714:IButtonWindow;
      
      private var var_3144:IButtonWindow;
      
      private var var_2059:IButtonWindow;
      
      private var var_2056:ITextWindow;
      
      private var var_2058:ITextWindow;
      
      private var var_2057:ITextWindow;
      
      private var var_3113:ITextWindow;
      
      private var var_103:Offer;
      
      private var var_2060:String = "";
      
      private var var_1617:Function;
      
      private var var_32:ISessionDataManager;
      
      public function PurchaseCatalogWidget(param1:IWindowContainer, param2:ISessionDataManager)
      {
         super(param1);
         this.var_32 = param2;
      }
      
      override public function dispose() : void
      {
         events.removeEventListener(WidgetEvent.CWE_SELECT_PRODUCT,this.onSelectProduct);
         events.removeEventListener(WidgetEvent.const_840,this.onSetParameter);
         events.removeEventListener(WidgetEvent.CWE_PURCHASE_OVERRIDE,this.onPurchaseOverride);
         super.dispose();
      }
      
      override public function init() : Boolean
      {
         if(!super.init())
         {
            return false;
         }
         var _loc1_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsStub") as XmlAsset;
         if(_loc1_ != null)
         {
            this.var_2805 = _loc1_.content as XML;
         }
         var _loc2_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetPixelsStub") as XmlAsset;
         if(_loc2_ != null)
         {
            this.var_2809 = _loc2_.content as XML;
         }
         var _loc3_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsPixelsStub") as XmlAsset;
         if(_loc3_ != null)
         {
            this.var_2807 = _loc3_.content as XML;
         }
         var _loc4_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsOrCreditsAndPixelsStub") as XmlAsset;
         var _loc5_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetBuyClubStub") as XmlAsset;
         if(_loc5_ != null)
         {
            this.var_2806 = _loc5_.content as XML;
         }
         var _loc6_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetBuyVipStub") as XmlAsset;
         if(_loc6_ != null)
         {
            this.var_2808 = _loc6_.content as XML;
         }
         var _loc7_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetBuyVipStub") as XmlAsset;
         if(_loc7_ != null)
         {
            this.var_2804 = _loc7_.content as XML;
         }
         events.addEventListener(WidgetEvent.CWE_SELECT_PRODUCT,this.onSelectProduct);
         events.addEventListener(WidgetEvent.const_840,this.onSetParameter);
         events.addEventListener(WidgetEvent.CWE_PURCHASE_OVERRIDE,this.onPurchaseOverride);
         events.addEventListener(WidgetEvent.CWE_INIT_PURCHASE,this.initPurchase);
         return true;
      }
      
      private function onPurchaseOverride(param1:CatalogWidgetPurchaseOverrideEvent) : void
      {
         this.var_1617 = param1.callback;
      }
      
      private function attachStub(param1:String, param2:int) : void
      {
         var _loc3_:* = null;
         if(this.var_32.hasUserRight(null,param2))
         {
            switch(param1)
            {
               case Offer.const_765:
                  _loc3_ = page.viewer.catalog.windowManager.buildFromXML(this.var_2805) as IWindowContainer;
                  break;
               case Offer.const_1282:
                  _loc3_ = page.viewer.catalog.windowManager.buildFromXML(this.var_2809) as IWindowContainer;
                  break;
               case Offer.const_1330:
                  _loc3_ = page.viewer.catalog.windowManager.buildFromXML(this.var_2807) as IWindowContainer;
                  break;
               default:
                  Logger.log("Unknown price-type, can\'t attach..." + this.var_103.priceType);
            }
         }
         else
         {
            switch(param2)
            {
               case HabboClubLevelEnum.const_33:
                  _loc3_ = page.viewer.catalog.windowManager.buildFromXML(this.var_2806) as IWindowContainer;
                  break;
               case HabboClubLevelEnum.const_35:
                  if(!this.var_32.hasUserRight(null,HabboClubLevelEnum.const_33))
                  {
                     _loc3_ = page.viewer.catalog.windowManager.buildFromXML(this.var_2808) as IWindowContainer;
                  }
                  else
                  {
                     _loc3_ = page.viewer.catalog.windowManager.buildFromXML(this.var_2804) as IWindowContainer;
                  }
            }
         }
         if(_loc3_ != null)
         {
            if(this.var_1075 != null)
            {
               _window.removeChild(this.var_1075);
               this.var_1075.dispose();
            }
            this.var_1075 = _loc3_;
            _window.addChild(_loc3_);
            this.var_1075.x = 0;
            this.var_1075.y = 0;
         }
         this.var_2056 = _window.findChildByName("ctlg_price_credits") as ITextWindow;
         this.var_2058 = _window.findChildByName("ctlg_price_pixels") as ITextWindow;
         this.var_2057 = _window.findChildByName("ctlg_price_credits_pixels") as ITextWindow;
         this.var_3113 = _window.findChildByName("ctlg_special_txt") as ITextWindow;
         this.var_714 = window.findChildByName("ctlg_buy_button") as IButtonWindow;
         this.var_2059 = window.findChildByName("ctlg_buy_club_button") as IButtonWindow;
         if(this.var_714 != null)
         {
            if(this.var_1617 != null)
            {
               this.var_714.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.var_1617);
            }
            else
            {
               this.var_714.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.var_1617);
               this.var_714.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onPurchase);
            }
            this.var_714.disable();
         }
         if(this.var_2059 != null)
         {
            this.var_2059.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onBuyClub);
         }
      }
      
      private function onSelectProduct(param1:SelectProductEvent) : void
      {
         var _loc4_:* = null;
         var _loc2_:ICoreLocalizationManager = (page.viewer.catalog as HabboCatalog).localization;
         this.var_103 = param1.offer;
         this.attachStub(this.var_103.priceType,this.var_103.clubLevel);
         if(this.var_2056 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits","credits",String(this.var_103.priceInCredits));
            this.var_2056.caption = "${catalog.purchase.price.credits}";
         }
         var _loc3_:String = this.var_103.activityPointType == ActivityPointTypeEnum.PIXEL ? "pixels" : "activitypoints";
         if(this.var_2058 != null)
         {
            _loc4_ = "catalog.purchase.price.activitypoints." + this.var_103.activityPointType;
            _loc2_.registerParameter(_loc4_,_loc3_,this.var_103.priceInActivityPoints.toString());
            this.var_2058.caption = _loc2_.getKey(_loc4_);
         }
         if(this.var_2057 != null)
         {
            _loc4_ = "catalog.purchase.price.credits_and_activitypoints." + this.var_103.activityPointType;
            _loc2_.registerParameter(_loc4_,"credits",String(this.var_103.priceInCredits));
            _loc2_.registerParameter(_loc4_,_loc3_,String(this.var_103.priceInActivityPoints));
            this.var_2057.caption = _loc2_.getKey(_loc4_);
         }
         var _loc5_:IWindow = _window.findChildByName("activity_points_bg");
         if(_loc5_ != null)
         {
            _loc5_.color = this.var_103.activityPointType == 0 ? 6737151 : uint(13421772);
         }
         if(this.var_714 != null)
         {
            this.var_714.enable();
         }
      }
      
      private function onSetParameter(param1:SetExtraPurchaseParameterEvent) : void
      {
         this.var_2060 = param1.parameter;
      }
      
      private function onPurchase(param1:WindowMouseEvent) : void
      {
         if(this.var_103 != null)
         {
            (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(this.var_103,page.pageId,this.var_2060);
         }
      }
      
      private function initPurchase(param1:CatalogWidgetInitPurchaseEvent) : void
      {
         if(this.var_103 != null)
         {
            (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(this.var_103,page.pageId,this.var_2060,param1.enableBuyAsGift);
         }
      }
      
      private function onBuyClub(param1:WindowMouseEvent) : void
      {
         (page.viewer.catalog as HabboCatalog).openCatalogPage(CatalogPageName.const_176,true);
         HabboTracking.getInstance().trackEventLog("Catalog","click","BUY_CLUB");
      }
   }
}
