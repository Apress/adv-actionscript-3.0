package chapter_seven.command_pattern.products
{
   import chapter_seven.command_pattern.interfaces.IPause;

   import flash.display.Sprite;

   /**
    * @author Ben Smith
    */
   public class ExtendedMovieClipAndSound extends Sprite implements IPause
   {
      private var _mc : ExtendedMovieClip;
      private var _snd : ExtendedSound;

      final public function pause() : void
      {
         _mc. pause();
         _snd. pause();
      }

      final public function resume() : void
      {
         _mc. resume();
         _snd.resume();
      }
   }
}
