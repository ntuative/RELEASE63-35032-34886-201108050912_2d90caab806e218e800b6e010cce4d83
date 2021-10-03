package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_2033:IID;
      
      private var var_1164:Boolean;
      
      private var var_1324:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_2033 = param1;
         this.var_1324 = new Array();
         this.var_1164 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_2033;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1164;
      }
      
      public function get receivers() : Array
      {
         return this.var_1324;
      }
      
      public function dispose() : void
      {
         if(!this.var_1164)
         {
            this.var_1164 = true;
            this.var_2033 = null;
            while(this.var_1324.length > 0)
            {
               this.var_1324.pop();
            }
            this.var_1324 = null;
         }
      }
   }
}
