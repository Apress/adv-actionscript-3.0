package chapter_eight.decorator.abstraction.ASoundDecorator
{
   import chapter_eight.decorator.interfaces.ISound;

   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.media.ID3Info;
   import flash.media.SoundChannel;
   import flash.media.SoundLoaderContext;
   import flash.media.SoundTransform;
   import flash.net.URLRequest;
   import flash.utils.ByteArray;

   /**
    * @author Ben Smith
    */
   public class AbstractSoundDecorator implements ISound
   {
      protected static var _channel : SoundChannel
      protected var _snd : ISound

      public function AbstractSoundDecorator( snd : ISound ) : void
      {
         _snd = snd
      }

      public function get bytesLoaded() : uint
      {
         return 0;
      }

      public function get bytesTotal() : int
      {
         return 0;
      }

      public function close() : void
      {
      }

      public function extract( target : ByteArray , length : Number , startPosition : Number = -1 ) : Number
      {
         return 0;
      }

      public function get id3() : ID3Info
      {
         return null;
      }

      public function get isBuffering() : Boolean
      {
         return false;
      }

      public function get length() : Number
      {
         return 0;
      }

      public function load( stream : URLRequest , context : SoundLoaderContext = null ) : void
      {
      }

      final public function play( startTime : Number = 0 , loops : int = 0 , sndTransform : SoundTransform = null ) : SoundChannel
      {
         _channel = doPlay( startTime , loops , sndTransform )
         return _channel
      }

      public function get url() : String
      {
         return "";
      }

      public function addEventListener( type : String , listener : Function , useCapture : Boolean = false , priority : int = 0 , useWeakReference : Boolean = false ) : void
      {
      }

      public function dispatchEvent( event : Event ) : Boolean
      {
         return false;
      }

      public function hasEventListener( type : String ) : Boolean
      {
         return false;
      }

      public function removeEventListener( type : String , listener : Function , useCapture : Boolean = false ) : void
      {
      }

      public function willTrigger( type : String ) : Boolean
      {
         return false;
      }

      protected function doPlay( startTime : Number = 0 , loops : int = 0 , sndTransform : SoundTransform = null ) : SoundChannel
      {
         throw new IllegalOperationError( 'doPlay must be overridden' )
         return null;
      }
   }
}
