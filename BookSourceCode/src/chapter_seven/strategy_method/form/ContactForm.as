package chapter_seven.strategy_method.form
{
   import chapter_seven.strategy_method.form.abstractions.FormObject;
   import chapter_seven.strategy_method.strategies.form_strategies.abstractions.AFormValidationBehavior;
   import chapter_seven.strategy_method.strategies.form_strategies.interfaces.IForm;
   import chapter_seven.strategy_method.strategies.form_strategies.interfaces.IValidate;
   import flash.display.Sprite;


   /**
    * @author Ben Smith
    */
   public class ContactForm extends Sprite implements IForm, IValidate
   {
      protected var _email : FormObject;
      protected var _confirmEmail : FormObject;
      protected var _firstName : FormObject;
      protected var _lastName : FormObject;
      protected var _formCollections : Vector.<FormObject>;
      protected var _analysis : AFormValidationBehavior;

      public function ContactForm()
      {
         _email = new FormObject();
         _confirmEmail = new FormObject();
         _firstName = new FormObject();
         _lastName = new FormObject();

         _formCollections = Vector.<FormObject>( [ _email , _confirmEmail , _firstName , _lastName ] );

         _email.packet.data = "iBen@Spilled-Milk.com";
         _confirmEmail.packet.data = "iBen@Spilled-Milk.com";
         _firstName.packet.data = "Ben";
         _lastName.packet.data = "Smith";
      }

      public function get email() : FormObject
      {
         return _email;
      }

      public function set email( email : FormObject ) : void
      {
         _email = email;
      }

      public function get firstName() : FormObject
      {
         return _firstName;
      }

      public function set firstName( firstName : FormObject ) : void
      {
         _firstName = firstName;
      }

      public function get lastName() : FormObject
      {
         return _lastName;
      }

      public function set lastName( lastName : FormObject ) : void
      {
         _lastName = lastName;
      }

      public function get analysis() : AFormValidationBehavior
      {
         return _analysis;
      }

      public function set analysis( analysis : AFormValidationBehavior ) : void
      {
         _analysis = analysis;
         _analysis.formContactForm = this;
         trace( _analysis );
      }

      public function validate() : void
      {
         _analysis.validate();
      }

      public function get formCollections() : Vector.<FormObject>
      {
         return _formCollections;
      }

      public function get confirmEmail() : FormObject
      {
         return _confirmEmail;
      }

      public function set confirmEmail( confirmEmail : FormObject ) : void
      {
         _confirmEmail = confirmEmail;
      }
   }
}
