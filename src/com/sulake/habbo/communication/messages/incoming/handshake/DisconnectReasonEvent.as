package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_2334:int = 0;
      
      public static const const_1812:int = 1;
      
      public static const const_1864:int = 2;
      
      public static const const_2340:int = 3;
      
      public static const const_2182:int = 4;
      
      public static const const_2213:int = 5;
      
      public static const const_1875:int = 10;
      
      public static const const_2250:int = 11;
      
      public static const const_2147:int = 12;
      
      public static const const_2337:int = 13;
      
      public static const const_2177:int = 16;
      
      public static const const_2317:int = 17;
      
      public static const const_2316:int = 18;
      
      public static const const_2321:int = 19;
      
      public static const const_2146:int = 20;
      
      public static const const_2235:int = 22;
      
      public static const const_2351:int = 23;
      
      public static const const_2346:int = 24;
      
      public static const const_2269:int = 25;
      
      public static const const_2318:int = 26;
      
      public static const const_2294:int = 27;
      
      public static const const_2254:int = 28;
      
      public static const const_2264:int = 29;
      
      public static const const_2188:int = 100;
      
      public static const const_2231:int = 101;
      
      public static const const_2207:int = 102;
      
      public static const const_2226:int = 103;
      
      public static const const_2299:int = 104;
      
      public static const const_2353:int = 105;
      
      public static const const_2179:int = 106;
      
      public static const const_2190:int = 107;
      
      public static const const_2288:int = 108;
      
      public static const const_2349:int = 109;
      
      public static const const_2322:int = 110;
      
      public static const const_2225:int = 111;
      
      public static const const_2170:int = 112;
      
      public static const const_2221:int = 113;
      
      public static const const_2203:int = 114;
      
      public static const const_2302:int = 115;
      
      public static const const_2255:int = 116;
      
      public static const const_2237:int = 117;
      
      public static const const_2149:int = 118;
      
      public static const const_2245:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_9 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1812:
            case const_1875:
               return "banned";
            case const_1864:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
