package chapter_eight.composite.components.abstraction
{

	/**
	 * @author Ben Smith
	 */
	public class Component extends Object
	{
		private static var _counter : int = 0;
		protected var _parentComposite : Component;
		protected var _identity : int;

		public function Component()
		{
			_counter++;
		}

		public function get identity() : int
		{
			return _identity;
		}

		final public function get parentComposite() : Component
		{
			return _parentComposite;
		}

		final public function set parentComposite( parentComposite : Component ) : void
		{
			_parentComposite = parentComposite;
		}

	}
}
