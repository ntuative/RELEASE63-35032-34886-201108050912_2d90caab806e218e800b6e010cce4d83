package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class OpenPetPackageMessageComposer implements IMessageComposer
   {
       
      
      private var var_237:int;
      
      private var var_2373:String;
      
      public function OpenPetPackageMessageComposer(param1:int, param2:String)
      {
         super();
         this.var_237 = param1;
         this.var_2373 = param2;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_237,this.var_2373];
      }
      
      public function dispose() : void
      {
      }
   }
}
