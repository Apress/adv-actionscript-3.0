package chapter_six.factories.abstract_factory.factories
{
   import chapter_six.factories.abstract_factory.factories.abstractions.AbstractFactoryCoastOverlaySets;
   import chapter_six.factories.abstract_factory.products.audio.EastCoastAudioOverlay;
   import chapter_six.factories.abstract_factory.products.audio.abstraction.AudioOverlay;
   import chapter_six.factories.abstract_factory.products.form.EastCoastFormOverlay;
   import chapter_six.factories.abstract_factory.products.form.abstraction.FormOverlay;
   import chapter_six.factories.abstract_factory.products.photo.EastCoastPhotoOverlay;
   import chapter_six.factories.abstract_factory.products.photo.abstraction.PhotoOverlay;
   import chapter_six.factories.abstract_factory.products.twitter.EastCoastTwitterOverlay;
   import chapter_six.factories.abstract_factory.products.twitter.abstraction.TwitterOverlay;
   import chapter_six.factories.abstract_factory.products.video.EastCoastVideoOverlay;
   import chapter_six.factories.abstract_factory.products.video.abstraction.VideoOverlay;

   /**
    * @author Ben Smith
    */
   public class EastCoastOverlays  extends AbstractFactoryCoastOverlaySets
   {
      override protected function makePhotoOverlay() : PhotoOverlay
      {
         return new EastCoastPhotoOverlay()
      };

      protected override  function makeVideoOverlay() : VideoOverlay
      {
         return new EastCoastVideoOverlay()
      };

      protected override  function makeAudioOverlay() : AudioOverlay
      {
         return new EastCoastAudioOverlay()
      };

      protected override  function makeTwitterOverlay() : TwitterOverlay
      {
         return new EastCoastTwitterOverlay()
      };

      protected override  function makeFormOverlay() : FormOverlay
      {
         return new EastCoastFormOverlay()
      };
   }
}
      
 
