package com.sulake.core
{
   import com.sulake.core.runtime.CoreComponentContext;
   import com.sulake.core.runtime.ICore;
   import flash.display.DisplayObjectContainer;
   
   public final class Core
   {
      
      public static const const_1285:uint = 0;
      
      public static const const_1027:uint = 1;
      
      public static const const_860:uint = 2;
      
      public static const const_669:uint = 4;
      
      public static const const_618:uint = 15;
      
      public static const CORE_SETUP_DEBUG:uint = 15;
      
      public static const const_238:int = 1;
      
      public static const const_1263:int = 2;
      
      public static const const_1882:int = 3;
      
      public static const const_773:int = 4;
      
      public static const const_2066:int = 5;
      
      public static const const_1939:int = 6;
      
      public static const const_1950:int = 7;
      
      public static const const_1776:int = 8;
      
      public static const const_10:int = 9;
      
      public static const const_1238:int = 10;
      
      public static const const_23:int = 11;
      
      public static const const_1393:int = 20;
      
      public static const const_2232:int = 21;
      
      public static const const_2019:int = 29;
      
      public static const const_455:int = 30;
      
      public static const const_1355:int = 99;
      
      private static var _instance:ICore;
       
      
      public function Core()
      {
         super();
      }
      
      public static function get version() : String
      {
         return "0.0.3";
      }
      
      public static function get instance() : ICore
      {
         return _instance;
      }
      
      public static function instantiate(param1:DisplayObjectContainer, param2:uint) : ICore
      {
         if(_instance == null)
         {
            _instance = new CoreComponentContext(param1,param2);
         }
         return _instance;
      }
      
      public static function error(param1:String, param2:Boolean, param3:int = -1, param4:Error = null) : void
      {
         if(_instance)
         {
            _instance.error(param1,param2,param3,param4);
         }
      }
      
      public static function warning(param1:String) : void
      {
         if(_instance)
         {
            _instance.warning(param1);
         }
      }
      
      public static function debug(param1:String) : void
      {
         if(_instance)
         {
            _instance.debug(param1);
         }
      }
      
      public static function crash(param1:String, param2:int, param3:Error = null) : void
      {
         if(_instance)
         {
            _instance.error(param1,true,param2,param3);
         }
      }
      
      public static function dispose() : void
      {
         if(_instance != null)
         {
            _instance.dispose();
            _instance = null;
         }
      }
   }
}
