package chapter_six.factories.abstract_factory
{
   import chapter_six.factories.abstract_factory.factories.EastCoastOverlays;
   import chapter_six.factories.abstract_factory.factories.WestCoastOverlays;
   import chapter_six.factories.abstract_factory.factories.abstractions.AbstractFactoryCoastOverlaySets;

   import flash.display.Sprite;

   /**
    * @author Ben Smith
    */
   public class DocumentClass extends Sprite
   {
      var factory : AbstractFactoryCoastOverlaySets

      public function DocumentClass()
      {
         // assume the user came in from the westCoast
         factory = new WestCoastOverlays()
         trace( factory.createPhotoViewerOverlay() );
         trace( factory.createPhotoViewerOverlay() );
         trace( factory.createTwitterOverlay() );

         // assume the user came in from the eastCoast
         factory = new EastCoastOverlays()
         trace( factory.createPhotoViewerOverlay() );
         trace( factory.createPhotoViewerOverlay() );
         trace( factory.createTwitterOverlay() );
      }
   }
}
