package chapter_seven.template_method.components
{
   import flash.events.Event;

   import chapter_seven.template_method.abstractions.PageContent;

   /**
    * @author Ben Smith
    */
   public class HomePage extends PageContent
   {
      public function HomePage( $w : int = 960 , $h : int = 492 )
      {
         super( $w , $h );
      }

      override protected function doBuildComponents() : void
      {
         trace( this + '  is implementing the doBuildComponents method' )
      }

      override protected function doFetchCSS() : void
      {
         trace( this + '  is implementing the doFetchCSS method' )
          _styler.loadCSS( '../css/Generic.css' );
      }

      override protected function doGetData() : void
      {
         trace( this + '  is implementing the doGetData method' )
      }

      override protected function onDataServed( event : Event ) : void
      {
         trace( this + '  is implementing the onDataServed method' )
      }

      override protected function doDestroy() : void
      {
         super.doDestroy();
         trace( this + '  is implementing the doDestroy method' )
      }
   }
}
