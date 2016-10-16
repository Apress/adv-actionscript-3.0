package chapter_eleven.mvc.controller
{
   import chapter_eleven.mvc.elements.DisplayField;
   import chapter_eleven.mvc.model.AbstractModel;
   import chapter_eleven.mvc.model.ConfigModel;
   import chapter_eleven.mvc.view.OSComponent;

   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flash.utils.getTimer;

	/**
	 * @author Ben Smith
	 */
	public class ComponentRenamerController extends AbstractController
	{
		protected var _display : DisplayField
		protected var _timer : int
		protected const MAX_DURATION : int = 1000

		public function ComponentRenamerController( mdl : AbstractModel , view : OSComponent )
		{
			super( mdl , view );
			_timer = 0
			_display = view.field
			_display.addEventListener( MouseEvent.CLICK , onMouseClick )
			_display.addEventListener( FocusEvent.FOCUS_OUT , onOut )
			_display.addEventListener( KeyboardEvent.KEY_DOWN , onPossibleEnter )
		}

		private function onPossibleEnter( event : KeyboardEvent ) : void
		{
			switch(event.keyCode)
			{
				case Keyboard.ENTER:
					commit();
					break;
			}
		}

		protected function onOut( event : FocusEvent ) : void
		{
			commit()
		}

		protected function commit() : void
		{
			_display.display();
			ConfigModel( _mdl ).name = _display.text

			Mouse.cursor = MouseCursor.ARROW
		}

		private function onMouseClick( event : MouseEvent ) : void
		{
			var currentTimer : int = getTimer()
			if ((currentTimer - _timer) < MAX_DURATION)
			{
				_display.rename()
			}
			_timer = currentTimer
		}
	}
}
