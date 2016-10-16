package chapter_seven.memento.components
{
	import chapter_seven.memento.components.namespaces.originatorOnly;

	/**
	 * @author Ben Smith
	 */
	public class Memento extends Object
	{
		private var _string : String
		private var _cursor : int

		public function Memento()
		{
		
		}

		originatorOnly function get string() : String
		{
			return _string;
		}

		originatorOnly function set string( str : String ) : void
		{
			_string = str;
		}

		originatorOnly function get cursor() : int
		{
			return _cursor;
		}

		originatorOnly function set cursor( cursor : int ) : void
		{
			_cursor = cursor;
		}
	}
}
