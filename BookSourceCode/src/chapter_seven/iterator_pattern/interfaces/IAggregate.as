package chapter_seven.iterator_pattern.interfaces
{
	/**
	 * @author Ben Smith
	 */
	public interface IAggregate
	{
		function count() : int

		function append( item : * ) : Boolean;

		function remove( item :  * ) : Boolean;
	}
}
