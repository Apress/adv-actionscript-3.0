package chapter_seven.the_observer_pattern.observers
{
	import chapter_seven.the_observer_pattern.abstractions.TwitterUser;
	import chapter_seven.the_observer_pattern.interfaces.IObserve;
	/**
	 * @author Ben Smith
	 */
	public class Observer extends TwitterUser implements IObserve
	{
		public function Observer( userName : String )
		{
			super( userName )
		}

		public function notify( str : String ) : void
		{
			trace( str )
		}
	}
}
