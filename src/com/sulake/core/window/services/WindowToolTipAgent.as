package com.sulake.core.window.services
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IInteractiveWindow;
   import com.sulake.core.window.components.IToolTipWindow;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowType;
   import flash.display.DisplayObject;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class WindowToolTipAgent extends WindowMouseOperator implements IToolTipAgentService
   {
       
      
      protected var var_1430:String;
      
      protected var var_314:IToolTipWindow;
      
      protected var var_433:Timer;
      
      protected var var_1429:Point;
      
      protected var var_904:Point;
      
      protected var var_1723:uint;
      
      public function WindowToolTipAgent(param1:DisplayObject)
      {
         this.var_904 = new Point();
         this.var_1429 = new Point(20,20);
         this.var_1723 = 500;
         super(param1);
      }
      
      override public function begin(param1:IWindow, param2:uint = 0) : IWindow
      {
         if(param1 && !param1.disposed)
         {
            if(param1 is IInteractiveWindow)
            {
               this.var_1430 = IInteractiveWindow(param1).toolTipCaption;
               this.var_1723 = IInteractiveWindow(param1).toolTipDelay;
            }
            else
            {
               this.var_1430 = param1.caption;
               this.var_1723 = 500;
            }
            _mouse.x = _root.mouseX;
            _mouse.y = _root.mouseY;
            getMousePositionRelativeTo(param1,_mouse,this.var_904);
            if(this.var_1430 != null && this.var_1430 != "")
            {
               if(this.var_433 == null)
               {
                  this.var_433 = new Timer(this.var_1723,1);
                  this.var_433.addEventListener(TimerEvent.TIMER,this.showToolTip);
               }
               this.var_433.reset();
               this.var_433.start();
            }
         }
         return super.begin(param1,param2);
      }
      
      override public function end(param1:IWindow) : IWindow
      {
         if(this.var_433 != null)
         {
            this.var_433.stop();
            this.var_433.removeEventListener(TimerEvent.TIMER,this.showToolTip);
            this.var_433 = null;
         }
         this.hideToolTip();
         return super.end(param1);
      }
      
      override public function operate(param1:int, param2:int) : void
      {
         if(_window && true)
         {
            _mouse.x = param1;
            _mouse.y = param2;
            getMousePositionRelativeTo(_window,_mouse,this.var_904);
            if(this.var_314 != null && !this.var_314.disposed)
            {
               this.var_314.x = param1 + this.var_1429.x;
               this.var_314.y = param2 + this.var_1429.y;
            }
         }
      }
      
      protected function showToolTip(param1:TimerEvent) : void
      {
         var _loc2_:* = null;
         if(this.var_433 != null)
         {
            this.var_433.reset();
         }
         if(_window && true)
         {
            if(this.var_314 == null || this.var_314.disposed)
            {
               this.var_314 = _window.context.create("undefined::ToolTip",this.var_1430,WindowType.const_429,_window.style,0 | 0,null,null,null,0,null,null) as IToolTipWindow;
            }
            _loc2_ = new Point();
            _window.getGlobalPosition(_loc2_);
            this.var_314.x = _loc2_.x + this.var_904.x + this.var_1429.x;
            this.var_314.y = _loc2_.y + this.var_904.y + this.var_1429.y;
         }
      }
      
      protected function hideToolTip() : void
      {
         if(this.var_314 != null && !this.var_314.disposed)
         {
            this.var_314.destroy();
            this.var_314 = null;
         }
      }
   }
}
