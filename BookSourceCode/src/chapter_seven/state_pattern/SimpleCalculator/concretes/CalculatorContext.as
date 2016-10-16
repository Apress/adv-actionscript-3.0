package chapter_seven.state_pattern.SimpleCalculator.concretes
{
   import chapter_seven.state_pattern.SimpleCalculator.abstractions.AbstractCalculatorContext;
   import chapter_seven.state_pattern.SimpleCalculator.abstractions.AbstractStateObject;
   import flash.errors.IllegalOperationError;


	/**
	 * @author Ben Smith
	 */
	public class CalculatorContext extends AbstractCalculatorContext
	{
		protected static var Addition_Mode : int = 0;
		protected static var Subtraction_Mode : int = 1
		protected static var Multiplication_Mode : int = 2
		protected static var Division_Mode : int = 3

		public function CalculatorContext()
		{
		}

		override	protected function doAddition() : void
		{
			this._state = doCreateAbstractStateObject( Addition_Mode )
		}

		override	protected function dosubtraction() : void
		{
			this._state = doCreateAbstractStateObject( Subtraction_Mode )
		}

		override	protected function doDivision() : void
		{
			this._state = doCreateAbstractStateObject( Division_Mode )
		}

		override	protected function doMultiplication() : void
		{
			this._state = doCreateAbstractStateObject( Multiplication_Mode )
		}

		override protected function doSetDilineatedValues( values : Vector.<Number> ) : void
		{
			this._state.calculate( values )
		}

		protected function doCreateAbstractStateObject( EnumType : int ) : AbstractStateObject
		{
			throw new IllegalOperationError( 'doFactoryMethod must be overridden' )
			return null
		}
	}
}
