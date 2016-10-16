package chapter_eight.adapter.adapters
{
   import chapter_eight.adapter.IPause;
   import chapter_eight.decorator.concretes.PauseableAudibleDecorator;
   import chapter_eight.decorator.interfaces.ISound;

   /**
    * @author Ben Smith
    */
   public class AudibleIPauseAdapter extends PauseableAudibleDecorator implements IPause
   {
      public function AudibleIPauseAdapter( snd : ISound )
      {
         super( snd );
      }

      public function pause() : void
      {
         trace('stop')
         this.stop()
      }

      public function resume() : void
      {
         
         trace('resume')
         this.play()
      }
   }
}
