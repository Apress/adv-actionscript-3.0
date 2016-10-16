package chapter_seven.state_pattern.SimpleCalculator.abstractions
{
   import flash.errors.IllegalOperationError;

	/**
	 * @author Ben Smith
	 */
	public class AbstractCalculatorContext
	{
		protected var _state : AbstractStateObject

		public function AbstractCalculatorContext()
		{
		}

		final public function addition() : void
		{
			doAddition()
		}

		final 	public function subtraction() : void
		{
			dosubtraction()
		}

		final 	public function division() : void
		{
			doDivision()
		}

		final 	public function multiplication() : void
		{
			doMultiplication()
		}

		final 	public function setDilineatedValues( values : Vector.<Number> ) : void
		{
			doSetDilineatedValues( values )
		}

		protected function doAddition() : void
		{
			throw new IllegalOperationError( 'doAddition must be overridden' )
		}

		protected function dosubtraction() : void
		{
			throw new IllegalOperationError( 'dosubtraction must be overridden' )
		}

		protected function doDivision() : void
		{
			throw new IllegalOperationError( 'doDivision must be overridden' )
		}

		protected function doMultiplication() : void
		{
			throw new IllegalOperationError( 'doMultiplication must be overridden' )
		}

		protected function doSetDilineatedValues( values : Vector.<Number> ) : void
		{
			throw new IllegalOperationError( 'doSetDilineatedValues must be overridden' )
		}
	}
}
