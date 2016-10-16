package chapter_seven.memento.components
{
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.sampler.getSize;
   import flash.ui.Keyboard;

	/**
	 * @author Ben Smith
	 */
	public class Caretaker extends Sprite
	{
		public var _stack : Vector.<Memento>
		private var _originator : Originator
		private var _backSpaceMonitor : Array = []

		public function Caretaker( orginator : Originator )
		{
			_originator = orginator
			_originator.addEventListener( KeyboardEvent.KEY_DOWN , onKeyDown )
			_originator.addEventListener( KeyboardEvent.KEY_UP , onKeyUP )
			_stack = new Vector.<Memento>();
		}
		
		
		public function reset():void{
			
		}
		
		public function stepBackward():void{
				
		}

		private function onKeyUP( event : KeyboardEvent ) : void
		{
			if (!event.ctrlKey)
			{
				if (event.keyCode == Keyboard.BACKSPACE)
				{
					_backSpaceMonitor[_backSpaceMonitor.length] = true
				}
				if (_backSpaceMonitor.length > 1)
				{
					_backSpaceMonitor.shift()
					return
				}
				else
				{
					addStack( _originator.makeMemento() )
				}
			}
		}
		
		

		private function onKeyDown( event : KeyboardEvent ) : void
		{
			
			if (event.ctrlKey && event.keyCode == 90)
			{
				_originator.setMemento( retrieveStack() )
			}
		}
		
		

		private function addStack( memento : Memento ) : void
		{
				trace( getSize( memento ) )
			_stack[_stack.length] = memento
		}

		private function retrieveStack() : Memento
		{
			return _stack.pop()
		}
	}
}
