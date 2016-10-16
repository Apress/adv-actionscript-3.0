package chapter_six.factories.factory_method.factories
{
   import chapter_six.factories.factory_method.factories.abstraction.WebPage;
   import chapter_six.factories.factory_method.product.abstraction.PageContent;

   /**
    * @author Ben Smith
    */
   public class PortfolioPage extends WebPage
   {
      public function PortfolioPage()
      {
         super();
      }

      override protected function createVisualRepresentation() : PageContent
      {
         return new PortfolioPageVisual();
      }
   }
}
