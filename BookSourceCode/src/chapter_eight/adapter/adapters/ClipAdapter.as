package chapter_eight.adapter.adapters
{
	import chapter_eight.adapter.IPause;
	import flash.display.MovieClip;

	/**
	 * @author Ben Smith
	 */
	public class ClipAdapter implements IPause
	{
		private var _mc : MovieClip

		public function ClipAdapter( mc : MovieClip )
		{
			_mc = mc
		}

		public function pause() : void
		{
			_mc.stop()
		}

		public function resume() : void
		{
			_mc.play()
		}
	}
}
