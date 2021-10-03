package com.sulake.core.utils.profiler.tracking
{
   import flash.display.BitmapData;
   
   public class TrackedBitmapData extends BitmapData
   {
      
      public static const const_2259:int = 16777215;
      
      public static const const_1212:int = 8191;
      
      public static const const_1241:int = 8191;
      
      public static const const_2286:int = 1;
      
      public static const const_1269:int = 1;
      
      public static const const_1288:int = 1;
      
      private static var var_583:uint = 0;
      
      private static var var_584:uint = 0;
       
      
      private var _owner:Object;
      
      private var _disposed:Boolean = false;
      
      public function TrackedBitmapData(param1:*, param2:int, param3:int, param4:Boolean = true, param5:uint = 4.294967295E9)
      {
         if(param2 > const_1212)
         {
            param2 = const_1212;
         }
         else if(param2 < const_1269)
         {
            param2 = const_1269;
         }
         if(param3 > const_1241)
         {
            param3 = const_1241;
         }
         else if(param3 < const_1288)
         {
            param3 = const_1288;
         }
         super(param2,param3,param4,param5);
         ++var_583;
         var_584 += param2 * param3 * 4;
         this._owner = param1;
      }
      
      public static function get numInstances() : uint
      {
         return var_583;
      }
      
      public static function get allocatedByteCount() : uint
      {
         return var_584;
      }
      
      override public function dispose() : void
      {
         if(!this._disposed)
         {
            var_584 -= width * height * 4;
            --var_583;
            this._disposed = true;
            this._owner = null;
            super.dispose();
         }
      }
   }
}
