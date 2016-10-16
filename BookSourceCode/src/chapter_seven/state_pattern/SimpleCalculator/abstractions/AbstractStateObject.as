package chapter_seven.state_pattern.SimpleCalculator.abstractions
{
	import flash.errors.IllegalOperationError;
	/**
	 * @author Ben Smith
	 */
	public class AbstractStateObject
	{
		public function calculate( values : Vector.<Number> ) : void
		{
			throw new IllegalOperationError( 'calculate must be overridden' )
		}
	}
}
