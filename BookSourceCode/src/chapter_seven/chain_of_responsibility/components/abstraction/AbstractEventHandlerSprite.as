package chapter_seven.chain_of_responsibility.components.abstraction
{
   import chapter_seven.chain_of_responsibility.components.interfaces.IEventHandler;
	import flash.display.Sprite;
	import flash.errors.IllegalOperationError;
	import flash.events.Event;

	/**
	 * @author Ben Smith
	 */
	public class AbstractEventHandlerSprite extends Sprite implements IEventHandler
	{
		private var _eventHandler : IEventHandler;
		static protected const WIDTH : int = 58;
		static protected const HEIGHT : int = 58;

		public function AbstractEventHandlerSprite()
		{
			this.graphics.lineStyle(1,0xFFFFFF,1)
			this.graphics.beginFill( 0x000000 );
			this.graphics.drawRect( 0 , 0 , WIDTH , HEIGHT )
		}

		final public function addHandler( eventHandler : IEventHandler ) : void
		{
			doAddHandler( eventHandler );
		}

		final public function forwardEvent( event : Event ) : void
		{
			doHandleEvent( event );
			doForwardEvent( event );
		}

		protected function doAddHandler( eventHandler : IEventHandler ) : void
		{
			_eventHandler = eventHandler;
			trace( eventHandler + ' added' )
		}

		protected function doHandleEvent( event : Event ) : void
		{
			throw new IllegalOperationError( 'doHandleEvent must be overridden' )
		}

		protected function doForwardEvent( event : Event ) : void
		{
			_eventHandler.forwardEvent( event );
		}

		public function get wide() : Number
		{
			return WIDTH
		}

		public function get tall() : Number
		{
			return HEIGHT
		}
	}
}
