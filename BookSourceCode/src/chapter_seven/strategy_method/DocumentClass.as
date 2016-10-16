package chapter_seven.strategy_method
{
   import chapter_seven.strategy_method.form.ContactForm;
   import chapter_seven.strategy_method.strategies.form_strategies.interfaces.IValidate;
   import chapter_seven.strategy_method.strategies.form_strategies.validations.ConfirmedEmailValidation;
   import chapter_seven.strategy_method.strategies.form_strategies.validations.DefaultProfanityFilter;
   import chapter_seven.strategy_method.strategies.form_strategies.validations.EmailValidation;
   import chapter_seven.strategy_method.strategies.form_strategies.validations.RequiredValidation;
   import flash.display.Sprite;


   /**
    * @author Ben Smith
    */
   public class DocumentClass extends Sprite
   {
      public function DocumentClass()
      {
         var form : IValidate = new ContactForm()

         form.analysis = new RequiredValidation()
         form.validate()

         form.analysis = new EmailValidation()
         form.validate()

         form.analysis = new ConfirmedEmailValidation()
         form.validate()

         form.analysis = new DefaultProfanityFilter()
         form.validate()
      }
   }
}
