package chapter_six.singleton.components.concretes
{
   import chapter_six.singleton.components.abstractions.Facebook;
   import flash.events.IEventDispatcher;


   /**
    * @author Ben Smith
    */
   public class FacebookExtended extends Facebook
   {
      public function FacebookExtended( target : IEventDispatcher = null )
      {
         super( target );
      }
   }
}
