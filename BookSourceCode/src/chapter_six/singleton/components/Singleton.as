package chapter_six.singleton.components
{
   import chapter_six.singleton.components.abstractions.Facebook;
   import chapter_six.singleton.components.interfaces.IFacebookFactory;

   /**
    * @author Ben Smith
    */
   public class Singleton extends Object
   {
      var _factory : IFacebookFactory;
      var _singletonProduct : Facebook;

      public function Singleton()
      {
      }

      public function getInstance() : Facebook
      {
         if (!_singletonProduct)
         {
            _singletonProduct = _factory.makeFaceBook();
         }
         
         return _singletonProduct;
      }

      public function setFactory( FBFactory : IFacebookFactory ) : void
      {
         _factory = FBFactory;
      }
   }
}
