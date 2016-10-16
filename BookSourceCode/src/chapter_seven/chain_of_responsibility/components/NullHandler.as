package chapter_seven.chain_of_responsibility.components
{
   import chapter_seven.chain_of_responsibility.components.interfaces.IEventHandler;

   import flash.events.Event;

   /**
    * @author Ben Smith
    */
   public class NullHandler extends Object implements IEventHandler
   {
      public function NullHandler()
      {
      }

      final public function addHandler( handler : IEventHandler ) : void
      {
         return;
      }

      final public function forwardEvent( event : Event ) : void
      {
         trace( 'end of the chain' )
         return;
      }
   }
}
