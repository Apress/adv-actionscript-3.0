package chapter_six.factories.factory_method.factories
{
   import chapter_six.factories.factory_method.product.abstraction.PageContent;
   import chapter_six.factories.factory_method.factories.abstraction.WebPage;

   /**
    * @author Ben Smith
    */
   public class HomePage extends WebPage
   {
      public function HomePage()
      {
         super();
      }

      override protected function createVisualRepresentation() : PageContent
      {
         return new HomePageVisual();
      }

   }
}
