package chapter_seven.iterator_pattern.interfaces
{
	/**
	 * @author Ben Smith
	 */
	public interface IIterate extends IAggregate
	{
		function createIterator( string : String = null ) : IIterator
	}
}
