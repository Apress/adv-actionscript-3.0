package chapter_eleven.mvc.view
{
   import chapter_eleven.mvc.controller.AbstractController;
   import chapter_eleven.mvc.controller.DragableController;
   import chapter_eleven.mvc.model.ConfigModel;

   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.Event;

	/**
	 * @author Ben Smith
	 */
	public class WindowView extends AbstractFileSystemView
	{
		private var _arCollection : Array = [];
		private var _bg : Bitmap

		public function WindowView( mdl : ConfigModel )
		{
			super( mdl );
			this.mouseEnabled = false
			this.mouseChildren = true
			addEventListener( Event.ADDED_TO_STAGE , onStagePresent )
			_strategy = createDefaultController()
		}

		private function onStagePresent( event : Event ) : void
		{
			removeEventListener( Event.ADDED_TO_STAGE , onStagePresent )
			_bg = makeBackground()
			addChildAt( _bg , 0 )
		}

		private function makeBackground() : Bitmap
		{
			return (new Bitmap( new BitmapData( this.stage.stageWidth , this.stage.stageHeight , false , 0xc9c9c9 ) ))
		}

		public function addComponent( cmpt : AbstractView ) : void
		{
			doAddComponent( cmpt )
		}

		override protected function createDefaultController() : AbstractController
		{
			return new DragableController( _mdl , this )
		}

		protected function doAddComponent( cmpt : DisplayObject ) : void
		{
			_arCollection[_arCollection.length] = cmpt
			addChild( cmpt );
		}
	}
}
