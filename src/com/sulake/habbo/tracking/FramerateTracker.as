package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_2020:int;
      
      private var var_2779:int;
      
      private var var_838:int;
      
      private var var_574:Number;
      
      private var var_2781:Boolean;
      
      private var var_2780:int;
      
      private var var_2038:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function get frameRate() : int
      {
         return Math.round(1000 / this.var_574);
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2779 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2780 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2781 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         ++this.var_838;
         if(this.var_838 == 1)
         {
            this.var_574 = param1;
            this.var_2020 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_838);
            this.var_574 = this.var_574 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2781 && param3 - this.var_2020 >= this.var_2779)
         {
            this.var_838 = 0;
            if(this.var_2038 < this.var_2780)
            {
               param2.trackGoogle("performance","averageFramerate",this.frameRate);
               ++this.var_2038;
               this.var_2020 = param3;
            }
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
