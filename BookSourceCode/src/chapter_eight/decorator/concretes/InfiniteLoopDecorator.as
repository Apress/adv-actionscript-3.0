package chapter_eight.decorator.concretes
{
   import chapter_eight.decorator.abstraction.ASoundDecorator.AbstractSoundDecorator;
   import chapter_eight.decorator.interfaces.ISound;

   import flash.events.Event;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;

   /**
    * @author Ben Smith
    */
   public class InfiniteLoopDecorator extends AbstractSoundDecorator
   {
      public function InfiniteLoopDecorator( snd : ISound )
      {
         super( snd );
      }

      override protected function doPlay( startTime : Number = 0 , loops : int = 0 , sndTransform : SoundTransform = null ) : SoundChannel
      {
         removeEvents()
         _channel = _snd.play( startTime , loops )
         _channel.addEventListener( Event.SOUND_COMPLETE , repeat )
         return _channel
      }

      private function repeat( event : Event ) : void
      {
         _channel = play( 0 , 0 , null );
      }

      private function removeEvents() : void
      {
         if (_channel)
            _channel.removeEventListener( Event.SOUND_COMPLETE , repeat )
      }
   }
}
