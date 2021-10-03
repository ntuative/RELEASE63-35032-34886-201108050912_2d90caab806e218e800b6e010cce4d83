package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_362:int = 1;
      
      public static const const_208:int = 2;
      
      public static const const_270:int = 3;
      
      public static const const_372:int = 4;
      
      public static const const_316:int = 5;
      
      public static const const_419:int = 1;
      
      public static const const_979:int = 2;
      
      public static const const_942:int = 3;
      
      public static const const_837:int = 4;
      
      public static const const_311:int = 5;
      
      public static const const_789:int = 6;
      
      public static const const_891:int = 7;
      
      public static const const_444:int = 8;
      
      public static const const_671:int = 9;
      
      public static const const_2257:int = 10;
      
      public static const const_895:int = 11;
      
      public static const const_515:int = 12;
       
      
      private var var_469:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_469 = new Array();
         this.var_469.push(new Tab(this._navigator,const_362,const_515,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_602));
         this.var_469.push(new Tab(this._navigator,const_208,const_419,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_602));
         this.var_469.push(new Tab(this._navigator,const_372,const_895,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1265));
         this.var_469.push(new Tab(this._navigator,const_270,const_311,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_602));
         this.var_469.push(new Tab(this._navigator,const_316,const_444,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_1239));
         this.setSelectedTab(const_362);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_372;
      }
      
      public function get tabs() : Array
      {
         return this.var_469;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_469)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_469)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_469)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
