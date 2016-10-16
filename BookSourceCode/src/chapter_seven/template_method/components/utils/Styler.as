package chapter_seven.template_method.components.utils
{
   import flash.events.ProgressEvent;

   import chapter_seven.template_method.interfaces.IDestroy;

   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.text.StyleSheet;

   /**
    * @author Ben Smith
    */
   public class Styler extends EventDispatcher implements IDestroy
   {
      [Event(name="CSSLoaded", type="flash.events.Event")]
      protected var _style : StyleSheet;
      protected var _ldr : URLLoader;

      public function Styler( target : IEventDispatcher = null )
      {
         super( target );
         _style = new StyleSheet();
      }

      public function loadCSS( path : String ) : void
      {
         _ldr = new URLLoader();

         _ldr.addEventListener( Event.COMPLETE , onCSSLoaded );
         _ldr.load( new URLRequest( path ) );
      }

      private function onCSSLoaded( event : Event ) : void
      {
         _ldr.removeEventListener( Event.COMPLETE , onCSSLoaded );
         _style.parseCSS( _ldr.data );
         _ldr.close();
         _ldr = null;
         dispatchEvent( new Event( 'CSSLoaded' , false , false ) );
      }

      public function get style() : StyleSheet
      {
         return _style;
      }

      public function destroy() : void
      {
         _ldr.removeEventListener( Event.COMPLETE , onCSSLoaded );
         _ldr.close();
         _ldr = null;
         _style = null;
      }
   }
}
