package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_2172:int = 1;
      
      public static const RESPONSE_TYPE_PURCHASE:int = 2;
      
      public static const const_1360:int = 3;
       
      
      private var var_1003:String;
      
      private var var_2363:int;
      
      private var var_2361:int;
      
      private var var_2365:int;
      
      private var var_2368:int;
      
      private var var_2364:Boolean;
      
      private var var_2369:Boolean;
      
      private var var_2370:int;
      
      private var var_2367:int;
      
      private var var_2360:Boolean;
      
      private var var_2366:int;
      
      private var var_2362:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1003 = param1.readString();
         this.var_2363 = param1.readInteger();
         this.var_2361 = param1.readInteger();
         this.var_2365 = param1.readInteger();
         this.var_2368 = param1.readInteger();
         this.var_2364 = param1.readBoolean();
         this.var_2369 = param1.readBoolean();
         this.var_2370 = param1.readInteger();
         this.var_2367 = param1.readInteger();
         this.var_2360 = param1.readBoolean();
         this.var_2366 = param1.readInteger();
         this.var_2362 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_1003;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2363;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2361;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2365;
      }
      
      public function get responseType() : int
      {
         return this.var_2368;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2364;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2369;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2370;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2367;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2360;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2366;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2362;
      }
   }
}
