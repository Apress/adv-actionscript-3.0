package chapter_six.singleton.components.factories
{
   import chapter_six.singleton.components.abstractions.Facebook;
   import chapter_six.singleton.components.concretes.FacebookExtended;
   import chapter_six.singleton.components.factories.abstractions.FaceBookFactory;

   /**
    * @author Ben Smith
    */
   public class FaceBookExtendedFactory extends FaceBookFactory
   {
      public function FaceBookExtendedFactory()
      {
      }

      override public function makeFaceBook() : Facebook
      {
         return new FacebookExtended();
      }
   }
}
