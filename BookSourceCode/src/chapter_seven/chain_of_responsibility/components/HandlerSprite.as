package chapter_seven.chain_of_responsibility.components
{
   import chapter_seven.chain_of_responsibility.components.abstraction.AbstractEventHandlerSprite;

   import flash.events.Event;

   /**
    * @author Ben Smith
    */
   public class HandlerSprite extends AbstractEventHandlerSprite
   {
      public function HandlerSprite()
      {
         super();
      }

      override protected function doHandleEvent( event : Event ) : void
      {
         trace( this.name + '  I received the doHanleEvent' )
      }
   }
}
