package chapter_seven.strategy_method.strategies.form_strategies.abstractions
{
   import chapter_seven.strategy_method.strategies.form_strategies.interfaces.IForm;
   import flash.errors.IllegalOperationError;


   /**
    * @author Ben Smith
    */
   public class AFormValidationBehavior extends Object
   {
      protected var _formContactForm : IForm

      public function AFormValidationBehavior( form : IForm = null )
      {
         if (form)
         {
            _formContactForm = form
         }
      }

      public function get formContactForm() : IForm
      {
         return _formContactForm;
      }

      public function set formContactForm( formContactForm : IForm ) : void
      {
         _formContactForm = formContactForm;
      }

      public function validate() : void
      {
         throw new IllegalOperationError( 'validate must be overridden' )
      }
   }
}
