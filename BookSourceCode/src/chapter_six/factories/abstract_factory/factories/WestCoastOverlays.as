package chapter_six.factories.abstract_factory.factories
{
   import chapter_six.factories.abstract_factory.products.form.WestCoastFormOverlay;
   import chapter_six.factories.abstract_factory.products.twitter.WestCoastTwitterOverlay;
   import chapter_six.factories.abstract_factory.products.audio.WestCoastAudioOverlay;
   import chapter_six.factories.abstract_factory.factories.abstractions.AbstractFactoryCoastOverlaySets;
   import chapter_six.factories.abstract_factory.products.audio.abstraction.AudioOverlay;
   import chapter_six.factories.abstract_factory.products.form.abstraction.FormOverlay;
   import chapter_six.factories.abstract_factory.products.photo.WestCoastPhotoOverlay;
   import chapter_six.factories.abstract_factory.products.photo.abstraction.PhotoOverlay;
   import chapter_six.factories.abstract_factory.products.twitter.abstraction.TwitterOverlay;
   import chapter_six.factories.abstract_factory.products.video.WestCoastVideoOverlay;
   import chapter_six.factories.abstract_factory.products.video.abstraction.VideoOverlay;

   /**
    * @author Ben Smith
    */
   public class WestCoastOverlays extends AbstractFactoryCoastOverlaySets
   {
      override protected function makePhotoOverlay() : PhotoOverlay
      {
         return new WestCoastPhotoOverlay()
      };

      protected override  function makeVideoOverlay() : VideoOverlay
      {
         return new WestCoastVideoOverlay()
      };

      protected override  function makeAudioOverlay() : AudioOverlay
      {
         return new WestCoastAudioOverlay()
      };

      protected override  function makeTwitterOverlay() : TwitterOverlay
      {
         return new WestCoastTwitterOverlay()
      };

      protected override  function makeFormOverlay() : FormOverlay
      {
         return new WestCoastFormOverlay()
      };
   }
}
