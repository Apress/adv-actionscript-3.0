package chapter_eleven.mvc.controller
{
   import chapter_eleven.mvc.model.AbstractModel;
   import chapter_eleven.mvc.view.AbstractFileSystemView;

   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Timer;

	/**
	 * @author Ben Smith
	 */
	public class DragableController extends AbstractController
	{
		protected var _isPressed : Boolean
		protected var _timer : Timer
		protected var _clone : Sprite
		protected var _posX : int
		protected var _posY : int

		public function DragableController( mdl : AbstractModel , view : AbstractFileSystemView )
		{
			super( mdl , view );
			_view.mouseEnabled = false;
			_view.mouseChildren = true;
			_view.addEventListener( MouseEvent.MOUSE_DOWN , onMouseDown );
		}

		private function onMouseDown( event : MouseEvent ) : void
		{
			_view.addEventListener( MouseEvent.MOUSE_UP , onMouseUp )
			event.target.startDrag( false , null );
		}

		private function onMouseUp( event : MouseEvent ) : void
		{
			_view.removeEventListener( MouseEvent.MOUSE_UP , onMouseUp );
			event.target.stopDrag();
		}
	}
}
