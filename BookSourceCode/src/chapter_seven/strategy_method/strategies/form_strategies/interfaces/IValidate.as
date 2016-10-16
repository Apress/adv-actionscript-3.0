package chapter_seven.strategy_method.strategies.form_strategies.interfaces
{
   import chapter_seven.strategy_method.strategies.form_strategies.abstractions.AFormValidationBehavior;

	/**
	 * @author Ben Smith
	 */
	public interface IValidate
	{
		function set analysis( validateAlgorithm : AFormValidationBehavior ) : void

		function validate() : void
	}
}
