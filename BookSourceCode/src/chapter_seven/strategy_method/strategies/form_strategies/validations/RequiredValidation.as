package chapter_seven.strategy_method.strategies.form_strategies.validations
{
   import chapter_seven.strategy_method.form.ContactForm;
   import chapter_seven.strategy_method.form.FormPacket;
   import chapter_seven.strategy_method.form.abstractions.FormObject;
   import chapter_seven.strategy_method.strategies.form_strategies.abstractions.AFormValidationBehavior;

   /**
    * @author Ben Smith
    */
   public class RequiredValidation extends AFormValidationBehavior
   {
      private static const ERROR : String = "All required fields must be filled in";

      public function RequiredValidation( form : ContactForm = null )
      {
         super( form );
      }

      override public function validate() : void
      {
         for each ( var fObj:FormObject in _formContactForm.formCollections )
         {
            var fp : FormPacket = fObj.packet;
            if ( fp.isRequired )
            {
               var cleanser : RegExp = /\s{1,}/gi;
               var clone : String = fp.data.replace( cleanser , '' );
               if ( clone == '' || clone == fp.prompt ) 
               {
                  fp.hasErrors = true;
                  fp.addError( ERROR );
                  trace( 'error' );
               }
            }
         }
      }
   }
}
