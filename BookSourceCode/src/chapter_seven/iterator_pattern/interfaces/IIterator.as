package chapter_seven.iterator_pattern.interfaces
{
	/**
	 * @author Ben Smith
	 */
	public interface IIterator
	{
		function next() : void;

		function hasNext() : Boolean

		function reset() : void
		
		function currentElement():*
	}
}
