package chapter_eleven.mvc.controller
{
   import chapter_eleven.mvc.model.AbstractModel;
   import chapter_eleven.mvc.model.ConfigModel;
   import chapter_eleven.mvc.view.AbstractView;

   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Timer;

	/**
	 * @author Ben Smith
	 */
	public class DragController extends AbstractController
	{
		protected var _isPressed : Boolean
		protected var _timer : Timer
		protected var _clone : Sprite
		protected var _posX : int;
		protected var _posY : int;

		public function DragController( mdl : AbstractModel = null , view : AbstractView = null )
		{
			super( mdl , view );
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

			var mdl : ConfigModel = ConfigModel( _mdl )
			mdl.xPos = _posX;
			mdl.yPos = _posX;
		}
	}
}
