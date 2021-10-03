package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowEvent
   {
      
      public static const const_1886:String = "WE_DESTROY";
      
      public static const const_382:String = "WE_DESTROYED";
      
      public static const const_1771:String = "WE_OPEN";
      
      public static const const_1787:String = "WE_OPENED";
      
      public static const const_2055:String = "WE_CLOSE";
      
      public static const const_2056:String = "WE_CLOSED";
      
      public static const const_1878:String = "WE_FOCUS";
      
      public static const const_357:String = "WE_FOCUSED";
      
      public static const const_1945:String = "WE_UNFOCUS";
      
      public static const const_1764:String = "WE_UNFOCUSED";
      
      public static const const_1967:String = "WE_ACTIVATE";
      
      public static const const_586:String = "WE_ACTIVATED";
      
      public static const const_1996:String = "WE_DEACTIVATE";
      
      public static const const_564:String = "WE_DEACTIVATED";
      
      public static const const_346:String = "WE_SELECT";
      
      public static const const_47:String = "WE_SELECTED";
      
      public static const const_579:String = "WE_UNSELECT";
      
      public static const const_635:String = "WE_UNSELECTED";
      
      public static const const_2052:String = "WE_LOCK";
      
      public static const const_1856:String = "WE_LOCKED";
      
      public static const const_2029:String = "WE_UNLOCK";
      
      public static const const_1852:String = "WE_UNLOCKED";
      
      public static const const_878:String = "WE_ENABLE";
      
      public static const const_207:String = "WE_ENABLED";
      
      public static const const_1021:String = "WE_DISABLE";
      
      public static const const_234:String = "WE_DISABLED";
      
      public static const WINDOW_EVENT_RELOCATE:String = "WE_RELOCATE";
      
      public static const const_423:String = "WE_RELOCATED";
      
      public static const const_1353:String = "WE_RESIZE";
      
      public static const const_40:String = "WE_RESIZED";
      
      public static const const_2059:String = "WE_MINIMIZE";
      
      public static const const_1789:String = "WE_MINIMIZED";
      
      public static const const_2063:String = "WE_MAXIMIZE";
      
      public static const const_1922:String = "WE_MAXIMIZED";
      
      public static const const_1806:String = "WE_RESTORE";
      
      public static const const_2007:String = "WE_RESTORED";
      
      public static const const_537:String = "WE_CHILD_ADDED";
      
      public static const const_407:String = "WE_CHILD_REMOVED";
      
      public static const const_206:String = "WE_CHILD_RELOCATED";
      
      public static const const_150:String = "WE_CHILD_RESIZED";
      
      public static const const_334:String = "WE_CHILD_ACTIVATED";
      
      public static const const_657:String = "WE_PARENT_ADDED";
      
      public static const const_2011:String = "WE_PARENT_REMOVED";
      
      public static const const_1858:String = "WE_PARENT_RELOCATED";
      
      public static const const_590:String = "WE_PARENT_RESIZED";
      
      public static const const_1202:String = "WE_PARENT_ACTIVATED";
      
      public static const const_169:String = "WE_OK";
      
      public static const const_656:String = "WE_CANCEL";
      
      public static const const_110:String = "WE_CHANGE";
      
      public static const const_526:String = "WE_SCROLL";
      
      public static const const_119:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String;
      
      protected var _window:IWindow;
      
      protected var var_760:IWindow;
      
      protected var var_1159:Boolean;
      
      protected var var_515:Boolean;
      
      protected var var_169:Boolean;
      
      protected var var_759:Array;
      
      public function WindowEvent()
      {
         super();
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = POOL.length > 0 ? POOL.pop() : new WindowEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_760 = param3;
         _loc5_.var_515 = param4;
         _loc5_.var_169 = false;
         _loc5_.var_759 = POOL;
         return _loc5_;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get target() : IWindow
      {
         return this._window;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_760;
      }
      
      public function get cancelable() : Boolean
      {
         return this.var_515;
      }
      
      public function recycle() : void
      {
         if(this.var_169)
         {
            throw new Error("Event already recycled!");
         }
         this.var_760 = null;
         this._window = null;
         this.var_169 = true;
         this.var_1159 = false;
         this.var_759.push(this);
      }
      
      public function clone() : WindowEvent
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function preventDefault() : void
      {
         this.preventWindowOperation();
      }
      
      public function isDefaultPrevented() : Boolean
      {
         return this.var_1159;
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1159 = true;
            return;
         }
         throw new Error("Attempted to prevent window operation that is not cancelable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1159;
      }
      
      public function stopPropagation() : void
      {
         this.var_1159 = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.var_1159 = true;
      }
      
      public function toString() : String
      {
         return "WindowEvent { type: " + this._type + " cancelable: " + this.var_515 + " window: " + this._window + " }";
      }
   }
}
