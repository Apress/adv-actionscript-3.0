package chapter_six.singleton.components.abstractions
{
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;

   /**
    * @author Ben Smith
    */
   public class Facebook extends EventDispatcher
   {
      public function Facebook( target : IEventDispatcher = null )
      {
         super( target );
      }
      
      
   }
}
