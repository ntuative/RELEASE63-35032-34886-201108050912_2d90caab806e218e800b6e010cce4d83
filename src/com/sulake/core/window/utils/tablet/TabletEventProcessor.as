package com.sulake.core.window.utils.tablet
{
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.MouseEventProcessor;
   
   public class TabletEventProcessor extends MouseEventProcessor
   {
       
      
      private var var_3148:String = "";
      
      public function TabletEventProcessor()
      {
         super();
      }
      
      override public function process(param1:EventProcessorState, param2:IEventQueue) : void
      {
         if(param2.length == 0)
         {
            return;
         }
         var_95 = param1.desktop;
         var_71 = param1.var_1426 as WindowController;
         var_145 = param1.var_1427 as WindowController;
         var_184 = param1.renderer;
         var_952 = param1.var_1428;
         param2.begin();
         param2.end();
         param1.desktop = var_95;
         param1.var_1426 = var_71;
         param1.var_1427 = var_145;
         param1.renderer = var_184;
         param1.var_1428 = var_952;
      }
   }
}
