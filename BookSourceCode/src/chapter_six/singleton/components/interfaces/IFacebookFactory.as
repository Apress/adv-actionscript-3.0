package chapter_six.singleton.components.interfaces
{
   import chapter_six.singleton.components.abstractions.Facebook;
   /**
    * @author Ben Smith
    */
   public interface IFacebookFactory
   {
    function makeFaceBook() : Facebook;
   }
}
