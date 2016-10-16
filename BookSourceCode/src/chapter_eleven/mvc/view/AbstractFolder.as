package chapter_eleven.mvc.view
{
   import chapter_eleven.mvc.elements.DisplayField;
   import chapter_eleven.mvc.model.ConfigModel;

   import flash.display.Bitmap;
   import flash.errors.IllegalOperationError;

	/**
	 * @author Ben Smith
	 */
	public class AbstractFolder extends UIComposite
	{
		public function AbstractFolder( mdl : ConfigModel )
		{
			super( mdl );
			_representation = createIcon();
			addChild( _representation );
			_field = createDisplayField();
			_strategy = this.createDefaultController()
		}

		public function get fileName() : String
		{
			return _fileName;
		}

		public function set fileName( fileName : String ) : void
		{
			_fileName = fileName;
		}

		protected function createDisplayField() : DisplayField
		{
			throw new IllegalOperationError( 'createDisplayField must be overridden' )
			return null;
		}

		protected function createIcon() : Bitmap
		{
			return null;
		}

		
	}
}