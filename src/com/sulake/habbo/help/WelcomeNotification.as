package com.sulake.habbo.help
{
   public class WelcomeNotification
   {
       
      
      private var var_2940:String;
      
      private var var_336:String;
      
      public function WelcomeNotification(param1:String, param2:String)
      {
         super();
         this.var_2940 = param1;
         this.var_336 = param2;
      }
      
      public function get targetIconId() : String
      {
         return this.var_2940;
      }
      
      public function get localizationKey() : String
      {
         return this.var_336;
      }
   }
}
