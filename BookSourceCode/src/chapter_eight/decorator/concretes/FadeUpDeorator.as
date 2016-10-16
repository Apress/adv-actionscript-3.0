package chapter_eight.decorator.concretes
{
   import chapter_eight.decorator.abstraction.ASoundDecorator.AbstractSoundDecorator;
   import chapter_eight.decorator.interfaces.ISound;

   import com.greensock.TweenLite;
   import com.greensock.easing.Quad;

   import flash.events.Event;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;

	/**
	 * @author Ben Smith
	 */
	public class FadeUpDeorator extends AbstractSoundDecorator
	{
		public function FadeUpDeorator( snd : ISound )
		{
			super( snd );
		}

		override protected function doPlay( startTime : Number = 0 , loops : int = 1000 , sndTransform : SoundTransform = null ) : SoundChannel
		{
			removeEvents();
			
		var sndTransform : SoundTransform = new SoundTransform()
			sndTransform.volume = 0;
			
			_channel = _snd.play( startTime , loops,sndTransform);
			_channel.addEventListener( Event.SOUND_COMPLETE , repeat );
		

			TweenLite.to( sndTransform , 2 , { ease:Quad.easeIn , volume:1 , onUpdate:function()
			{
				trace( sndTransform.volume )
				_channel.soundTransform = sndTransform;
			} } );
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
