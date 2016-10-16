package chapter_eight.decorator.concretes
{
   import chapter_eight.decorator.abstraction.ASoundDecorator.AbstractSoundDecorator;
   import chapter_eight.decorator.interfaces.ISound;
   import chapter_eight.decorator.interfaces.ISoundChannel;

   import flash.events.Event;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;

   /**
    * @author Ben Smith
    */
   public class PauseableAudibleDecorator extends AbstractSoundDecorator implements ISoundChannel
   {
      protected var _position : Number = 0;

      public function PauseableAudibleDecorator( snd : ISound )
      {
         super( snd );
      }

      override  protected function doPlay( startTime : Number = 0 , loops : int = 0 , sndTransform : SoundTransform = null ) : SoundChannel
      {
         trace('sound play')
         stop()
         removeEvents()
         _channel = _snd.play( _position , loops , sndTransform )
         _channel.addEventListener( Event.SOUND_COMPLETE , resetPosition )
         return _channel
      }

      private function removeEvents() : void
      {
         if (_channel)
            _channel.removeEventListener( Event.SOUND_COMPLETE , resetPosition )
      }

      private function resetPosition( event : Event ) : void
      {
         _position = 0
      }

      public function get leftPeak() : Number
      {
         return 0;
      }

      public function get position() : Number
      {
         return 0;
      }

      public function get rightPeak() : Number
      {
         return 0;
      }

      public function get soundTransform() : SoundTransform
      {
         return null;
      }

      public function set soundTransform( sndTransform : SoundTransform ) : void
      {
      }

      public function stop() : void
      {
         trace('sound stop')
         if (_channel)
         {
            _position = _channel.position
            trace( _position )
            _channel.stop();
         }
      }
   }
}
