package com.sulake.habbo.communication.encryption
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.communication.handshake.IKeyExchange;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_974:BigInteger;
      
      private var var_2838:BigInteger;
      
      private var var_2082:BigInteger;
      
      private var var_2845:BigInteger;
      
      private var var_1630:BigInteger;
      
      private var var_2083:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1630 = param1;
         this.var_2083 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1630.toString() + ",generator: " + this.var_2083.toString() + ",secret: " + param1);
         this.var_974 = new BigInteger();
         this.var_974.fromRadix(param1,param2);
         this.var_2838 = this.var_2083.modPow(this.var_974,this.var_1630);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_2082 = new BigInteger();
         this.var_2082.fromRadix(param1,param2);
         this.var_2845 = this.var_2082.modPow(this.var_974,this.var_1630);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2838.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2845.toRadix(param1);
      }
   }
}
