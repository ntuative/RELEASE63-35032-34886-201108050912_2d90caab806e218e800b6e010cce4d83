package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2325:int = 0;
      
      private var var_1596:String = "";
      
      private var var_2017:String = "";
      
      private var var_2324:String = "";
      
      private var var_2327:String = "";
      
      private var var_1748:int = 0;
      
      private var var_2323:int = 0;
      
      private var var_2328:int = 0;
      
      private var var_1597:int = 0;
      
      private var var_2326:int = 0;
      
      private var var_1594:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2325 = param1;
         this.var_1596 = param2;
         this.var_2017 = param3;
         this.var_2324 = param4;
         this.var_2327 = param5;
         if(param6)
         {
            this.var_1748 = 1;
         }
         else
         {
            this.var_1748 = 0;
         }
         this.var_2323 = param7;
         this.var_2328 = param8;
         this.var_1597 = param9;
         this.var_2326 = param10;
         this.var_1594 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2325,this.var_1596,this.var_2017,this.var_2324,this.var_2327,this.var_1748,this.var_2323,this.var_2328,this.var_1597,this.var_2326,this.var_1594];
      }
   }
}
