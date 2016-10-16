package chapter_seven.iterator_pattern.collections.concretes.xml
{
   import chapter_seven.iterator_pattern.collections.abstractions.AbastractCollection;
   import chapter_seven.iterator_pattern.interfaces.IIterator;

	/**
	 * @author Ben Smith
	 */
	public class XMLListCollection extends AbastractCollection
	{
		protected  var _collection : XMLList;
		protected var _cursor : int = 0

		public function XMLListCollection()
		{
			_collection = new XMLList()
		}

		override protected function doCount() : int
		{
			return _cursor
		}

		override protected function doAppend( element : * ) : Boolean
		{
			_collection[_cursor++] = element;

			return true
		}

		override protected function doRemove( element : * ) : Boolean
		{
			return false;
		}

		override protected function doCreateIterator( string : String ) : IIterator
		{
			return new XMLListItterator( _collection );
		}
	}
}