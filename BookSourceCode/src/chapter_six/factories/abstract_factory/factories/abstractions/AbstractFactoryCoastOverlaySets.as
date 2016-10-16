package chapter_six.factories.abstract_factory.factories.abstractions
{
   import chapter_six.factories.abstract_factory.products.audio.abstraction.AudioOverlay;
   import chapter_six.factories.abstract_factory.products.form.abstraction.FormOverlay;
   import chapter_six.factories.abstract_factory.products.photo.abstraction.PhotoOverlay;
   import chapter_six.factories.abstract_factory.products.twitter.abstraction.TwitterOverlay;
   import chapter_six.factories.abstract_factory.products.video.abstraction.VideoOverlay;

   import flash.display.DisplayObject;
   import flash.display.Sprite;


   /**
    * @author Ben Smith
    */
   public class AbstractFactoryCoastOverlaySets extends Sprite
   {
      public function AbstractFactoryCoastOverlaySets()

      public function createPhotoViewerOverlay() : PhotoOverlay
      {
         var photoViewer : PhotoOverlay = makePhotoOverlay()
         return photoViewer;
      }

      public function createVideoOverlay() : VideoOverlay
      {
         var video : VideoOverlay = makeVideoOverlay()
         return video;
      }

      protected function makeVideoOverlay() : VideoOverlay
      {
         return null;
      }

      public function createAudioOverlay() : AudioOverlay
      {
         var audio : AudioOverlay = makeAudioOverlay()
         return audio;
      }

      protected function makeAudioOverlay() : AudioOverlay
      {
         return null;
      }

      public function createTwitterOverlay() : TwitterOverlay
      {
         var tweet : TwitterOverlay = makeTwitterOverlay()
         return tweet
      }

      public function createFormOverlay() : FormOverlay
      {
         var form : FormOverlay = makeFormOverlay()
         return form
      }

      private function commonDisplayObjectPrep( dO : DisplayObject ) : DisplayObject
      {
         var currentOverlay : DisplayObject = dO as DisplayObject;

       /*currentOverlay.addEventListener( OverlayEvent.CLOSE_OVERLAY , handleEvent );
         currentOverlay.addEventListener( OverlayEvent.INTRO_COMPLETE , handleEvent );
         currentOverlay.addEventListener( OverlayEvent.OUTRO_COMPLETE , handleEvent );
         currentOverlay.addEventListener( OverlayEvent.PLAY , handleEvent );
         currentOverlay.addEventListener( OverlayEvent.SUBMIT_TWEET , handleEvent );
         currentOverlay.addEventListener( OverlayEvent.TWITTER_SUBMIT_OVERLAY , handleEvent );
        */
        
         return currentOverlay
      }

      protected function makePhotoOverlay() : PhotoOverlay
      {
         return null
      }

      protected function makeTwitterOverlay() : TwitterOverlay
      {
         return null
      }

      protected function makeFormOverlay() : FormOverlay
      {
         return null;
      }
      
      
   }
}
