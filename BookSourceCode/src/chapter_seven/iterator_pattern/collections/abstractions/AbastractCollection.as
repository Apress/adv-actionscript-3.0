package chapter_seven.iterator_pattern.collections.abstractions
{
   import chapter_seven.iterator_pattern.interfaces.IIterate;
   import chapter_seven.iterator_pattern.interfaces.IIterator;
   import flash.errors.IllegalOperationError;


	/**
	 * @author Ben Smith
	 */
	public class AbastractCollection extends Object implements IIterate
	{
		protected var _iterator : IIterator

		public function AbastractCollection()
		{
		}

		final	public function count() : int
		{
			return doCount()
		}

		final	public function append( element : * ) : Boolean
		{
			return	doAppend( element );
		}

		final	public function remove( element : * ) : Boolean
		{
			return	doRemove( element );
		}

		final	public function createIterator( string : String = null ) : IIterator
		{
			return doCreateIterator( string )
		}

		protected function doCount() : int
		{
			throw new IllegalOperationError( ' doCount must be overriden' )
			return 0;
		}

		protected function doAppend( element : * ) : Boolean
		{
			throw new IllegalOperationError( ' doAppend must be overriden' )
			return false;
		}

		protected function doRemove( element : * ) : Boolean
		{
			throw new IllegalOperationError( ' doRemove must be overriden' )
			return false;
		}

		protected function doCreateIterator( string : String ) : IIterator
		{
			return null;
		}
	}
}
