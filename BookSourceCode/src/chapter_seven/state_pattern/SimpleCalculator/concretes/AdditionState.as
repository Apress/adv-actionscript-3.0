package chapter_seven.state_pattern.SimpleCalculator.concretes
{
   import chapter_seven.state_pattern.SimpleCalculator.abstractions.AbstractStateObject;

	/**
	 * @author Ben Smith
	 */
	public class AdditionState extends AbstractStateObject
	{
		public function AdditionState()
		{
		}
		override public function calculate( values : Vector.<Number> ) : void
		{
			var sum:Number=0
			for each( var number:Number in values){
					sum+=number
			}
			trace(sum)
		}
	}
}
