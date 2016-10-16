package chapter_eight.decorator.interfaces
{
   import flash.events.IEventDispatcher;
   import flash.media.ID3Info;
   import flash.media.SoundChannel;
   import flash.media.SoundLoaderContext;
   import flash.media.SoundTransform;
   import flash.net.URLRequest;
   import flash.utils.ByteArray;

   /**
    * @author Ben Smith
    */
   public interface ISound extends IEventDispatcher
   {
      function get bytesLoaded() : uint;

      function get bytesTotal() : int;

      function close() : void;

      function extract( target : ByteArray , length : Number , startPosition : Number = -1 ) : Number;

      function get id3() : ID3Info;

      function get isBuffering() : Boolean;

      function get length() : Number;

      function load( stream : URLRequest , context : SoundLoaderContext = null ) : void;

      function play( startTime : Number = 0 , loops : int = 0 , sndTransform : SoundTransform = null ) : SoundChannel;

      function get url() : String;
   }
}
