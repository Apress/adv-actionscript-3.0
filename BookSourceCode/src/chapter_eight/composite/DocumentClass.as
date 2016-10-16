package chapter_eight.composite
{
   import chapter_eight.adapter.IPause;
   import chapter_eight.adapter.adapters.AudioDecoratorIPauseAdapter;
   import chapter_eight.adapter.adapters.MChasStartStop;
   import chapter_eight.composite.components.PauseableComponent;
   import chapter_eight.composite.components.PauseableComposite;
   import chapter_eight.composite.components.PauseableLeaf;
   import chapter_eight.decorator.abstraction.ASoundDecorator.Audible;
   import chapter_eight.decorator.concretes.InfiniteLoopDecorator;
   import chapter_eight.decorator.concretes.PauseableAudibleDecorator;
   import chapter_eight.decorator.interfaces.ISound;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;


   /**
    * @author Ben Smith
    */
   [SWF( backgroundColor="#ffffff" )]
   public class DocumentClass extends Sprite
   {
      private	var _compositeOfIPauseObjects : PauseableComponent
      private var _sndComposite : PauseableComponent
      private var _mcComposite : PauseableComponent
      private var _isPlaying : Boolean = true

      public function DocumentClass()
      {
         var sound : ISound = new Audible( new URLRequest( "music.mp3" ) )
        		 sound = new InfiniteLoopDecorator( sound )
        		 sound = new PauseableAudibleDecorator( sound )
        		 sound.play()

         var mc : MovieClip = new SimpleMCAnimation()
         addChild( mc )

         var mcMinimialPauseAdaption : IPause = new MChasStartStop( mc );
         var soundMinimialPauseAdaption : IPause = new AudioDecoratorIPauseAdapter( PauseableAudibleDecorator( sound ) );

         var mcLeaf : PauseableLeaf = new PauseableLeaf( mcMinimialPauseAdaption );
         var sndLeaf : PauseableLeaf = new PauseableLeaf( soundMinimialPauseAdaption );

         var pauseableMCComposite : PauseableComposite = new PauseableComposite()
    		    pauseableMCComposite.addComponent( mcLeaf )

         var pauseableSndComposite : PauseableComposite = new PauseableComposite()
        		 pauseableSndComposite.addComponent( sndLeaf )

         var iPauseComposites : PauseableComposite = new PauseableComposite()
       		 iPauseComposites.addComponent( pauseableMCComposite )
       		 iPauseComposites.addComponent( pauseableSndComposite )


         _compositeOfIPauseObjects = iPauseComposites
         
         
        
         _sndComposite = pauseableSndComposite
         _mcComposite = pauseableMCComposite
       
         stage.addEventListener( MouseEvent.MOUSE_DOWN , onDown );
      }

      private function onDown( event : MouseEvent ) : void
      {
         
         /* this may appear to be exact as the adapter class , I assure you 
          * it's not.  replace the _compositeOfIPauseObjects 
          * with any of the other 2 possible composites to see how you can
          * target the pause/resume of particular composites.
          */
         if (_isPlaying)
         {
          //  _sndComposite.pause()
          //  _mcComposite.pause()
            _compositeOfIPauseObjects.pause()
         }
         else
         {
             //  _sndComposite.resume()
         	 //  _mcComposite.resume()
            _compositeOfIPauseObjects.resume()
         }
         _isPlaying = !_isPlaying
      }
   }
}
