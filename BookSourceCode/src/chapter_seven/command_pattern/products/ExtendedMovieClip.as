package chapter_seven.command_pattern.products
{
   import chapter_seven.command_pattern.interfaces.IPause;

   import flash.display.MovieClip;

   /**
    * @author Ben Smith
    */
   public class ExtendedMovieClip extends MovieClip implements IPause
   {
    
      final public function pause() : void
      {
         this.stop();
      }

      final public function resume() : void
      {
         this.play();
      }
   }
}