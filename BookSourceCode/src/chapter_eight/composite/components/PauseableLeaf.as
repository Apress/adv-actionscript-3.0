package chapter_eight.composite.components
{
   import chapter_eight.adapter.IPause;

	/**
	 * @author Ben Smith
	 */
	public class PauseableLeaf extends PauseableComponent
	{
		protected var _iPause : IPause

		public function PauseableLeaf( _pauseable : IPause )
		{
			super();
			_iPause = _pauseable
		}

		override protected function doResume() : void
		{
         trace(_iPause)
			_iPause.resume();
		}

		override protected function doPause() : void
		{
          trace(_iPause)
			_iPause.pause();
		}
	}
}
