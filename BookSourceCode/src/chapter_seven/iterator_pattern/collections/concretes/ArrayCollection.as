package chapter_seven.iterator_pattern.collections.concretes
{
   import chapter_seven.iterator_pattern.collections.abstractions.AbstractArrayCollection;
   import chapter_seven.iterator_pattern.interfaces.IIterator;
   import chapter_seven.iterator_pattern.iterators.concretes.ArrayIterator;

	/**
	 * @author Ben Smith
	 */
	public class ArrayCollection extends AbstractArrayCollection
	{
		public function ArrayCollection()
		{
			super();
		}

		override protected function doCreateIterator( string : String ) : IIterator
		{
			return new ArrayIterator( _collection );
		}
	}
}
