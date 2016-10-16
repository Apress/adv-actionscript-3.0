package chapter_six.singleton.components.factories.abstractions
{
   import chapter_six.singleton.components.abstractions.Facebook;
   import chapter_six.singleton.components.interfaces.IFacebookFactory;

   /**
    * @author Ben Smith
    */
   public class FaceBookFactory extends Object implements IFacebookFactory
   {

      public function makeFaceBook() : Facebook
      {
         return new Facebook();
      }
   }
}
