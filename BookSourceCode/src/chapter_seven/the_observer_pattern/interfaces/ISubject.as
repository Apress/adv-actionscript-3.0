package chapter_seven.the_observer_pattern.interfaces
{
	/**
	 * @author Ben Smith
	 */
	public interface ISubject
	{
		
		function addObserver( observer : IObserve , aspect : Function ) : Boolean
		function removeObserver( observer : IObserve ) : Boolean
	}
}
