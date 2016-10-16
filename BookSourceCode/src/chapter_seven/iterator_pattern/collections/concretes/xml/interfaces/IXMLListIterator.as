package chapter_seven.iterator_pattern.collections.concretes.xml.interfaces
{
   import chapter_seven.iterator_pattern.interfaces.IIterate;
	/**
	 * @author Ben Smith
	 */
	public interface IXMLListIterator extends IIterate
	{
		function set aggregate( xmllist : XMLList ) : void
	}
}
