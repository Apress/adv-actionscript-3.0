package chapter_seven.command_pattern.products
{
   import chapter_seven.command_pattern.interfaces.IPause;

   import flash.media.Sound;
   import flash.media.SoundChannel;

   /**
    * @author Ben Smith
    */
   public class ExtendedSound extends Sound implements IPause
   {
      private var _sndPosition : Number;
      private var _sndChannel : SoundChannel;

      final public function pause() : void
      {
      	_sndPosition=_sndChannel.position;
         _sndChannel.stop();
      }

      final public function resume() : void
      {
         _sndChannel = play( _sndPosition , 0 );
      }
   }
}
