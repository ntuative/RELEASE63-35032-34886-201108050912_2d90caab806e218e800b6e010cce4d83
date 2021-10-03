package com.sulake.habbo.communication.messages.parser.sound
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NowPlayingMessageParser implements IMessageParser
   {
       
      
      private var var_2030:int;
      
      private var _currentPosition:int;
      
      private var var_2032:int;
      
      private var var_2031:int;
      
      private var var_2029:int;
      
      public function NowPlayingMessageParser()
      {
         super();
      }
      
      public function get currentSongId() : int
      {
         return this.var_2030;
      }
      
      public function get currentPosition() : int
      {
         return this._currentPosition;
      }
      
      public function get nextSongId() : int
      {
         return this.var_2032;
      }
      
      public function get nextPosition() : int
      {
         return this.var_2031;
      }
      
      public function get syncCount() : int
      {
         return this.var_2029;
      }
      
      public function flush() : Boolean
      {
         this.var_2030 = -1;
         this._currentPosition = -1;
         this.var_2032 = -1;
         this.var_2031 = -1;
         this.var_2029 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2030 = param1.readInteger();
         this._currentPosition = param1.readInteger();
         this.var_2032 = param1.readInteger();
         this.var_2031 = param1.readInteger();
         this.var_2029 = param1.readInteger();
         return true;
      }
   }
}
