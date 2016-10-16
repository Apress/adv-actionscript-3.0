package chapter_seven.strategy_method.strategies.form_strategies.validations
{
   import chapter_seven.strategy_method.form.ContactForm;
   import chapter_seven.strategy_method.form.FormPacket;
   import chapter_seven.strategy_method.form.abstractions.FormObject;
   import chapter_seven.strategy_method.strategies.form_strategies.abstractions.AFormValidationBehavior;

   /**
    * @author Ben Smith
    */
   public class ConfirmedEmailValidation extends AFormValidationBehavior
   {
      static protected const ERROR : String = "Emails Must Match"

      public function ConfirmedEmailValidation( form : ContactForm = null )
      {
         super( form );
      }

      override public function validate() : void
      {
         var email : FormObject = this._formContactForm.email
         var emailData : FormPacket = email.packet
         var emailAddy : String = emailData.data

         var confirmEmail : FormObject = this._formContactForm.confirmEmail
         var confirmEmailData : FormPacket = confirmEmail.packet
         var confirmEmailAddy : String = confirmEmailData.data

         var match : Boolean = confirmEmailAddy == emailAddy
         if (!match)
         {
            trace( 'error' )
            emailData.hasErrors = true
            emailData.addError( ERROR )
         }
      }
   }
}
