package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_187;
         param1["bound_to_parent_rect"] = const_106;
         param1["child_window"] = const_1274;
         param1["embedded_controller"] = const_1414;
         param1["expand_to_accommodate_children"] = WINDOW_PARAM_EXPAND_TO_ACCOMMODATE_CHILDREN;
         param1["input_event_processor"] = const_30;
         param1["internal_event_handling"] = const_744;
         param1["mouse_dragging_target"] = const_256;
         param1["mouse_dragging_trigger"] = const_399;
         param1["mouse_scaling_target"] = const_373;
         param1["mouse_scaling_trigger"] = const_581;
         param1["horizontal_mouse_scaling_trigger"] = const_266;
         param1["vertical_mouse_scaling_trigger"] = const_312;
         param1["observe_parent_input_events"] = const_1296;
         param1["parent_window"] = const_1229;
         param1["resize_to_accommodate_children"] = const_195;
         param1["relative_horizontal_scale_center"] = const_230;
         param1["relative_horizontal_scale_fixed"] = const_146;
         param1["relative_horizontal_scale_move"] = const_336;
         param1["relative_horizontal_scale_strech"] = const_401;
         param1["relative_scale_center"] = const_1379;
         param1["relative_scale_fixed"] = const_915;
         param1["relative_scale_move"] = const_1215;
         param1["relative_scale_strech"] = const_1341;
         param1["relative_vertical_scale_center"] = const_205;
         param1["relative_vertical_scale_fixed"] = const_171;
         param1["relative_vertical_scale_move"] = const_314;
         param1["relative_vertical_scale_strech"] = const_251;
         param1["on_resize_align_left"] = const_869;
         param1["on_resize_align_right"] = const_624;
         param1["on_resize_align_center"] = const_593;
         param1["on_resize_align_top"] = const_741;
         param1["on_resize_align_bottom"] = const_641;
         param1["on_resize_align_middle"] = const_535;
         param1["on_accommodate_align_left"] = const_1292;
         param1["on_accommodate_align_right"] = const_553;
         param1["on_accommodate_align_center"] = const_989;
         param1["on_accommodate_align_top"] = const_1298;
         param1["on_accommodate_align_bottom"] = const_558;
         param1["on_accommodate_align_middle"] = const_747;
         param1["route_input_events_to_parent"] = const_604;
         param1["use_parent_graphic_context"] = const_32;
         param1["draggable_with_mouse"] = const_1280;
         param1["scalable_with_mouse"] = const_1224;
         param1["reflect_horizontal_resize_to_parent"] = const_555;
         param1["reflect_vertical_resize_to_parent"] = const_607;
         param1["reflect_resize_to_parent"] = const_345;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1276;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
