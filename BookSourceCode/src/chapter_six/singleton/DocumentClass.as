package chapter_six.singleton
{
   import chapter_six.singleton.components.Singleton;
   import chapter_six.singleton.components.factories.FaceBookExtendedFactory;
   import chapter_six.singleton.components.interfaces.IFacebookFactory;

   import flash.display.Sprite;

   /**
    * @author Ben Smith
    */
   public class DocumentClass extends Sprite
   {
      var factory : IFacebookFactory
      var _passableSingletonReference : Singleton

      public function DocumentClass()
      {
         factory = new FaceBookExtendedFactory()
         // FaceBookFactory();
         _passableSingletonReference = new Singleton();
         _passableSingletonReference.setFactory( factory )

         trace( _passableSingletonReference.getInstance() )
      }
   }
}
