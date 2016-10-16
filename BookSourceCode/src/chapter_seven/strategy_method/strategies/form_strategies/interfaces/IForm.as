package chapter_seven.strategy_method.strategies.form_strategies.interfaces
{
   import chapter_seven.strategy_method.form.abstractions.FormObject;

	/**
	 * @author Ben Smith
	 */
	public interface IForm
	{
		function get formCollections() : Vector.<FormObject>

		function get firstName() : FormObject

		function get lastName() : FormObject

		function get confirmEmail() : FormObject

		function get email() : FormObject

	}
}
