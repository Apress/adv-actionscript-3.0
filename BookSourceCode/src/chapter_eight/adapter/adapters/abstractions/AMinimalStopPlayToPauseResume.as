package chapter_eight.adapter.adapters.abstractions
{
   import chapter_eight.adapter.IPause;

   /**
    * @author Ben Smith
    */
   public class AMinimalStopPlayToPauseResume extends Object implements IPause
   {
      protected var _stopStart : *

      public function AMinimalStopPlayToPauseResume( startStop : * )
      {
         _stopStart = startStop
      }

      public function pause() : void
      {
         trace( 'mc stop' );
         trace( _stopStart )
         _stopStart.stop()
      }

      public function resume() : void
      {
         trace( 'mc play' );
         trace( _stopStart )
         _stopStart.play()
      }
   }
}
