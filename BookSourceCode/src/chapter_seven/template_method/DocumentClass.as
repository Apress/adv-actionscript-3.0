package chapter_seven.template_method
{
   import chapter_seven.template_method.abstractions.PageContent;
   import chapter_seven.template_method.components.HomePage;
   import chapter_seven.template_method.components.PortfolioPage;

   import flash.display.Sprite;

   /**
    * @author Ben Smith
    */
   public class DocumentClass extends Sprite
   {
      public function DocumentClass()
      {
         
         /*both pages will exhibit the exact sequence of operation calls*/
         var currentPage : PageContent
         currentPage = new HomePage( 960 , 492 );
         currentPage.init();
         currentPage.intro();
         currentPage.outro();
         currentPage.destroy();

         currentPage = new PortfolioPage()

         currentPage.init();
         currentPage.intro();
         currentPage.outro();
         currentPage.destroy();
      }
   }
}
