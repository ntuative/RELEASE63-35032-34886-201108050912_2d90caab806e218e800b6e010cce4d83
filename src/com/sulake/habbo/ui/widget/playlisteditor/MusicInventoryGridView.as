package com.sulake.habbo.ui.widget.playlisteditor
{
   import com.sulake.core.utils.Map;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IItemGridWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.sound.IHabboMusicController;
   import com.sulake.habbo.sound.ISongInfo;
   import com.sulake.habbo.sound.events.SongInfoReceivedEvent;
   import flash.geom.ColorTransform;
   
   public class MusicInventoryGridView
   {
       
      
      private var var_240:IHabboMusicController;
      
      private var var_671:IItemGridWindow;
      
      private var _items:Map;
      
      private var _widget:PlayListEditorWidget;
      
      private var var_112:MusicInventoryGridItem;
      
      public function MusicInventoryGridView(param1:PlayListEditorWidget, param2:IItemGridWindow, param3:IHabboMusicController)
      {
         this._items = new Map();
         super();
         this.var_240 = param3;
         this.var_671 = param2;
         this._widget = param1;
         this.var_112 = null;
         this.var_240.events.addEventListener(SongInfoReceivedEvent.const_97,this.onSongInfoReceivedEvent);
      }
      
      public function get itemCount() : int
      {
         return this._items.length;
      }
      
      public function destroy() : void
      {
         if(this.var_671 != null)
         {
            this.var_671.destroyGridItems();
            this.var_671 = null;
         }
         if(this.var_240 != null)
         {
            if(this.var_240.events != null)
            {
               this.var_240.events.removeEventListener(SongInfoReceivedEvent.const_97,this.onSongInfoReceivedEvent);
            }
            this.var_240 = null;
         }
         if(this._items)
         {
            this._items.reset();
            this._items = null;
         }
         this.var_112 = null;
         this._widget = null;
      }
      
      public function refresh() : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:* = null;
         if(this.var_671 == null)
         {
            return;
         }
         this.var_671.removeGridItems();
         var _loc1_:Map = this._items;
         var _loc2_:Map = new Map();
         var _loc3_:Array = _loc1_.getKeys();
         this._items = new Map();
         var _loc4_:int = this.var_240.getSongDiskInventorySize();
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = this.var_240.getSongDiskInventoryDiskId(_loc5_);
            _loc8_ = this.var_240.getSongDiskInventorySongId(_loc5_);
            _loc9_ = this.var_240.getSongInfo(_loc8_);
            _loc10_ = null;
            _loc11_ = null;
            if(_loc9_ != null)
            {
               _loc10_ = _loc9_.name;
               _loc11_ = this._widget.getDiskColorTransformFromSongData(_loc9_.songData);
            }
            if(_loc3_.indexOf(_loc7_) == -1)
            {
               _loc12_ = new MusicInventoryGridItem(this._widget,_loc7_,_loc8_,_loc10_,_loc11_);
            }
            else
            {
               _loc12_ = _loc1_[_loc7_];
               _loc3_.splice(_loc3_.indexOf(_loc7_),1);
            }
            _loc12_.window.procedure = this.gridItemEventProc;
            _loc12_.toPlayListButton.procedure = this.gridItemEventProc;
            this.var_671.addGridItem(_loc12_.window);
            this._items.add(_loc7_,_loc12_);
            _loc5_++;
         }
         for each(_loc6_ in _loc3_)
         {
            _loc13_ = _loc1_[_loc6_];
            _loc13_.destroy();
            _loc1_.remove(_loc6_);
         }
      }
      
      public function setPreviewIconToPause() : void
      {
         if(this.var_112 != null)
         {
            this.var_112.playButtonState = MusicInventoryGridItem.const_1388;
         }
      }
      
      public function setPreviewIconToPlay() : void
      {
         if(this.var_112 != null)
         {
            this.var_112.playButtonState = MusicInventoryGridItem.const_667;
         }
      }
      
      public function deselectAny() : void
      {
         if(this.var_112 != null)
         {
            this.var_112.deselect();
            this.var_112 = null;
         }
      }
      
      private function gridItemEventProc(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc3_:* = param1.type == WindowMouseEvent.const_157;
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK || _loc3_)
         {
            if(param2.name == "button_to_playlist" || _loc3_)
            {
               if(this.var_112 != null)
               {
                  this.var_112.deselect();
                  this.stopPreview();
                  this._widget.sendAddToPlayListMessage(this.var_112.diskId);
                  this.var_112 = null;
               }
            }
            else if(param2.name == "button_play_pause")
            {
               if(this.var_112.playButtonState == MusicInventoryGridItem.const_667)
               {
                  this.var_112.playButtonState = MusicInventoryGridItem.const_1363;
                  this._widget.playUserSong(this.var_112.songId);
               }
               else
               {
                  this.stopPreview();
               }
            }
            else
            {
               _loc4_ = this.var_671.getGridItemIndex(param1.window);
               if(_loc4_ != -1)
               {
                  _loc5_ = this._items.getWithIndex(_loc4_);
                  if(_loc5_ != this.var_112)
                  {
                     if(this.var_112 != null)
                     {
                        this.var_112.deselect();
                     }
                     this.var_112 = _loc5_;
                     this.var_112.select();
                     this.stopPreview();
                  }
                  if(this._widget.mainWindowHandler != null)
                  {
                     this._widget.mainWindowHandler.playListEditorView.deselectAny();
                  }
               }
            }
         }
      }
      
      private function stopPreview() : void
      {
         this._widget.stopUserSong();
         this.setPreviewIconToPlay();
      }
      
      private function onSongInfoReceivedEvent(param1:SongInfoReceivedEvent) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         if(this.var_240 != null)
         {
            _loc2_ = this.var_240.getSongInfo(param1.id);
            if(_loc2_ != null)
            {
               _loc3_ = _loc2_.name;
               _loc4_ = this._widget.getDiskColorTransformFromSongData(_loc2_.songData);
               _loc5_ = this._items[param1.id];
               if(_loc5_ != null)
               {
                  _loc5_.update(param1.id,_loc3_,_loc4_);
               }
            }
         }
      }
   }
}
