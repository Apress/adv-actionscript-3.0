package chapter_seven.template_method.abstractions
{
   import chapter_seven.template_method.components.utils.Styler;
   import chapter_seven.template_method.interfaces.IDestroy;
   import chapter_seven.the_observer_pattern.interfaces.IObserve;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.display.StageAlign;
   import flash.display.StageScaleMode;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.system.Security;


   /**
    * @author Ben Smith
    */
   public class PageContent extends Sprite implements IDestroy, IObserve
   {
      static public const INTRO_COMPLETE : String = "intro_complete";
      static public const OUTRO_COMPLETE : String = "outro_complete";
  
      protected var _wide : int;
      protected var _tall : int;
      protected var _styler : Styler;

      public function PageContent( $w : int = 960 , $h : int = 492 )
      {
         _wide = $w;
         _tall = $h;
         Security.allowDomain( '*' );
         addEventListener( Event.ADDED_TO_STAGE , onStage );
      }

      private function onStage( event : Event ) : void
      {
         removeEventListener( Event.ADDED_TO_STAGE , onStage );
         this.stage.align = StageAlign.TOP_LEFT;
         this.stage.scaleMode = StageScaleMode.NO_SCALE;
         /*doStage Found is also a template method
          * some subclasses may require stage listeners, and can only be added
          * once a stage has been deemed available.  Continue with the 
          * steps of our algorithm and keeping things sequntial, doStageFound
          * is called respectfully 
          */
         trace('doStageFound');
         doStageFound();
      }

      protected function doStageFound() : void
      {
      }

		/*init posesses an algorithm of templated methods.
		 *Each method performs a specific step within the algorithm.
		 *The methods are overriden via the subclasses to perform specifics among 
		 *the algorithms whilst maintaining approproiate order.
		 */
      
      final public function init() : void
      {
         _styler = new Styler();
         _styler.addEventListener( 'CSSLoaded' , onCSSStyle );
         trace('doBuildComponents');
         doBuildComponents();
         trace('doFetchCSS')
         doFetchCSS();
      }

      protected function doGetData() : void
      {
         /*call the server*/
         throw new IllegalOperationError( 'getData must be overridden' );
      }

      protected function doBuildComponents() : void
      {
         throw new IllegalOperationError( 'doBuildComponents must be overridden' );
      }

      public function intro() : void
      {
        dispatchEvent(new Event(INTRO_COMPLETE,false,false));
      }

      public function outro() : void
      {
         dispatchEvent( new Event( OUTRO_COMPLETE , false , false ) );
      }

      protected function doFetchCSS() : void
      {
         throw new IllegalOperationError( 'fetchCSS must be overridden' )
      }

      final protected function onCSSStyle( event : Event ) : void
      {
         _styler.removeEventListener( 'CSSLoaded' , onCSSStyle );
         trace('doGetData')
         doGetData();
      }
		
      /*destroy also triggers the appropriate deconstruction phase
       *via the template method of doDestroy.  As the base class adds particulars
       *which each subclass need not be aware, any attempt to override the destroy
       *method can create serious consequences to the retrival of allocated memory.
       *Thus, the method is marked final, removes objects localized to this object
       *and triggers the doDestroy method.
       */
      final public function destroy() : void
      {
         if (_styler)
         {
            _styler.removeEventListener( 'CSSLoaded' , onCSSStyle );
            _styler.destroy();
            _styler = null;
         }
         removeEventListener( Event.ADDED_TO_STAGE , onStage );
         trace('doDestroy')
         doDestroy();
      };

      protected function doDestroy() : void
      {
      
      }

      protected function onDataServed( event : Event ) : void
      {
         throw new IllegalOperationError( 'onDataServed must be overridden' );
      }

      protected function removeMe( displayObject : DisplayObject ) : void
      {
         if (displayObject)
         {
            if (this.contains( displayObject ))
            {
               removeChild( displayObject );
            }
         }
      }

      public function notify( str : String ) : void
      {
      }

      public function get wide() : int
      {
         return _wide;
      }

      public function get tall() : int
      {
         return _tall;
      }

      public override function get width() : Number
      {
         return _wide;
      }

      public override function get height() : Number
      {
         return _tall;
      }
   }
}
