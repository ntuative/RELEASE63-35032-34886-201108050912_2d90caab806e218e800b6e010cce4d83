package com.sulake.habbo.room.utils
{
   import com.sulake.core.utils.Map;
   
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_874:TileHeightMap = null;
      
      private var var_1330:LegacyWallGeometry = null;
      
      private var var_1329:RoomCamera = null;
      
      private var var_875:SelectedRoomObjectData = null;
      
      private var var_876:SelectedRoomObjectData = null;
      
      private var _worldType:String = null;
      
      private var var_577:Map;
      
      private var var_578:Map;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         this.var_577 = new Map();
         this.var_578 = new Map();
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_1330 = new LegacyWallGeometry();
         this.var_1329 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_874;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_874 != null)
         {
            this.var_874.dispose();
         }
         this.var_874 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_1330;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_1329;
      }
      
      public function get worldType() : String
      {
         return this._worldType;
      }
      
      public function set worldType(param1:String) : void
      {
         this._worldType = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_875;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_875 != null)
         {
            this.var_875.dispose();
         }
         this.var_875 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_876;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_876 != null)
         {
            this.var_876.dispose();
         }
         this.var_876 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_874 != null)
         {
            this.var_874.dispose();
            this.var_874 = null;
         }
         if(this.var_1330 != null)
         {
            this.var_1330.dispose();
            this.var_1330 = null;
         }
         if(this.var_1329 != null)
         {
            this.var_1329.dispose();
            this.var_1329 = null;
         }
         if(this.var_875 != null)
         {
            this.var_875.dispose();
            this.var_875 = null;
         }
         if(this.var_876 != null)
         {
            this.var_876.dispose();
            this.var_876 = null;
         }
         if(this.var_577 != null)
         {
            this.var_577.dispose();
            this.var_577 = null;
         }
         if(this.var_578 != null)
         {
            this.var_578.dispose();
            this.var_578 = null;
         }
      }
      
      public function addFurnitureData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_577.remove(param1.id);
            this.var_577.add(param1.id,param1);
         }
      }
      
      public function getFurnitureData() : FurnitureData
      {
         if(this.var_577.length > 0)
         {
            return this.getFurnitureDataWithId(this.var_577.getKey(0));
         }
         return null;
      }
      
      public function getFurnitureDataWithId(param1:int) : FurnitureData
      {
         return this.var_577.remove(param1);
      }
      
      public function addWallItemData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_578.remove(param1.id);
            this.var_578.add(param1.id,param1);
         }
      }
      
      public function getWallItemData() : FurnitureData
      {
         if(this.var_578.length > 0)
         {
            return this.getWallItemDataWithId(this.var_578.getKey(0));
         }
         return null;
      }
      
      public function getWallItemDataWithId(param1:int) : FurnitureData
      {
         return this.var_578.remove(param1);
      }
   }
}
