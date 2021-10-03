package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2408:int;
      
      private var var_2171:String;
      
      private var var_2879:String;
      
      private var var_2878:Boolean;
      
      private var var_2876:Boolean;
      
      private var var_2881:int;
      
      private var var_2880:String;
      
      private var var_2877:String;
      
      private var var_1909:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2408 = param1.readInteger();
         this.var_2171 = param1.readString();
         this.var_2879 = param1.readString();
         this.var_2878 = param1.readBoolean();
         this.var_2876 = param1.readBoolean();
         param1.readString();
         this.var_2881 = param1.readInteger();
         this.var_2880 = param1.readString();
         this.var_2877 = param1.readString();
         this.var_1909 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2408;
      }
      
      public function get avatarName() : String
      {
         return this.var_2171;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2879;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2878;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2876;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2881;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2880;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2877;
      }
      
      public function get realName() : String
      {
         return this.var_1909;
      }
   }
}
