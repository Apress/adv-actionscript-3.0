package chapter_seven.strategy_method.strategies.form_strategies.validations
{
   import chapter_seven.strategy_method.form.ContactForm;
   import chapter_seven.strategy_method.strategies.form_strategies.abstractions.AProfanityFilter;

	/**
	 * @author Ben Smith
	 */
	public class DefaultProfanityFilter extends AProfanityFilter
	{
		public function DefaultProfanityFilter( form : ContactForm = null )
      {
         super( form );
      }

      override protected function doProfanity() : void
      {
         // at the request of the publishing company I can only list that profanities go in the area below;
         profanityAr = Vector.<String>( [ 'Listing of profanities goes here' ] );
         
      }
   }
}
