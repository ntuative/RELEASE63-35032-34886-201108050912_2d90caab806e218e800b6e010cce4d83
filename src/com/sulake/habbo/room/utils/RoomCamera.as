package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_1526:Number = 12;
       
      
      private var var_2489:int = -1;
      
      private var var_2482:int = -2;
      
      private var var_219:Vector3d = null;
      
      private var var_1219:Number = 0;
      
      private var var_1511:Number = 0;
      
      private var var_1828:Boolean = false;
      
      private var var_195:Vector3d = null;
      
      private var var_1827:Vector3d;
      
      private var var_2490:Boolean = false;
      
      private var var_2487:Boolean = false;
      
      private var var_2488:Boolean = false;
      
      private var var_2486:Boolean = false;
      
      private var var_2481:int = 0;
      
      private var var_2484:int = 0;
      
      private var _scale:int = 0;
      
      private var var_2485:int = 0;
      
      private var var_2483:int = 0;
      
      private var var_1747:int = -1;
      
      private var var_1826:int = 0;
      
      private var var_1825:Boolean = false;
      
      public function RoomCamera()
      {
         this.var_1827 = new Vector3d();
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_195;
      }
      
      public function get targetId() : int
      {
         return this.var_2489;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2482;
      }
      
      public function get targetObjectLoc() : IVector3d
      {
         return this.var_1827;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2490;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2487;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2488;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2486;
      }
      
      public function get screenWd() : int
      {
         return this.var_2481;
      }
      
      public function get screenHt() : int
      {
         return this.var_2484;
      }
      
      public function get scale() : int
      {
         return this._scale;
      }
      
      public function get roomWd() : int
      {
         return this.var_2485;
      }
      
      public function get roomHt() : int
      {
         return this.var_2483;
      }
      
      public function get geometryUpdateId() : int
      {
         return this.var_1747;
      }
      
      public function get isMoving() : Boolean
      {
         if(this.var_219 != null && this.var_195 != null)
         {
            return true;
         }
         return false;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2489 = param1;
      }
      
      public function set targetObjectLoc(param1:IVector3d) : void
      {
         this.var_1827.assign(param1);
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2482 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2490 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2487 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2488 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2486 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2481 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2484 = param1;
      }
      
      public function set scale(param1:int) : void
      {
         if(this._scale != param1)
         {
            this._scale = param1;
            this.var_1825 = true;
         }
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2485 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2483 = param1;
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         this.var_1747 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         var _loc2_:* = null;
         if(this.var_219 == null)
         {
            this.var_219 = new Vector3d();
         }
         if(this.var_219.x != param1.x || this.var_219.y != param1.y || this.var_219.z != param1.z)
         {
            this.var_219.assign(param1);
            this.var_1826 = 0;
            _loc2_ = Vector3d.dif(this.var_219,this.var_195);
            this.var_1219 = _loc2_.length;
            this.var_1828 = true;
         }
      }
      
      public function dispose() : void
      {
         this.var_219 = null;
         this.var_195 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_195 != null)
         {
            return;
         }
         this.var_195 = new Vector3d();
         this.var_195.assign(param1);
      }
      
      public function resetLocation(param1:IVector3d) : void
      {
         if(this.var_195 == null)
         {
            this.var_195 = new Vector3d();
         }
         this.var_195.assign(param1);
      }
      
      public function update(param1:uint, param2:Number) : void
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(this.var_219 != null && this.var_195 != null)
         {
            ++this.var_1826;
            if(this.var_1825)
            {
               this.var_1825 = false;
               this.var_195 = this.var_219;
               this.var_219 = null;
               return;
            }
            _loc3_ = Vector3d.dif(this.var_219,this.var_195);
            if(_loc3_.length > this.var_1219)
            {
               this.var_1219 = _loc3_.length;
            }
            if(_loc3_.length <= param2)
            {
               this.var_195 = this.var_219;
               this.var_219 = null;
               this.var_1511 = 0;
            }
            else
            {
               _loc4_ = Math.sin(0 * _loc3_.length / this.var_1219);
               _loc5_ = param2 * 0.5;
               _loc6_ = this.var_1219 / const_1526;
               _loc7_ = _loc5_ + (_loc6_ - _loc5_) * _loc4_;
               if(this.var_1828)
               {
                  if(_loc7_ < this.var_1511)
                  {
                     _loc7_ = this.var_1511;
                     if(_loc7_ > _loc3_.length)
                     {
                        _loc7_ = _loc3_.length;
                     }
                  }
                  else
                  {
                     this.var_1828 = false;
                  }
               }
               this.var_1511 = _loc7_;
               _loc3_.div(_loc3_.length);
               _loc3_.mul(_loc7_);
               this.var_195 = Vector3d.sum(this.var_195,_loc3_);
            }
         }
      }
      
      public function reset() : void
      {
         this.var_1747 = -1;
      }
   }
}
