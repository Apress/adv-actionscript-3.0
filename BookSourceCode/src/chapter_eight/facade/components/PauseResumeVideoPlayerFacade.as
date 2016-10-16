package chapter_eight.facade.components
{
	import chapter_eight.facade.components.abstraction.AbstractVideoPlayerFacade;
	import flash.media.Video;
	import flash.net.NetConnection;
	import flash.net.NetStream;

	/**
	 * @author Ben Smith
	 */
	public class PauseResumeVideoPlayerFacade extends AbstractVideoPlayerFacade
	{
		public function PauseResumeVideoPlayerFacade()
		{
			super();
		}

		public function pause() : void
		{
			_ns.pause();
		}

		public function resume() : void
		{
			_ns.resume();
		}

		override protected function doGetNetConnection() : NetConnection
		{
			return new NetConnection()
		}

		override protected function doGetNetStream() : NetStream
		{
			return new NSExtension( _nc )
		}

		override protected function doGetVideo() : Video
		{
			var vid : Video = new Video()
			vid.width = 640
			vid.height = 320
			return vid
		}
	}
}
