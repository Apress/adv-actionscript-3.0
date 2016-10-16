package chapter_eleven.mvc.model
{
   import chapter_seven.the_observer_pattern.interfaces.IObserve;
   import chapter_seven.the_observer_pattern.interfaces.ISubject;
   import flash.errors.IllegalOperationError;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.utils.Dictionary;


	/**
	 * @author Ben Smith
	 */
	public class AbstractModel extends EventDispatcher implements ISubject
	{
		protected var dict : Dictionary

		public function AbstractModel( target : IEventDispatcher = null )
		{
			super( target );
			dict = new Dictionary( false )
		}

		public function addObserver( observer : IObserve , aspect : Function  ) : Boolean
		{
			dict[observer] = aspect
			return true
		}

		public function removeObserver( observer : IObserve ) : Boolean
		{
			dict[observer] = null
			delete dict[observer]

			return true;
		}

		protected function notify() : void
		{
			throw new IllegalOperationError( 'notify must be overridden' );
		}
	}
}
