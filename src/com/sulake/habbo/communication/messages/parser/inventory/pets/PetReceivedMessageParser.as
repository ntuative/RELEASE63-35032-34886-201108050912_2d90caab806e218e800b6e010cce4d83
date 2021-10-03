package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_1779:Boolean;
      
      private var var_980:PetData;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1779 = param1.readBoolean();
         this.var_980 = new PetData(param1);
         Logger.log("Got PetReceived: " + this.var_1779 + ", " + this.var_980.id + ", " + this.var_980.name + ", " + this.var_980.type + ", " + this.var_980.breed + ", " + this.pet.color);
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return this.var_1779;
      }
      
      public function get pet() : PetData
      {
         return this.var_980;
      }
   }
}
