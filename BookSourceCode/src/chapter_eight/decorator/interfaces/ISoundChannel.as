package chapter_eight.decorator.interfaces
{
	import flash.media.SoundTransform;

	/**
	 * @author Ben Smith
	 */
	public interface ISoundChannel
	{
		function get leftPeak() : Number;

		function get position() : Number;

		function get rightPeak() : Number;

		function get soundTransform() : SoundTransform;

		function set soundTransform( sndTransform : SoundTransform ) : void;

		function stop() : void;
	}
}
