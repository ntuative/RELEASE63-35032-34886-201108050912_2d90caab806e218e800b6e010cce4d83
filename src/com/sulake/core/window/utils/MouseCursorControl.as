package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.MouseCursorType;
   import flash.display.DisplayObject;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flash.utils.Dictionary;
   
   public class MouseCursorControl
   {
      
      private static var _type:uint = MouseCursorType.const_29;
      
      private static var var_156:Stage;
      
      private static var var_338:Boolean = true;
      
      private static var _disposed:Boolean = false;
      
      private static var var_859:Boolean = true;
      
      private static var var_133:DisplayObject;
      
      private static var var_1573:Dictionary = new Dictionary();
       
      
      public function MouseCursorControl(param1:DisplayObject)
      {
         super();
         var_156 = param1.stage;
      }
      
      public static function dispose() : void
      {
         if(!_disposed)
         {
            if(var_133)
            {
               var_156.removeChild(var_133);
               var_156.removeEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
               var_156.removeEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
               var_156.removeEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
               var_156.removeEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
            }
            _disposed = true;
         }
      }
      
      public static function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public static function get type() : uint
      {
         return _type;
      }
      
      public static function set type(param1:uint) : void
      {
         if(_type != param1)
         {
            _type = param1;
            var_859 = true;
         }
      }
      
      public static function get visible() : Boolean
      {
         return var_338;
      }
      
      public static function set visible(param1:Boolean) : void
      {
         var_338 = param1;
         if(var_338)
         {
            if(var_133)
            {
               var_133.visible = true;
            }
            else
            {
               Mouse.show();
            }
         }
         else if(var_133)
         {
            var_133.visible = false;
         }
         else
         {
            Mouse.hide();
         }
      }
      
      public static function change() : void
      {
         var _loc1_:* = null;
         if(var_859)
         {
            _loc1_ = var_1573[_type];
            if(_loc1_)
            {
               if(var_133)
               {
                  var_156.removeChild(var_133);
               }
               else
               {
                  var_156.addEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
                  var_156.addEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
                  var_156.addEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
                  var_156.addEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
                  Mouse.hide();
               }
               var_133 = _loc1_;
               var_156.addChild(var_133);
            }
            else
            {
               if(var_133)
               {
                  var_156.removeChild(var_133);
                  var_156.removeEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
                  var_156.removeEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
                  var_156.removeEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
                  var_156.removeEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
                  var_133 = null;
                  Mouse.show();
               }
               switch(_type)
               {
                  case MouseCursorType.const_29:
                  case MouseCursorType.ARROW:
                     Mouse.cursor = MouseCursor.ARROW;
                     break;
                  case MouseCursorType.const_330:
                     Mouse.cursor = MouseCursor.BUTTON;
                     break;
                  case MouseCursorType.const_821:
                  case MouseCursorType.const_297:
                  case MouseCursorType.const_1779:
                  case MouseCursorType.const_1916:
                     Mouse.cursor = MouseCursor.HAND;
                     break;
                  case MouseCursorType.NONE:
                     Mouse.cursor = MouseCursor.ARROW;
                     Mouse.hide();
               }
            }
            var_859 = false;
         }
      }
      
      public static function defineCustomCursorType(param1:uint, param2:DisplayObject) : void
      {
         var_1573[param1] = param2;
      }
      
      private static function onStageMouseMove(param1:MouseEvent) : void
      {
         if(var_133)
         {
            var_133.x = param1.stageX - 2;
            var_133.y = param1.stageY;
            if(_type == MouseCursorType.const_29)
            {
               var_338 = false;
               Mouse.show();
            }
            else
            {
               var_338 = true;
               Mouse.hide();
            }
         }
      }
      
      private static function onStageMouseLeave(param1:Event) : void
      {
         if(var_133 && _type != MouseCursorType.const_29)
         {
            Mouse.hide();
            var_338 = false;
         }
      }
   }
}
