package chapter_eleven.mvc.view
{
   import chapter_eleven.mvc.controller.AbstractController;
   import chapter_eleven.mvc.model.ConfigModel;

   import flash.errors.IllegalOperationError;

	/**
	 * @author Ben Smith
	 */
	public class AbstractFileSystemView extends AbstractView
	{
		
		protected var _strategy : AbstractController;

		public function AbstractFileSystemView( mdl : ConfigModel )
		{
			super( mdl );
		
		}

		protected function createDefaultController() : AbstractController
		{
			throw new IllegalOperationError( 'createDefaultController must be overridden' )
			return null
		}
	}
}
