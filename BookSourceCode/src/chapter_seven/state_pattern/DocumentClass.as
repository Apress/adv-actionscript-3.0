package chapter_seven.state_pattern
{
   import chapter_seven.state_pattern.SimpleCalculator.abstractions.AbstractCalculatorContext;
   import chapter_seven.state_pattern.SimpleCalculator.concretes.CalculatorContextStateLogic;
   import flash.display.Sprite;


	/**
	 * @author Ben Smith
	 */
	public class DocumentClass extends Sprite
	{
		public function DocumentClass()
		{
			var ti_92Plus : AbstractCalculatorContext = new CalculatorContextStateLogic()
			ti_92Plus.addition()
			ti_92Plus.setDilineatedValues( Vector.<Number>( [ 2 , 2 ] ) )
			ti_92Plus.setDilineatedValues( Vector.<Number>( [ 3 , 9 ] ) )
		}
	}
}
