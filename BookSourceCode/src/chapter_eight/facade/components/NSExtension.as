package chapter_eight.facade.components
{
   import flash.events.NetStatusEvent;
   import flash.net.NetConnection;
   import flash.net.NetStream;

   /**
    * @author Ben Smith
    */
   public class NSExtension extends NetStream
   {
      public function NSExtension( connection : NetConnection , peerID : String = "connectToFMS" )
      {
         trace( connection )
         super( connection , peerID );
         addEventListener( NetStatusEvent.NET_STATUS , doHandleNetStatus );
         client = this
      }

      protected function doHandleNetStatus( event : NetStatusEvent ) : void
      {
         trace( event.info.code )
      }

      final public function onMetaData( evt : Object ) : void
      {
         for (var obj:* in evt)
         {
            trace( obj , evt[obj] )
         }
      }

      final public function onXMPData( obj : Object ) : void
      {
         for (var e:* in obj)
         {
            trace( e , obj[obj] )
         }
      }
   }
}
