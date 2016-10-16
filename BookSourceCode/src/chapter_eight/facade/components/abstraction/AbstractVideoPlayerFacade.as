package chapter_eight.facade.components.abstraction
{
	import flash.display.Sprite;
	import flash.errors.IllegalOperationError;
	import flash.media.Video;
	import flash.net.NetConnection;
	import flash.net.NetStream;

	/**
	 * @author Ben Smith
	 */
	public class AbstractVideoPlayerFacade extends Sprite
	{
		protected var _vid : Video
		protected var _ns : NetStream
		protected var _nc : NetConnection

		public function AbstractVideoPlayerFacade()
		{
			_nc = doGetNetConnection();
			_nc.connect( null )
			_ns = doGetNetStream();
			_vid = doGetVideo()
			_vid.attachNetStream( _ns )
			addChild( _vid )
		}

		public function playURL( url : String ) : void
		{
			_ns.play( url )
		}

		final public function close() : void
		{
			_nc.close()
			_vid.clear()
		}

		protected function doGetVideo() : Video
		{
			throw new IllegalOperationError( 'doGetVideo must be overridden' )
		}

		protected function doGetNetStream() : NetStream
		{
			throw new IllegalOperationError( 'doGetNetStream must be overridden' )
		}

		protected function doGetNetConnection() : NetConnection
		{
			throw new IllegalOperationError( 'doGetNetConnection must be overridden' )
		}
	}
}
