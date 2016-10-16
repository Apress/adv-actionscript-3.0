package chapter_seven.iterator_pattern.iterators.abstractions
{
   import chapter_seven.iterator_pattern.interfaces.IIterator;
   import flash.errors.IllegalOperationError;


	/**
	 * @author Ben Smith
	 */
	public class AbstractIterator extends Object implements IIterator
	{
		protected var _cursor : int = 0;
		final public function next() : void
		{
			doNext()
		}

		final public function hasNext() : Boolean
		{
			return doHasNext()
		}

		final public function reset() : void
		{
			doReset()
		}

		final public function currentElement() : *
		{
			return doCurrentElement()
		}

		protected function doNext() : void
		{
			throw new IllegalOperationError( 'doNext must be overriden ' )
		}

		protected function doHasNext() : Boolean
		{
			throw new IllegalOperationError( 'doHasNext must be overriden ' )
			return false;
		}

		protected function doReset() : void
		{
			throw new IllegalOperationError( 'doReset must be overriden ' )
		}

		protected function doCurrentElement() : *
		{
			throw new IllegalOperationError( 'doCurrentElement must be overriden ' )
			return null
		}
	}
	
}
