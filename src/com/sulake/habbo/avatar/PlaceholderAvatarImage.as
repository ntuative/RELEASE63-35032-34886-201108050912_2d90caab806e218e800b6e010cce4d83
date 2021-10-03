package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_870:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_1164)
         {
            _structure = null;
            _assets = null;
            var_297 = null;
            var_315 = null;
            var_631 = null;
            var_620 = null;
            var_363 = null;
            if(!var_1439 && var_48)
            {
               var_48.dispose();
            }
            var_48 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_873 = null;
            var_1164 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_870[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_870[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_438:
               switch(_loc3_)
               {
                  case AvatarAction.const_859:
                  case AvatarAction.const_538:
                  case AvatarAction.const_457:
                  case AvatarAction.const_919:
                  case AvatarAction.const_416:
                  case AvatarAction.const_766:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_358:
            case AvatarAction.const_170:
            case AvatarAction.const_257:
            case AvatarAction.const_967:
            case AvatarAction.const_940:
            case AvatarAction.const_901:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
