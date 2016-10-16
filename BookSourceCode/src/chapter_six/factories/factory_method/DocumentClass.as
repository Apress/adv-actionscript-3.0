package chapter_six.factories.factory_method
{
   import chapter_six.factories.factory_method.factories.HomePage;
   import chapter_six.factories.factory_method.factories.PortfolioPage;
   import chapter_six.factories.factory_method.factories.abstraction.WebPage;

   import flash.display.Sprite;

   /**
    * @author Ben Smith
    */
   public class DocumentClass extends Sprite
   {
      public function DocumentClass()
      {
         var somePage : WebPage = new PortfolioPage()
         addChild( somePage );

         removeChild( somePage )
         somePage = WebPage(addChild( new HomePage() ) );
      }
   }
}
