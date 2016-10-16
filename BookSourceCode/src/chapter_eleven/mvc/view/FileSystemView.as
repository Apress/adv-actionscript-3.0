package chapter_eleven.mvc.view
{
   import chapter_eleven.mvc.model.ConfigModel;
   import chapter_eleven.mvc.model.FileSystem;

   import flash.display.Bitmap;

	/**
	 * @author Ben Smith
	 */
	public class FileSystemView extends AbstractFileSystemView
	{
		private var _backGround : Bitmap

		public function FileSystemView( mdl : FileSystem )
      {
         super( ConfigModel( mdl ) );
		}
	}
}
