package chapter_eight.adapter.adapters
{
   import chapter_eight.adapter.adapters.abstractions.AMinimalStopPlayToPauseResume;

   import flash.display.MovieClip;

   /**
    * @author Ben Smith
    */
   public class MChasStartStop extends AMinimalStopPlayToPauseResume
   {
      public function MChasStartStop( mc : MovieClip )
      {
         super( mc );
      }
   }
}
