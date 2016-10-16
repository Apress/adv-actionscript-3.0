package chapter_eight.composite.components
{
   import chapter_eight.composite.components.abstraction.Component;
   import flash.errors.IllegalOperationError;


	/**
	 * @author Ben Smith
	 */
	public class PauseableComponent extends Component
	{
		public function PauseableComponent()
		{
			super();
		}

		final public function pause() : void
		{
			doPause();
		}

		final public function resume() : void
		{
			doResume();
		}

		protected function doResume() : void
		{
			throw new IllegalOperationError( 'doResume must be overridden' )
		}

		protected function doPause() : void
		{
			throw new IllegalOperationError( 'doPause must be overridden' )
		}
	}
}
