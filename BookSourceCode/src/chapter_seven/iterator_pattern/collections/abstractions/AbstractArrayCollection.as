package chapter_seven.iterator_pattern.collections.abstractions
{
   import chapter_seven.iterator_pattern.interfaces.IIterator;
   import flash.errors.IllegalOperationError;



	/**
	 * @author Ben Smith
	 */
	public class AbstractArrayCollection extends AbastractCollection
	{
		protected var _collection : Array

		public function AbstractArrayCollection()
		{
			super();
			_collection = new Array()
		}

		public function each( func : Function ) : void
		{
			var tmpIt : IIterator = doCreateIterator( null )
			var __count : int = 0
			do
			{
				
				func.call( this , tmpIt.currentElement() , __count , _collection )
				tmpIt.next()
				__count++
			}
			while (tmpIt.hasNext())
		}

		override protected function doCount() : int
		{
			return _collection.length
		}

		override protected function doAppend( element : * ) : Boolean
		{
			_collection[_collection.length] = element;

			return true
		}

		override protected function doRemove( element : * ) : Boolean
		{
			return false;
		}

		override protected function doCreateIterator( string : String ) : IIterator
		{
			throw new IllegalOperationError( ' doCreateIterator must be overriden' )
		}
	}
}	
