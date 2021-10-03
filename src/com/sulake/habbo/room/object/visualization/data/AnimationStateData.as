package com.sulake.habbo.room.object.visualization.data
{
   public class AnimationStateData
   {
       
      
      private var var_1761:int = -1;
      
      private var var_2350:int = 0;
      
      private var var_1588:Boolean = false;
      
      private var var_700:int = 0;
      
      private var _frames:Array;
      
      private var var_975:Array;
      
      private var var_976:Array;
      
      private var var_632:int = 0;
      
      public function AnimationStateData()
      {
         this._frames = [];
         this.var_975 = [];
         this.var_976 = [];
         super();
      }
      
      public function get animationOver() : Boolean
      {
         return this.var_1588;
      }
      
      public function set animationOver(param1:Boolean) : void
      {
         this.var_1588 = param1;
      }
      
      public function get frameCounter() : int
      {
         return this.var_700;
      }
      
      public function set frameCounter(param1:int) : void
      {
         this.var_700 = param1;
      }
      
      public function get animationId() : int
      {
         return this.var_1761;
      }
      
      public function set animationId(param1:int) : void
      {
         if(param1 != this.var_1761)
         {
            this.var_1761 = param1;
            this.resetAnimationFrames(false);
         }
      }
      
      public function get animationAfterTransitionId() : int
      {
         return this.var_2350;
      }
      
      public function set animationAfterTransitionId(param1:int) : void
      {
         this.var_2350 = param1;
      }
      
      public function dispose() : void
      {
         this.recycleFrames();
         this._frames = null;
         this.var_975 = null;
         this.var_976 = null;
      }
      
      public function setLayerCount(param1:int) : void
      {
         this.var_632 = param1;
         this.resetAnimationFrames();
      }
      
      public function resetAnimationFrames(param1:Boolean = true) : void
      {
         var _loc3_:* = null;
         if(param1 || this._frames == null)
         {
            this.recycleFrames();
            this._frames = [];
         }
         this.var_975 = [];
         this.var_976 = [];
         this.var_1588 = false;
         this.var_700 = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.var_632)
         {
            if(param1 || this._frames.length <= _loc2_)
            {
               this._frames[_loc2_] = null;
            }
            else
            {
               _loc3_ = this._frames[_loc2_];
               if(_loc3_ != null)
               {
                  _loc3_.recycle();
                  this._frames[_loc2_] = AnimationFrame.allocate(_loc3_.id,_loc3_.x,_loc3_.y,_loc3_.repeats,0,_loc3_.isLastFrame);
               }
            }
            this.var_975[_loc2_] = false;
            this.var_976[_loc2_] = false;
            _loc2_++;
         }
      }
      
      private function recycleFrames() : void
      {
         var _loc1_:* = null;
         if(this._frames != null)
         {
            for each(_loc1_ in this._frames)
            {
               if(_loc1_ != null)
               {
                  _loc1_.recycle();
               }
            }
         }
      }
      
      public function getFrame(param1:int) : AnimationFrame
      {
         if(param1 >= 0 && param1 < this.var_632)
         {
            return this._frames[param1];
         }
         return null;
      }
      
      public function setFrame(param1:int, param2:AnimationFrame) : void
      {
         var _loc3_:* = null;
         if(param1 >= 0 && param1 < this.var_632)
         {
            _loc3_ = this._frames[param1];
            if(_loc3_ != null)
            {
               _loc3_.recycle();
            }
            this._frames[param1] = param2;
         }
      }
      
      public function getAnimationPlayed(param1:int) : Boolean
      {
         if(param1 >= 0 && param1 < this.var_632)
         {
            return this.var_976[param1];
         }
         return true;
      }
      
      public function setAnimationPlayed(param1:int, param2:Boolean) : void
      {
         if(param1 >= 0 && param1 < this.var_632)
         {
            this.var_976[param1] = param2;
         }
      }
      
      public function getLastFramePlayed(param1:int) : Boolean
      {
         if(param1 >= 0 && param1 < this.var_632)
         {
            return this.var_975[param1];
         }
         return true;
      }
      
      public function setLastFramePlayed(param1:int, param2:Boolean) : void
      {
         if(param1 >= 0 && param1 < this.var_632)
         {
            this.var_975[param1] = param2;
         }
      }
   }
}
