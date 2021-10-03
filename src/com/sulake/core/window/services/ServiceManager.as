package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_3115:uint;
      
      private var _root:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_709:IWindowContext;
      
      private var var_1348:IMouseDraggingService;
      
      private var var_1347:IMouseScalingService;
      
      private var var_1345:IMouseListenerService;
      
      private var var_1346:IFocusManagerService;
      
      private var var_1344:IToolTipAgentService;
      
      private var var_1343:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_3115 = 0;
         this._root = param2;
         this.var_709 = param1;
         this.var_1348 = new WindowMouseDragger(param2);
         this.var_1347 = new WindowMouseScaler(param2);
         this.var_1345 = new WindowMouseListener(param2);
         this.var_1346 = new FocusManager(param2);
         this.var_1344 = new WindowToolTipAgent(param2);
         this.var_1343 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1348 != null)
         {
            this.var_1348.dispose();
            this.var_1348 = null;
         }
         if(this.var_1347 != null)
         {
            this.var_1347.dispose();
            this.var_1347 = null;
         }
         if(this.var_1345 != null)
         {
            this.var_1345.dispose();
            this.var_1345 = null;
         }
         if(this.var_1346 != null)
         {
            this.var_1346.dispose();
            this.var_1346 = null;
         }
         if(this.var_1344 != null)
         {
            this.var_1344.dispose();
            this.var_1344 = null;
         }
         if(this.var_1343 != null)
         {
            this.var_1343.dispose();
            this.var_1343 = null;
         }
         this._root = null;
         this.var_709 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1348;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1347;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1345;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1346;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1344;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1343;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
