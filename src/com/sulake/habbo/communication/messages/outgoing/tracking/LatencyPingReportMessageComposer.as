package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2394:int;
      
      private var var_2392:int;
      
      private var var_2393:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2394 = param1;
         this.var_2392 = param2;
         this.var_2393 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2394,this.var_2392,this.var_2393];
      }
      
      public function dispose() : void
      {
      }
   }
}
