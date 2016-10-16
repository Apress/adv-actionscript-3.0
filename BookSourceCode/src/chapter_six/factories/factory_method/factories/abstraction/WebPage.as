package chapter_six.factories.factory_method.factories.abstraction
{
   import chapter_six.factories.factory_method.product.abstraction.PageContent;
   import flash.display.Sprite;

   /**
    * @author Ben Smith
    */
   public class WebPage extends Sprite
   {
      
      public var visualRepresentation:PageContent
      public function WebPage()
      {
         visualRepresentation= createVisualRepresentation()
         visualRepresentation.x=0;
         visualRepresentation.y=0;
         addChild(visualRepresentation)
      }
			
         /* factory method*/
      protected function createVisualRepresentation() : PageContent
      {
         return new PageContent();
      }
   }
}
