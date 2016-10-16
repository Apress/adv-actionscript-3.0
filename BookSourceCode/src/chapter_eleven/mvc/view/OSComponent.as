package chapter_eleven.mvc.view
{
   import chapter_eleven.mvc.elements.DisplayField;
   import chapter_eleven.mvc.model.ConfigModel;

   import flash.display.Bitmap;
   import flash.events.MouseEvent;

	/**
	 * @author Ben Smith
	 */
	public class OSComponent extends AbstractFileSystemView
	{
		protected var _fileName : String;
		protected var _field : DisplayField;
		protected var _representation : Bitmap;
		protected var _parentComposite : OSComponent
		static protected const PADDING : int = 4

		public function OSComponent( mdl : ConfigModel )
		{
			super( mdl );
		}

		protected function dispatch( event : MouseEvent ) : void
		{
			event.stopPropagation()
			dispatchEvent( event )
		}

		public function open() : void
		{
		}

		public function close() : void
		{
		}

		public function get field() : DisplayField
		{
			return _field;
		}
	}
}


