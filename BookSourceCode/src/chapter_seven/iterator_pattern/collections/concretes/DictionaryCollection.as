package chapter_seven.iterator_pattern.collections.concretes
{
   import chapter_seven.iterator_pattern.interfaces.IIterate;
   import chapter_seven.iterator_pattern.interfaces.IIterator;
   import chapter_seven.iterator_pattern.iterators.concretes.ArrayIterator;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;


	/**
	 * @author Ben Smith
	 */
	public class DictionaryCollection implements IIterate
	{
		private var _dict : Dictionary

		public function DictionaryCollection()
		{
			_dict = new Dictionary()
		}

		public function count() : int
		{
			var i : int = 0
			var obj : Object
			var localDict : Object = _dict
			for (obj in localDict)
			{
				i++
			}
			return i
		}

		public function append( item : * ) : Boolean
		{
			_dict[item] = String( getTimer() ).toString();
			return true
		}

		public function remove( item : * ) : Boolean
		{
			delete _dict[item]
			return true
		}

		final public function createIterator( string : String = null ) : IIterator
		{
			return doCreateIterator( string )
		}

		protected function doCreateIterator( string : String ) : IIterator
		{
			var ar : Array = []
			for (var obj:* in _dict)
			{
				ar[ar.length] = obj
			}
			return new ArrayIterator( ar );
		}
	}
}
