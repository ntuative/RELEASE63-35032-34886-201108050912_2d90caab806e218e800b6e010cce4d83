package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_3015:Boolean;
      
      private var var_3016:int;
      
      private var var_1920:Array;
      
      private var var_851:Array;
      
      private var var_850:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_3015;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_3016;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1920;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_851;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_850;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1920 = [];
         this.var_851 = [];
         this.var_850 = [];
         this.var_3015 = param1.readBoolean();
         this.var_3016 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1920.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_851.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_850.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
