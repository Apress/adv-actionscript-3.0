package chapter_seven.state_pattern.SimpleCalculator.concretes
{
   import chapter_seven.state_pattern.SimpleCalculator.abstractions.AbstractStateObject;

	/**
	 * @author Ben Smith
	 */
	public class CalculatorContextStateLogic extends CalculatorContext
	{
		override protected function doCreateAbstractStateObject( EnumType : int ) : AbstractStateObject
		{
			var product : AbstractStateObject
			switch(EnumType)
			{
				case 0:
					product = new AdditionState()
					break;
				case 1:
					product = new SubtractionState()
					break;
				case 2:
					product = new MultiplicationState()
					break;
				case 3:
					product = new DivisionState()
					break;
			}
			return product
		}
	}
}
