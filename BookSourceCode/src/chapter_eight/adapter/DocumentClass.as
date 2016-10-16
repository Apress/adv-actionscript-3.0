package chapter_eight.adapter
{
   import chapter_eight.adapter.conductors.PauseConductor;
   import chapter_eight.adapter.adapters.AudioDecoratorIPauseAdapter;
   import chapter_eight.adapter.adapters.MChasStartStop;
   import chapter_eight.adapter.conductors.abstractions.APauseConductor;
   import chapter_eight.decorator.abstraction.ASoundDecorator.Audible;
   import chapter_eight.decorator.concretes.InfiniteLoopDecorator;
   import chapter_eight.decorator.concretes.PauseableAudibleDecorator;
   import chapter_eight.decorator.interfaces.ISound;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;


   public class DocumentClass extends Sprite
   {
      private var _isPlaying : Boolean = false
      var sound : ISound
      var pauseconductor : APauseConductor

      public function DocumentClass()
      {
         sound = new Audible( new URLRequest( "music.mp3" ) );
         sound = new InfiniteLoopDecorator( sound );
         sound = new PauseableAudibleDecorator( sound );
         sound.play()

         var mc : MovieClip = new SimpleMCAnimation();
         addChild( mc )

         var mcMinimialPauseAdaption : IPause = new MChasStartStop( mc )
         var soundMinimialPauseAdaption : IPause = new AudioDecoratorIPauseAdapter( PauseableAudibleDecorator( sound ) )

         pauseconductor = new PauseConductor()
         pauseconductor.addElement( soundMinimialPauseAdaption )
         pauseconductor.addElement( mcMinimialPauseAdaption )
         stage.addEventListener( MouseEvent.MOUSE_DOWN , onDown )
      }

      private function onDown( event : MouseEvent ) : void
      {
         _isPlaying = !_isPlaying;
         if (_isPlaying)
         {
            pauseconductor.pause()
         }
         else
         {
            pauseconductor.resume()
         }
      }
   }
}